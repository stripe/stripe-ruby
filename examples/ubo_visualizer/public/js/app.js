/* ══════════════════════════════════════════════════════
   UBO Graph Visualizer — Main Application
   ══════════════════════════════════════════════════════ */

"use strict";

// ─── State ────────────────────────────────────────────────────────────────────
const state = {
  graphData:     null,
  simulation:    null,
  selectedNode:  null,
  filter:        "all",
  layout:        "force",
  transform:     d3.zoomIdentity,
  pathHighlight: new Set(),
};

// ─── Constants ────────────────────────────────────────────────────────────────
const EDGE_COLOR = {
  owns:          "#6366f1",
  controls:      "#f97316",
  director:      "#0ea5e9",
  associate:     "#94a3b8",
  contracts_with:"#22c55e",
};

const NODE_RADIUS = {
  individual:  16,
  corporation: 20,
  llc:         18,
  gmbh:        18,
  sarl:        18,
  fze:         17,
  pte_ltd:     17,
  trust:       18,
};

const TYPE_EMOJI = {
  individual:  "👤",
  corporation: "🏢",
  llc:         "🏢",
  gmbh:        "🏢",
  sarl:        "🏢",
  fze:         "🏢",
  pte_ltd:     "🏢",
  trust:       "🏛️",
};

// ─── Helpers ─────────────────────────────────────────────────────────────────
function nodeColor(d) {
  if (d.sanctioned)         return "#ef4444";
  if (d.pep)                return "#f97316";
  if (d.sanction_exposure)  return "#eab308";
  if (["critical","high"].includes(d.jurisdiction_risk)) return "#f97316";
  if (d.jurisdiction_risk === "medium") return "#eab308";
  return d.type === "individual" ? "#0ea5e9" : "#6366f1";
}

function nodeStroke(d) {
  if (d.sanctioned)        return "#ff6b6b";
  if (d.pep)               return "#fb923c";
  if (d.sanction_exposure) return "#fbbf24";
  if (["critical","high"].includes(d.jurisdiction_risk)) return "#fb923c";
  return d.type === "individual" ? "#38bdf8" : "#818cf8";
}

function riskScoreColor(score) {
  if (score >= 75) return "#ef4444";
  if (score >= 50) return "#f97316";
  if (score >= 25) return "#eab308";
  return "#22c55e";
}

function edgeColor(d) { return EDGE_COLOR[d.type] || "#94a3b8"; }
function edgeDash(d)  { return ["controls","associate","contracts_with"].includes(d.type) ? "5,4" : null; }

function nodeRadius(d) {
  const base = NODE_RADIUS[d.type] || 16;
  return d.sanctioned ? base + 3 : base;
}

async function fetchJSON(url) {
  const r = await fetch(url);
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  return r.json();
}

// ─── Main init ────────────────────────────────────────────────────────────────
async function init() {
  try {
    const data = await fetchJSON("/api/graph");
    state.graphData = data;
    buildGraph(data);
    renderStats(data);
    setupToolbar();
    setupSearch();
    setupZoom();
    setupPathFinder();
    setupJurisdictions();
  } catch (e) {
    console.error("Failed to load graph data:", e);
    document.getElementById("graph-loading").innerHTML =
      `<p style="color:#ef4444">Failed to load data: ${e.message}</p>`;
  }
}

// ─── Graph Build ──────────────────────────────────────────────────────────────
function buildGraph(data) {
  const svg    = d3.select("#graph-svg");
  const width  = svg.node().clientWidth  || window.innerWidth - 340;
  const height = svg.node().clientHeight || window.innerHeight - 100;

  svg.selectAll("*").remove();

  // Defs: arrow markers
  const defs = svg.append("defs");
  Object.entries(EDGE_COLOR).forEach(([type, color]) => {
    defs.append("marker")
      .attr("id",          `arrow-${type}`)
      .attr("viewBox",     "0 -5 10 10")
      .attr("refX",        28)
      .attr("refY",        0)
      .attr("markerWidth", 6)
      .attr("markerHeight",6)
      .attr("orient",      "auto")
      .append("path")
        .attr("d",    "M0,-5L10,0L0,5")
        .attr("fill", color)
        .attr("class", `arrow-${type}`);
  });

  // Root group (zoomed)
  const g = svg.append("g").attr("class", "zoom-root");

  // Build nodes map
  const nodeMap = Object.fromEntries(data.entities.map(e => [e.id, { ...e }]));

  // Build link objects referencing node objects
  const links = data.relationships.map(r => ({
    ...r,
    source: nodeMap[r.source],
    target: nodeMap[r.target],
  })).filter(l => l.source && l.target);

  const nodes = Object.values(nodeMap);

  // Simulation
  state.simulation = d3.forceSimulation(nodes)
    .force("link",    d3.forceLink(links).id(d => d.id).distance(d => {
      return d.type === "associate" ? 180 : 120;
    }).strength(0.5))
    .force("charge",  d3.forceManyBody().strength(-320))
    .force("center",  d3.forceCenter(width / 2, height / 2))
    .force("collide", d3.forceCollide().radius(d => nodeRadius(d) + 28))
    .alphaDecay(0.025);

  // ── Links ──
  const linkGroup = g.append("g").attr("class", "links");

  const linkEl = linkGroup.selectAll(".link")
    .data(links)
    .join("line")
    .attr("class",           d => `link link-${d.type}`)
    .attr("stroke",          edgeColor)
    .attr("stroke-dasharray",edgeDash)
    .attr("marker-end",      d => `url(#arrow-${d.type})`)
    .attr("data-id",         d => d.id)
    .attr("data-type",       d => d.type);

  // ── Link labels ──
  const linkLabelEl = g.append("g").attr("class", "link-labels")
    .selectAll(".link-label")
    .data(links.filter(l => l.ownership_pct))
    .join("text")
    .attr("class", "link-label")
    .text(d => d.ownership_pct ? `${d.ownership_pct}%` : "");

  // ── Nodes ──
  const nodeGroup = g.append("g").attr("class", "nodes");

  const nodeEl = nodeGroup.selectAll(".node")
    .data(nodes)
    .join("g")
    .attr("class",   d => `node node-${d.type}`)
    .attr("data-id", d => d.id)
    .call(
      d3.drag()
        .on("start", dragStart)
        .on("drag",  dragged)
        .on("end",   dragEnd)
    )
    .on("click",     nodeClicked)
    .on("mouseover", nodeHovered)
    .on("mouseout",  nodeUnhovered);

  // Sanctioned pulse ring
  nodeEl.filter(d => d.sanctioned)
    .append("circle")
    .attr("class", "pulse-ring")
    .attr("r",     d => nodeRadius(d) + 8)
    .attr("fill",  "none")
    .attr("stroke","rgba(239,68,68,0.35)")
    .attr("stroke-width", 2);

  // Main circle
  nodeEl.append("circle")
    .attr("r",    nodeRadius)
    .attr("fill", nodeColor)
    .attr("stroke",      nodeStroke)
    .attr("stroke-width", 2);

  // Type icon text
  nodeEl.append("text")
    .attr("text-anchor",      "middle")
    .attr("dominant-baseline","central")
    .attr("font-size",        d => (nodeRadius(d) * 0.8) + "px")
    .attr("pointer-events",   "none")
    .text(d => TYPE_EMOJI[d.type] || "❓");

  // Labels below node
  nodeEl.append("text")
    .attr("class", "node-label")
    .attr("y",     d => nodeRadius(d) + 6)
    .text(d => d.name.length > 22 ? d.name.slice(0, 20) + "…" : d.name);

  // ── Tick ──
  state.simulation.on("tick", () => {
    linkEl
      .attr("x1", d => d.source.x)
      .attr("y1", d => d.source.y)
      .attr("x2", d => d.target.x)
      .attr("y2", d => d.target.y);

    linkLabelEl
      .attr("x", d => (d.source.x + d.target.x) / 2)
      .attr("y", d => (d.source.y + d.target.y) / 2);

    nodeEl.attr("transform", d => `translate(${d.x},${d.y})`);
  });

  // Zoom behaviour
  const zoom = d3.zoom()
    .scaleExtent([0.1, 4])
    .on("zoom", ev => {
      state.transform = ev.transform;
      g.attr("transform", ev.transform);
    });

  svg.call(zoom);
  state._zoom = zoom;
  state._svg  = svg;
  state._g    = g;
  state._nodes = nodes;
  state._links  = links;
  state._nodeEl = nodeEl;
  state._linkEl = linkEl;

  // Hide loading overlay
  document.getElementById("graph-loading").style.display = "none";
}

// ─── Drag handlers ────────────────────────────────────────────────────────────
function dragStart(event, d) {
  if (!event.active) state.simulation.alphaTarget(0.3).restart();
  d.fx = d.x; d.fy = d.y;
}
function dragged(event, d)  { d.fx = event.x; d.fy = event.y; }
function dragEnd(event, d)  {
  if (!event.active) state.simulation.alphaTarget(0);
  d.fx = null; d.fy = null;
}

// ─── Node interaction ─────────────────────────────────────────────────────────
function nodeClicked(event, d) {
  event.stopPropagation();
  selectNode(d);
}

function nodeHovered(event, d) {
  showTooltip(event, d);
  d3.select(this).classed("hovered", true);
}
function nodeUnhovered() {
  hideTooltip();
  d3.select(this).classed("hovered", false);
}

function selectNode(d) {
  state.selectedNode = d;

  // Dim all, then highlight connected
  const connectedNodeIds = new Set([d.id]);
  const connectedLinkIds = new Set();

  state._links.forEach(l => {
    const sid = typeof l.source === "object" ? l.source.id : l.source;
    const tid = typeof l.target === "object" ? l.target.id : l.target;
    if (sid === d.id || tid === d.id) {
      connectedNodeIds.add(sid);
      connectedNodeIds.add(tid);
      connectedLinkIds.add(l.id);
    }
  });

  state._nodeEl
    .classed("dimmed",      n => !connectedNodeIds.has(n.id))
    .classed("selected",    n => n.id === d.id)
    .classed("highlighted", n => connectedNodeIds.has(n.id) && n.id !== d.id);

  state._linkEl
    .classed("dimmed",      l => !connectedLinkIds.has(l.id))
    .classed("highlighted", l => connectedLinkIds.has(l.id));

  fetchJSON(`/api/entity/${d.id}`).then(showEntityPanel);
}

// Click on background → clear selection
document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("graph-svg").addEventListener("click", () => {
    clearSelection();
  });
});

function clearSelection() {
  state.selectedNode = null;
  if (!state._nodeEl) return;
  state._nodeEl.classed("dimmed", false).classed("selected", false).classed("highlighted", false);
  state._linkEl.classed("dimmed", false).classed("highlighted", false);
  document.getElementById("entity-detail").classList.add("hidden");
  document.querySelector(".panel-placeholder").style.display = "flex";
}

// ─── Entity Detail Panel ──────────────────────────────────────────────────────
function showEntityPanel({ entity, relationships, connected }) {
  const panel = document.getElementById("entity-detail");
  const placeholder = document.querySelector(".panel-placeholder");
  placeholder.style.display = "none";
  panel.classList.remove("hidden");

  const jrLevel  = entity.jurisdiction_risk || "low";
  const jrReason = entity.jurisdiction_reason || "";

  const badges = [];
  if (entity.sanctioned)        badges.push(`<span class="risk-badge sanctioned">🚫 Sanctioned</span>`);
  if (entity.pep)                badges.push(`<span class="risk-badge pep">⚠️ PEP</span>`);
  if (entity.sanction_exposure)  badges.push(`<span class="risk-badge exposed">🔗 Sanction Exposure</span>`);
  if (["critical","high"].includes(jrLevel))
    badges.push(`<span class="risk-badge high-risk-j">🌐 ${jrLevel.toUpperCase()} RISK JURISDICTION</span>`);
  else if (jrLevel === "medium")
    badges.push(`<span class="risk-badge medium-risk-j">🌐 Medium-Risk Jurisdiction</span>`);

  const riskColor  = riskScoreColor(entity.risk_score || 0);
  const riskLabel  = entity.risk_score >= 75 ? "risk-critical"
                   : entity.risk_score >= 50 ? "risk-high"
                   : entity.risk_score >= 25 ? "risk-medium" : "risk-low";

  // Build relationship list HTML
  const relItems = relationships.map(r => {
    const otherId   = (r.source === entity.id) ? r.target : r.source;
    const direction = (r.source === entity.id) ? "→" : "←";
    const other     = connected.find(c => c.id === otherId);
    const otherName = other ? other.name : otherId;
    return `
      <div class="rel-item" data-node-id="${otherId}">
        <div class="rel-item-top">
          <span class="rel-type-tag ${r.type}">${r.type.replace("_"," ")}</span>
          <span class="rel-meta">${direction}</span>
          <span class="rel-entity-name">${otherName}</span>
        </div>
        <div class="rel-meta">
          ${r.label}
          ${!r.verified ? '<span class="rel-unverified"> · Unverified</span>' : ""}
        </div>
      </div>`;
  }).join("");

  const dob = entity.date_of_birth ? `<div class="detail-row"><span class="detail-key">Date of Birth</span><span class="detail-value">${entity.date_of_birth}</span></div>` : "";
  const reg = entity.registration_number ? `<div class="detail-row"><span class="detail-key">Reg. Number</span><span class="detail-value">${entity.registration_number}</span></div>` : "";
  const inc = entity.incorporation_date  ? `<div class="detail-row"><span class="detail-key">Incorporated</span><span class="detail-value">${entity.incorporation_date}</span></div>` : "";
  const ind = entity.industry            ? `<div class="detail-row"><span class="detail-key">Industry</span><span class="detail-value">${entity.industry}</span></div>` : "";
  const nat = entity.nationality         ? `<div class="detail-row"><span class="detail-key">Nationality</span><span class="detail-value">${entity.nationality}</span></div>` : "";

  panel.innerHTML = `
    <div class="entity-header">
      <div class="entity-icon ${entity.type}">${TYPE_EMOJI[entity.type] || "❓"}</div>
      <div>
        <div class="entity-name">${entity.name}</div>
        <div class="entity-type">${entity.type.replace(/_/g," ")}</div>
      </div>
    </div>

    ${badges.length ? `<div class="risk-badges">${badges.join("")}</div>` : ""}

    <div class="detail-section">
      <div class="detail-section-title">Identity</div>
      <div class="detail-row"><span class="detail-key">ID</span><span class="detail-value">${entity.id}</span></div>
      <div class="detail-row"><span class="detail-key">Jurisdiction</span><span class="detail-value">${entity.jurisdiction}</span></div>
      ${nat}${dob}${reg}${inc}${ind}
    </div>

    <div class="detail-section">
      <div class="detail-section-title">Risk Assessment</div>
      <div class="detail-row">
        <span class="detail-key">Risk Score</span>
        <div class="risk-score-bar">
          <div class="risk-score-track">
            <div class="risk-score-fill" style="width:${entity.risk_score || 0}%;background:${riskColor}"></div>
          </div>
          <span class="detail-value ${riskLabel}">${entity.risk_score || 0}/100</span>
        </div>
      </div>
      <div class="detail-row">
        <span class="detail-key">Jurisdiction Risk</span>
        <span class="detail-value ${jrLevel === "critical" ? "risk-critical" : jrLevel === "high" ? "risk-high" : jrLevel === "medium" ? "risk-medium" : "risk-low"}">${jrLevel.toUpperCase()}</span>
      </div>
      ${entity.jurisdiction_sanctions?.length ? `
      <div class="detail-row">
        <span class="detail-key">Listed On</span>
        <span class="detail-value">${entity.jurisdiction_sanctions.join(", ")}</span>
      </div>` : ""}
    </div>

    ${entity.notes ? `
    <div class="detail-section">
      <div class="detail-section-title">Intelligence Notes</div>
      <div class="notes-box ${entity.sanctioned ? "warning" : ""}">${entity.notes}</div>
    </div>` : ""}

    ${jrReason ? `
    <div class="detail-section">
      <div class="detail-section-title">Jurisdiction Risk Rationale</div>
      <div class="notes-box">${jrReason}</div>
    </div>` : ""}

    <div class="detail-section">
      <div class="detail-section-title">Relationships (${relationships.length})</div>
      <div class="rel-list">${relItems}</div>
    </div>
  `;

  // Relationship click → navigate to that node
  panel.querySelectorAll(".rel-item").forEach(el => {
    el.addEventListener("click", () => {
      const nid = el.dataset.nodeId;
      const node = state._nodes.find(n => n.id === nid);
      if (node) {
        selectNode(node);
        panToNode(node);
      }
    });
  });
}

function panToNode(d) {
  const svg    = state._svg;
  const width  = svg.node().clientWidth;
  const height = svg.node().clientHeight;
  const t = d3.zoomIdentity
    .translate(width / 2, height / 2)
    .scale(1.2)
    .translate(-d.x, -d.y);
  svg.transition().duration(500).call(state._zoom.transform, t);
}

// ─── Stats ────────────────────────────────────────────────────────────────────
function renderStats(data) {
  const e = data.entities;
  const sanctioned = e.filter(x => x.sanctioned).length;
  const peps       = e.filter(x => x.pep).length;
  const exposed    = e.filter(x => x.sanction_exposure).length;
  const highRisk   = e.filter(x => ["critical","high","medium"].includes(x.jurisdiction_risk)).length;

  document.getElementById("graph-stats").innerHTML = `
    <div class="stat-chip">Entities: <span>${e.length}</span></div>
    <div class="stat-chip">Links: <span>${data.relationships.length}</span></div>
    <div class="stat-chip" style="border-color:rgba(239,68,68,0.4)">Sanctioned: <span style="color:#ef4444">${sanctioned}</span></div>
    <div class="stat-chip" style="border-color:rgba(249,115,22,0.4)">PEPs: <span style="color:#f97316">${peps}</span></div>
    <div class="stat-chip" style="border-color:rgba(234,179,8,0.4)">Exposed: <span style="color:#eab308">${exposed}</span></div>
    <div class="stat-chip" style="border-color:rgba(249,115,22,0.3)">High-Risk Jurisdictions: <span style="color:#fb923c">${highRisk}</span></div>
  `;
}

// ─── Filter ───────────────────────────────────────────────────────────────────
function applyFilter(filter) {
  state.filter = filter;
  if (!state._nodeEl) return;

  let predicate;
  switch (filter) {
    case "sanctioned":          predicate = d => d.sanctioned; break;
    case "pep":                 predicate = d => d.pep; break;
    case "high-risk-jurisdiction": predicate = d => ["critical","high","medium"].includes(d.jurisdiction_risk); break;
    case "exposed":             predicate = d => d.sanction_exposure; break;
    default:                    predicate = () => true;
  }

  state._nodeEl.classed("dimmed", d => !predicate(d));

  const visibleIds = new Set(state._nodes.filter(predicate).map(n => n.id));
  state._linkEl.classed("dimmed", l => {
    const sid = typeof l.source === "object" ? l.source.id : l.source;
    const tid = typeof l.target === "object" ? l.target.id : l.target;
    return !visibleIds.has(sid) || !visibleIds.has(tid);
  });
}

function setupToolbar() {
  document.querySelectorAll(".filter-btn").forEach(btn => {
    btn.addEventListener("click", () => {
      document.querySelectorAll(".filter-btn").forEach(b => b.classList.remove("active"));
      btn.classList.add("active");
      applyFilter(btn.dataset.filter);
    });
  });

  document.querySelectorAll(".layout-btn").forEach(btn => {
    btn.addEventListener("click", () => {
      document.querySelectorAll(".layout-btn").forEach(b => b.classList.remove("active"));
      btn.classList.add("active");
      switchLayout(btn.dataset.layout);
    });
  });

  document.getElementById("btn-reset").addEventListener("click", () => {
    clearSelection();
    document.querySelectorAll(".filter-btn").forEach(b => b.classList.remove("active"));
    document.querySelector('.filter-btn[data-filter="all"]').classList.add("active");
    applyFilter("all");
    state._svg.transition().duration(400).call(state._zoom.transform, d3.zoomIdentity.translate(
      state._svg.node().clientWidth / 2,
      state._svg.node().clientHeight / 2
    ).scale(0.85).translate(-state._svg.node().clientWidth / 2, -state._svg.node().clientHeight / 2));
  });
}

function switchLayout(layout) {
  if (!state.simulation) return;
  if (layout === "radial") {
    const width  = state._svg.node().clientWidth;
    const height = state._svg.node().clientHeight;
    const cx = width / 2, cy = height / 2;
    const n = state._nodes.length;
    state._nodes.forEach((d, i) => {
      const angle = (i / n) * 2 * Math.PI;
      d.fx = cx + Math.cos(angle) * 260;
      d.fy = cy + Math.sin(angle) * 260;
    });
    state.simulation.alpha(0.5).restart();
  } else {
    state._nodes.forEach(d => { d.fx = null; d.fy = null; });
    state.simulation.alpha(0.5).restart();
  }
}

// ─── Zoom Controls ────────────────────────────────────────────────────────────
function setupZoom() {
  document.getElementById("zoom-in").addEventListener("click", () => {
    state._svg.transition().duration(250).call(state._zoom.scaleBy, 1.4);
  });
  document.getElementById("zoom-out").addEventListener("click", () => {
    state._svg.transition().duration(250).call(state._zoom.scaleBy, 0.7);
  });
  document.getElementById("zoom-fit").addEventListener("click", () => {
    const svg    = state._svg;
    const width  = svg.node().clientWidth;
    const height = svg.node().clientHeight;
    const t = d3.zoomIdentity
      .translate(width * 0.1, height * 0.1)
      .scale(0.82);
    svg.transition().duration(500).call(state._zoom.transform, t);
  });
}

// ─── Tooltip ─────────────────────────────────────────────────────────────────
function showTooltip(event, d) {
  const tip   = document.getElementById("tooltip");
  const flags = [];
  if (d.sanctioned)        flags.push(`<span class="tooltip-flag sanctioned">🚫 Sanctioned</span>`);
  if (d.pep)               flags.push(`<span class="tooltip-flag pep">⚠️ PEP</span>`);
  if (d.sanction_exposure) flags.push(`<span class="tooltip-flag exposed">🔗 Exposed</span>`);
  if (["critical","high"].includes(d.jurisdiction_risk)) flags.push(`<span class="tooltip-flag high-risk">🌐 ${d.jurisdiction_risk} risk jurisdiction</span>`);

  tip.innerHTML = `
    <div class="tooltip-name">${d.name}</div>
    <div class="tooltip-row"><span class="tooltip-key">Type:</span><span class="tooltip-val">${d.type}</span></div>
    <div class="tooltip-row"><span class="tooltip-key">Jurisdiction:</span><span class="tooltip-val">${d.jurisdiction}</span></div>
    <div class="tooltip-row"><span class="tooltip-key">Risk Score:</span><span class="tooltip-val" style="color:${riskScoreColor(d.risk_score || 0)}">${d.risk_score || 0}/100</span></div>
    ${flags.length ? `<div class="tooltip-flags">${flags.join("")}</div>` : ""}
  `;
  tip.classList.remove("hidden");
  moveTooltip(event);
}

function moveTooltip(event) {
  const tip  = document.getElementById("tooltip");
  const pad  = 14;
  const tw   = tip.offsetWidth;
  const th   = tip.offsetHeight;
  let   left = event.clientX + pad;
  let   top  = event.clientY + pad;
  if (left + tw > window.innerWidth)  left = event.clientX - tw - pad;
  if (top  + th > window.innerHeight) top  = event.clientY - th - pad;
  tip.style.left = left + "px";
  tip.style.top  = top  + "px";
}

function hideTooltip() {
  document.getElementById("tooltip").classList.add("hidden");
}

document.addEventListener("mousemove", e => {
  if (!document.getElementById("tooltip").classList.contains("hidden")) {
    moveTooltip(e);
  }
});

// ─── Global Search ────────────────────────────────────────────────────────────
function setupSearch() {
  const input   = document.getElementById("search-input");
  const results = document.getElementById("search-results");
  let   debounce;

  input.addEventListener("input", () => {
    clearTimeout(debounce);
    const q = input.value.trim();
    if (q.length < 2) { results.classList.add("hidden"); return; }
    debounce = setTimeout(async () => {
      const data = await fetchJSON(`/api/search?q=${encodeURIComponent(q)}`);
      renderSearchResults(data.results, results, entity => {
        input.value = "";
        results.classList.add("hidden");
        const node = state._nodes?.find(n => n.id === entity.id);
        if (node) { selectNode(node); panToNode(node); }
      });
    }, 200);
  });

  document.addEventListener("click", e => {
    if (!input.contains(e.target) && !results.contains(e.target)) {
      results.classList.add("hidden");
    }
  });
}

function renderSearchResults(entities, container, onSelect) {
  if (!entities.length) {
    container.innerHTML = `<div class="search-result-item" style="color:var(--text-muted)">No results found</div>`;
    container.classList.remove("hidden");
    return;
  }
  container.innerHTML = entities.map(e => `
    <div class="search-result-item" data-id="${e.id}">
      <span class="result-type-badge ${e.type}">${e.type}</span>
      <span class="result-name">${e.name}</span>
      <span class="result-jurisdiction">${e.jurisdiction}</span>
    </div>
  `).join("");
  container.classList.remove("hidden");
  container.querySelectorAll(".search-result-item").forEach((el, i) => {
    el.addEventListener("click", () => onSelect(entities[i]));
  });
}

// ─── Path Finder ──────────────────────────────────────────────────────────────
function setupPathFinder() {
  document.getElementById("btn-path-finder").addEventListener("click", () => {
    document.getElementById("modal-path").classList.remove("hidden");
  });
  document.getElementById("close-path-modal").addEventListener("click", () => {
    document.getElementById("modal-path").classList.add("hidden");
  });
  document.querySelector("#modal-path .modal-backdrop").addEventListener("click", () => {
    document.getElementById("modal-path").classList.add("hidden");
  });

  setupPathInput("path-from-input", "path-from-results", "path-from-id");
  setupPathInput("path-to-input",   "path-to-results",   "path-to-id");

  document.getElementById("btn-find-path").addEventListener("click", findPath);
}

function setupPathInput(inputId, resultsId, hiddenId) {
  const input   = document.getElementById(inputId);
  const results = document.getElementById(resultsId);
  const hidden  = document.getElementById(hiddenId);
  let   debounce;

  input.addEventListener("input", () => {
    clearTimeout(debounce);
    hidden.value = "";
    const q = input.value.trim();
    if (q.length < 2) { results.classList.add("hidden"); return; }
    debounce = setTimeout(async () => {
      const data = await fetchJSON(`/api/search?q=${encodeURIComponent(q)}`);
      renderSearchResults(data.results, results, e => {
        input.value  = e.name;
        hidden.value = e.id;
        results.classList.add("hidden");
      });
    }, 200);
  });

  document.addEventListener("click", ev => {
    if (!input.contains(ev.target) && !results.contains(ev.target)) {
      results.classList.add("hidden");
    }
  });
}

async function findPath() {
  const fromId  = document.getElementById("path-from-id").value;
  const toId    = document.getElementById("path-to-id").value;
  const resultEl= document.getElementById("path-result");

  if (!fromId || !toId) {
    resultEl.innerHTML = `<p class="path-no-result">Please select both entities using the search fields.</p>`;
    resultEl.classList.remove("hidden");
    return;
  }

  const data = await fetchJSON(`/api/path?from=${fromId}&to=${toId}`);

  if (!data.path.length) {
    resultEl.innerHTML = `<p class="path-no-result">⚡ No connection found between these entities.</p>`;
    resultEl.classList.remove("hidden");
    return;
  }

  const chainHtml = data.path.map((step, i) => {
    const node     = state._nodes?.find(n => n.id === step.node);
    const name     = node ? node.name : step.node;
    const sanc     = node?.sanctioned ? " sanctioned" : "";
    const relLabel = step.via_rel ? `<span class="path-connector">${step.via_rel.type}</span>` : "";
    return `${i > 0 ? relLabel : ""}<span class="path-node${sanc}" data-id="${step.node}">${name}</span>`;
  }).join("");

  resultEl.innerHTML = `
    <div class="detail-section-title" style="margin-bottom:8px">Path (${data.path.length} hops)</div>
    <div class="path-chain">${chainHtml}</div>
  `;
  resultEl.classList.remove("hidden");

  // Highlight path in graph
  highlightPath(data.path);

  // Navigate to first node
  resultEl.querySelectorAll(".path-node").forEach(el => {
    el.addEventListener("click", () => {
      const node = state._nodes?.find(n => n.id === el.dataset.id);
      if (node) { selectNode(node); panToNode(node); }
    });
  });
}

function highlightPath(path) {
  if (!state._nodeEl || !state._linkEl) return;
  const nodeIds = new Set(path.map(p => p.node));
  const relIds  = new Set(path.filter(p => p.via_rel).map(p => p.via_rel.id));

  state._nodeEl
    .classed("dimmed",      n => !nodeIds.has(n.id))
    .classed("selected",    n => nodeIds.has(n.id))
    .classed("highlighted", false);

  state._linkEl
    .classed("dimmed",      l => !relIds.has(l.id))
    .classed("highlighted", l => relIds.has(l.id))
    .classed("path-edge",   l => relIds.has(l.id));
}

// ─── Jurisdictions Modal ──────────────────────────────────────────────────────
function setupJurisdictions() {
  document.getElementById("btn-jurisdictions").addEventListener("click", async () => {
    const modal = document.getElementById("modal-jurisdictions");
    modal.classList.remove("hidden");
    if (!document.getElementById("jurisdictions-content").innerHTML.trim()) {
      const data = await fetchJSON("/api/jurisdictions");
      renderJurisdictions(data);
    }
  });
  document.getElementById("close-jurisdictions-modal").addEventListener("click", () => {
    document.getElementById("modal-jurisdictions").classList.add("hidden");
  });
  document.querySelector("#modal-jurisdictions .modal-backdrop").addEventListener("click", () => {
    document.getElementById("modal-jurisdictions").classList.add("hidden");
  });
}

function renderJurisdictions(data) {
  const rows = data.high_risk_jurisdictions.map(j => `
    <tr>
      <td class="jur-name">${j.name}</td>
      <td><span class="risk-pill ${j.risk_level}">${j.risk_level.toUpperCase()}</span></td>
      <td><div class="list-tags">${j.lists.map(l => `<span class="list-tag">${l}</span>`).join("")}</div></td>
      <td>${j.reason}</td>
    </tr>
  `).join("");

  document.getElementById("jurisdictions-content").innerHTML = `
    <p style="font-size:12px;color:var(--text-muted);margin-bottom:12px">
      Jurisdictions flagged based on FATF mutual evaluation reports, OFAC designations, EU/UK sanctions regimes, and AML risk typologies.
    </p>
    <table class="jurisdiction-table">
      <thead>
        <tr>
          <th>Jurisdiction</th>
          <th>Risk Level</th>
          <th>Lists</th>
          <th>Rationale</th>
        </tr>
      </thead>
      <tbody>${rows}</tbody>
    </table>
  `;
}

// ─── Boot ────────────────────────────────────────────────────────────────────
document.addEventListener("DOMContentLoaded", init);

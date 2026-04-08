/* ══════════════════════════════════════════════════════
   Compliance Audit Dashboard — JavaScript
   ══════════════════════════════════════════════════════ */
"use strict";

// ─── State ────────────────────────────────────────────────────────────────────
const state = {
  view:        "dashboard",
  dashData:    null,
  analytics:   null,
  auditPage:   1,
  charts:      {},
};

// ─── Helpers ─────────────────────────────────────────────────────────────────
async function fetchJSON(url) {
  const r = await fetch(url);
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  return r.json();
}

function fmt(dateStr) {
  if (!dateStr) return "—";
  return new Date(dateStr).toLocaleDateString("en-GB", { day: "2-digit", month: "short", year: "numeric" });
}

function fmtDatetime(isoStr) {
  if (!isoStr) return "—";
  const d = new Date(isoStr);
  return d.toLocaleDateString("en-GB", { day: "2-digit", month: "short", year: "numeric" }) +
         " " + d.toLocaleTimeString("en-GB", { hour: "2-digit", minute: "2-digit" });
}

function timeAgo(isoStr) {
  if (!isoStr) return "";
  const diff = Date.now() - new Date(isoStr).getTime();
  const m = Math.floor(diff / 60000);
  if (m < 60)  return `${m}m ago`;
  const h = Math.floor(m / 60);
  if (h < 24)  return `${h}h ago`;
  return `${Math.floor(h / 24)}d ago`;
}

function statusPill(s) {
  const labels = { approved: "✓ Approved", submitted: "↑ Submitted", in_progress: "⟳ In Progress", not_started: "○ Not Started", overdue: "⚠ Overdue" };
  return `<span class="status-pill ${s}">${labels[s] || s}</span>`;
}

function priorityPill(p) {
  const icons = { critical: "🔴", high: "🟠", medium: "🟡", low: "🔵" };
  return `<span class="priority-pill ${p}">${icons[p] || ""} ${p}</span>`;
}

function progressBar(pct, status) {
  const color = status === "approved" ? "#3fb950"
              : status === "overdue"   ? "#f85149"
              : status === "submitted" ? "#58a6ff"
              : pct > 60              ? "#d29922" : "#6366f1";
  return `<div class="progress-wrap">
    <div class="progress-track"><div class="progress-fill" style="width:${pct}%;background:${color}"></div></div>
    <span class="progress-label">${pct}%</span>
  </div>`;
}

function categoryLabel(cat) {
  return (cat || "").replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase());
}

function daysLabel(days) {
  if (days === null || days === undefined) return "—";
  if (days < 0)  return `${Math.abs(days)}d overdue`;
  if (days === 0) return "Due today";
  return `${days}d`;
}

// ─── Navigation ───────────────────────────────────────────────────────────────
function navigate(view) {
  state.view = view;

  // Sidebar active state
  document.querySelectorAll("nav-item").forEach(el => {
    el.classList.toggle("active", el.dataset.view === view);
  });

  // Toggle sections
  document.querySelectorAll(".view").forEach(el => {
    el.classList.toggle("active", el.id === `view-${view}`);
  });

  const titles = {
    dashboard:   ["Dashboard", "Compliance overview — FY2025/2026"],
    filings:     ["Filings", "All regulatory filing obligations"],
    regulations: ["Regulations", "Active regulatory obligations"],
    analytics:   ["Analytics & Trends", "Historical compliance performance"],
    audit:       ["Audit Log", "System and user activity trail"],
    export:      ["Export Reports", "Generate audit-ready reports"],
  };
  const [title, subtitle] = titles[view] || ["", ""];
  document.getElementById("page-title").textContent   = title;
  document.getElementById("page-subtitle").textContent = subtitle;

  // Lazy-load views
  if (view === "filings")     loadFilings();
  if (view === "regulations") loadRegulations();
  if (view === "analytics")   loadAnalytics();
  if (view === "audit")       loadAudit();
}

document.querySelectorAll("nav-item").forEach(el => {
  el.addEventListener("click", () => navigate(el.dataset.view));
});

// ─── Dashboard ────────────────────────────────────────────────────────────────
async function loadDashboard() {
  try {
    const data = await fetchJSON("/api/dashboard");
    state.dashData = data;

    document.getElementById("dashboard-loading").style.display = "none";
    document.getElementById("last-refresh").textContent = fmtDatetime(data.generated_at);

    renderKPIs(data.kpis);
    renderAlerts(data.overdue_items, data.due_soon);
    renderActivityFeed(data.recent_events);
    renderTrendChart("chart-trend", data.trend);
  } catch (e) {
    console.error(e);
    document.getElementById("dashboard-loading").innerHTML =
      `<p style="color:var(--red-fg)">Failed to load dashboard: ${e.message}</p>`;
  }
}

function renderKPIs(k) {
  const cards = [
    { icon:"📋", value: k.total_obligations, label: "Total Obligations",    sub: "Active regulations",                type: "info" },
    { icon:"📁", value: k.total_filings,     label: "Current Period Filings",sub: "FY2025/2026",                      type: "info" },
    { icon:"✅", value: k.approved,          label: "Approved",             sub: "Regulator confirmed",                type: "success" },
    { icon:"⬆️", value: k.submitted,         label: "Submitted",            sub: "Awaiting approval",                 type: "info" },
    { icon:"⏳", value: k.in_progress,       label: "In Progress",          sub: "Active work",                       type: "accent" },
    { icon:"○",  value: k.not_started,       label: "Not Started",          sub: "Work not yet begun",                type: "warning" },
    { icon:"🚨", value: k.overdue,           label: "Overdue",              sub: "Past deadline, not submitted",       type: "danger" },
    { icon:"📅", value: k.due_soon,          label: "Due in 30 Days",       sub: "Requires attention",                type: "warning" },
    { icon:"🎯", value: `${k.on_time_rate}%`,label: "On-Time Rate",         sub: "All periods combined",              type: k.on_time_rate >= 85 ? "success" : "warning" },
    { icon:"📊", value: `${k.avg_completion}%`, label: "Avg. Completion",   sub: "Current period filings",            type: "accent" },
  ];

  document.getElementById("kpi-grid").innerHTML = cards.map(c => `
    <div class="kpi-card ${c.type}">
      <div class="kpi-icon">${c.icon}</div>
      <div class="kpi-value ${c.type === "danger" && c.value > 0 ? "danger" : c.type === "warning" && c.value > 0 ? "warning" : c.type === "success" ? "success" : c.type === "info" ? "info" : ""}">${c.value}</div>
      <div class="kpi-label">${c.label}</div>
      <div class="kpi-sub">${c.sub}</div>
    </div>
  `).join("");
}

function renderAlerts(overdue, dueSoon) {
  const badge = document.getElementById("overdue-count");
  badge.textContent = overdue.length;
  badge.className   = `badge ${overdue.length > 0 ? "badge-danger" : "badge-neutral"}`;

  const alertHtml = overdue.map(f => `
    <div class="alert-item" data-id="${f.id}">
      <div class="alert-top">
        <span class="alert-title">${f.title}</span>
        <span class="alert-days-badge">${daysLabel(f.days_until_due)}</span>
      </div>
      <div class="alert-meta">${f.regulation_name} · ${f.owner} · ${progressBar(f.completion_pct, f.status)}</div>
    </div>
  `).join("") || `<div style="color:var(--text-muted);padding:12px;font-size:12px">✓ No overdue items</div>`;

  document.getElementById("alert-list").innerHTML = alertHtml;
  document.querySelectorAll(".alert-item").forEach(el => {
    el.addEventListener("click", () => openFilingModal(el.dataset.id));
  });

  const upcomingHtml = dueSoon.map(f => {
    const d = f.days_until_due;
    const cls = d <= 7 ? "critical" : d <= 14 ? "urgent" : "";
    return `
      <div class="upcoming-item" data-id="${f.id}">
        <div class="upcoming-days ${cls}">${d}d</div>
        <div>
          <div class="upcoming-name">${f.regulation_name}</div>
          <div class="upcoming-meta">${fmt(f.due_date)} · ${f.owner}</div>
        </div>
      </div>`;
  }).join("") || `<div style="color:var(--text-muted);padding:12px;font-size:12px">✓ Nothing due in 30 days</div>`;

  document.getElementById("upcoming-list").innerHTML = upcomingHtml;
  document.querySelectorAll(".upcoming-item").forEach(el => {
    el.addEventListener("click", () => openFilingModal(el.dataset.id));
  });
}

function renderActivityFeed(events) {
  document.getElementById("activity-feed").innerHTML = events.map(e => `
    <div class="activity-item">
      <div class="activity-dot ${e.severity}"></div>
      <div>
        <div class="activity-text"><strong>${e.actor}</strong> — ${e.description}</div>
        <div class="activity-time">${timeAgo(e.timestamp)}</div>
      </div>
    </div>
  `).join("");
}

function renderTrendChart(canvasId, trend) {
  const existing = state.charts[canvasId];
  if (existing) existing.destroy();

  const ctx = document.getElementById(canvasId).getContext("2d");
  state.charts[canvasId] = new Chart(ctx, {
    type: "bar",
    data: {
      labels: trend.map(t => t.month),
      datasets: [
        {
          label: "On Time",
          data: trend.map(t => t.on_time),
          backgroundColor: "rgba(63,185,80,0.75)",
          borderColor: "#3fb950",
          borderWidth: 1,
          borderRadius: 3,
          stack: "s",
        },
        {
          label: "Late",
          data: trend.map(t => t.late),
          backgroundColor: "rgba(210,153,34,0.75)",
          borderColor: "#d29922",
          borderWidth: 1,
          borderRadius: 3,
          stack: "s",
        },
        {
          label: "Overdue",
          data: trend.map(t => t.overdue),
          backgroundColor: "rgba(248,81,73,0.8)",
          borderColor: "#f85149",
          borderWidth: 1,
          borderRadius: 3,
          stack: "s",
        },
      ],
    },
    options: {
      responsive: true,
      plugins: {
        legend: { labels: { color: "#8b949e", font: { size: 11 }, boxWidth: 10 } },
      },
      scales: {
        x: { stacked: true, ticks: { color: "#8b949e", font: { size: 10 } }, grid: { color: "#2a3548" } },
        y: { stacked: true, ticks: { color: "#8b949e", font: { size: 10 }, stepSize: 1 }, grid: { color: "#2a3548" }, beginAtZero: true },
      },
    },
  });
}

// ─── Filings Table ────────────────────────────────────────────────────────────
async function loadFilings() {
  const params = new URLSearchParams({
    status:   document.getElementById("filter-status").value,
    category: document.getElementById("filter-category").value,
    priority: document.getElementById("filter-priority").value,
    sort:     document.getElementById("filter-sort").value,
    q:        document.getElementById("filter-search").value,
  });

  const data = await fetchJSON(`/api/filings?${params}`);
  document.getElementById("filings-count").textContent = `${data.total} filings`;

  document.getElementById("filings-tbody").innerHTML = data.filings.map(f => `
    <tr class="${f.is_overdue ? "overdue-row" : ""}" data-id="${f.id}">
      <td>
        <div style="font-weight:600;color:var(--text-primary)">${f.title}</div>
        <div style="font-size:10px;color:var(--text-muted);margin-top:2px">${f.regulation_name || ""} · <span class="cat-tag">${categoryLabel(f.regulation_category)}</span></div>
      </td>
      <td>${f.period || "—"}</td>
      <td>
        <div>${fmt(f.due_date)}</div>
        <div style="font-size:10px;color:${f.days_until_due < 0 ? "var(--red-fg)" : f.days_until_due <= 14 ? "var(--yellow-fg)" : "var(--text-muted)"}">${daysLabel(f.days_until_due)}</div>
      </td>
      <td>${statusPill(f.status)}</td>
      <td>${priorityPill(f.priority)}</td>
      <td>${progressBar(f.completion_pct, f.status)}</td>
      <td>
        <div>${f.owner}</div>
        <div style="font-size:10px;color:var(--text-muted)">Rev: ${f.reviewer}</div>
      </td>
      <td>
        <button class="btn btn-outline btn-sm" onclick="event.stopPropagation();openFilingModal('${f.id}')">View</button>
      </td>
    </tr>
  `).join("") || `<tr><td colspan="8" style="text-align:center;color:var(--text-muted);padding:24px">No filings match your filters</td></tr>`;

  document.querySelectorAll("#filings-tbody tr[data-id]").forEach(row => {
    row.addEventListener("click", () => openFilingModal(row.dataset.id));
  });
}

["filter-status","filter-category","filter-priority","filter-sort"].forEach(id => {
  document.getElementById(id)?.addEventListener("change", () => { if (state.view === "filings") loadFilings(); });
});
document.getElementById("filter-search")?.addEventListener("input", debounce(() => { if (state.view === "filings") loadFilings(); }, 250));

// ─── Regulations ──────────────────────────────────────────────────────────────
async function loadRegulations() {
  const data = await fetchJSON("/api/regulations");

  document.getElementById("reg-grid").innerHTML = data.regulations.map(r => {
    const latest = r.latest_filing;
    return `
      <div class="reg-card">
        <div class="reg-card-top">
          <div>
            <div class="reg-name">${r.name}</div>
            <div class="reg-full">${r.full_name}</div>
          </div>
          <span class="risk-badge-sm ${r.risk_level}">${r.risk_level.toUpperCase()}</span>
        </div>
        <div class="reg-meta-row">
          <div class="reg-meta-item">🏛 <strong>${r.authority}</strong></div>
          <div class="reg-meta-item">🌐 <strong>${r.jurisdiction}</strong></div>
          <div class="reg-meta-item">🔁 <strong>${r.reporting_frequency}</strong></div>
        </div>
        <div class="reg-meta-row">
          <div class="reg-meta-item">👤 Owner: <strong>${r.owner}</strong></div>
          <div class="reg-meta-item">📁 ${r.filing_count} filing${r.filing_count !== 1 ? "s" : ""}</div>
        </div>
        ${latest ? `<div class="reg-meta-row">
          <div class="reg-meta-item">Latest: ${statusPill(latest.status)}</div>
          <div class="reg-meta-item">Next due: <strong>${fmt(r.next_deadline)}</strong></div>
        </div>` : ""}
        <div class="reg-footer">
          <span class="cat-tag">${categoryLabel(r.category)}</span>
          <span>Since ${new Date(r.effective_date).getFullYear()}</span>
        </div>
      </div>`;
  }).join("");
}

// ─── Analytics ────────────────────────────────────────────────────────────────
async function loadAnalytics() {
  if (state.analytics) { renderAllCharts(state.analytics); return; }
  const data = await fetchJSON("/api/analytics");
  state.analytics = data;
  renderAllCharts(data);
}

function renderAllCharts(data) {
  // Status doughnut
  renderDoughnut("chart-status", {
    labels: ["Approved", "Submitted", "In Progress", "Not Started", "Overdue"],
    data:   [
      data.by_status.approved    || 0,
      data.by_status.submitted   || 0,
      data.by_status.in_progress || 0,
      data.by_status.not_started || 0,
      data.by_status.overdue     || 0,
    ],
    colors: ["#3fb950","#58a6ff","#d29922","#484f58","#f85149"],
  });

  // Category bar
  const cats = Object.keys(data.by_category);
  renderBar("chart-category", {
    labels: cats.map(categoryLabel),
    data:   cats.map(c => data.by_category[c]),
    color:  "#6366f1",
  });

  // Full trend line
  renderTrendChart("chart-trend-full", data.monthly_trend);

  // Category health radar/bar
  const scores = data.category_scores;
  renderHorizontalBar("chart-category-scores", {
    labels: scores.map(s => categoryLabel(s.category)),
    data:   scores.map(s => s.score),
    colors: scores.map(s => s.score >= 85 ? "#3fb950" : s.score >= 70 ? "#d29922" : "#f85149"),
  });

  // Owner bar
  const owners = Object.keys(data.by_owner);
  renderBar("chart-owner", {
    labels: owners,
    data:   owners.map(o => data.by_owner[o]),
    color:  "#0ea5e9",
  });
}

function renderDoughnut(id, { labels, data, colors }) {
  const ex = state.charts[id]; if (ex) ex.destroy();
  state.charts[id] = new Chart(document.getElementById(id).getContext("2d"), {
    type: "doughnut",
    data: { labels, datasets: [{ data, backgroundColor: colors, borderWidth: 2, borderColor: "#1c2230" }] },
    options: {
      cutout: "65%",
      plugins: {
        legend: { position: "right", labels: { color: "#8b949e", font: { size: 11 }, boxWidth: 10, padding: 12 } },
      },
    },
  });
}

function renderBar(id, { labels, data, color }) {
  const ex = state.charts[id]; if (ex) ex.destroy();
  state.charts[id] = new Chart(document.getElementById(id).getContext("2d"), {
    type: "bar",
    data: { labels, datasets: [{ data, backgroundColor: color + "bb", borderColor: color, borderWidth: 1, borderRadius: 3 }] },
    options: {
      plugins: { legend: { display: false } },
      scales: {
        x: { ticks: { color: "#8b949e", font: { size: 10 } }, grid: { color: "#2a3548" } },
        y: { ticks: { color: "#8b949e", font: { size: 10 }, stepSize: 1 }, grid: { color: "#2a3548" }, beginAtZero: true },
      },
    },
  });
}

function renderHorizontalBar(id, { labels, data, colors }) {
  const ex = state.charts[id]; if (ex) ex.destroy();
  state.charts[id] = new Chart(document.getElementById(id).getContext("2d"), {
    type: "bar",
    data: { labels, datasets: [{ data, backgroundColor: colors, borderColor: colors, borderWidth: 1, borderRadius: 3 }] },
    options: {
      indexAxis: "y",
      plugins: { legend: { display: false } },
      scales: {
        x: { min: 0, max: 100, ticks: { color: "#8b949e", font: { size: 10 } }, grid: { color: "#2a3548" } },
        y: { ticks: { color: "#8b949e", font: { size: 11 } }, grid: { color: "#2a3548" } },
      },
    },
  });
}

// ─── Audit Log ────────────────────────────────────────────────────────────────
async function loadAudit(page = 1) {
  state.auditPage = page;
  const params = new URLSearchParams({
    page,
    per_page: 12,
    severity: document.getElementById("audit-filter-severity").value,
    actor:    document.getElementById("audit-filter-actor").value,
  });

  const data = await fetchJSON(`/api/audit?${params}`);

  document.getElementById("audit-tbody").innerHTML = data.events.map(e => `
    <tr>
      <td style="white-space:nowrap;color:var(--text-muted)">${fmtDatetime(e.timestamp)}</td>
      <td><span class="sev-pill ${e.severity}">${e.severity}</span></td>
      <td style="white-space:nowrap">${e.actor}</td>
      <td><span class="action-tag">${e.action.replace(/_/g," ")}</span></td>
      <td><span style="font-size:10px;color:var(--text-muted)">${e.resource_type}:</span> ${e.resource_id}</td>
      <td>${e.description}</td>
    </tr>
  `).join("");

  renderPagination(data.page, data.pages);
}

function renderPagination(current, total) {
  const container = document.getElementById("audit-pagination");
  if (total <= 1) { container.innerHTML = ""; return; }

  let html = `<button class="page-btn" ${current <= 1 ? "disabled" : ""} onclick="loadAudit(${current - 1})">‹ Prev</button>`;
  for (let i = 1; i <= total; i++) {
    html += `<button class="page-btn ${i === current ? "active" : ""}" onclick="loadAudit(${i})">${i}</button>`;
  }
  html += `<button class="page-btn" ${current >= total ? "disabled" : ""} onclick="loadAudit(${current + 1})">Next ›</button>`;
  container.innerHTML = html;
}

["audit-filter-severity","audit-filter-actor"].forEach(id => {
  document.getElementById(id)?.addEventListener("change", () => loadAudit(1));
});

// ─── Filing Detail Modal ──────────────────────────────────────────────────────
async function openFilingModal(id) {
  const modal = document.getElementById("filing-modal");
  document.getElementById("modal-title").textContent = "Loading…";
  document.getElementById("modal-body").innerHTML = `<div style="display:flex;justify-content:center;padding:40px"><div class="spinner"></div></div>`;
  modal.classList.remove("hidden");

  const data = await fetchJSON(`/api/filings/${id}`);
  const f = data.filing;
  const r = data.regulation;
  const events = data.events;

  document.getElementById("modal-title").textContent = f.title;

  document.getElementById("modal-body").innerHTML = `
    <div style="display:flex;gap:8px;flex-wrap:wrap;margin-bottom:14px">
      ${statusPill(f.status)} ${priorityPill(f.priority)}
      ${f.is_overdue ? '<span class="status-pill overdue">⚠ OVERDUE</span>' : ""}
    </div>

    <div class="detail-grid">
      <div class="detail-item"><span class="detail-key">Filing ID</span><span class="detail-val">${f.id}</span></div>
      <div class="detail-item"><span class="detail-key">Period</span><span class="detail-val">${f.period || "—"}</span></div>
      <div class="detail-item"><span class="detail-key">Regulation</span><span class="detail-val">${f.regulation_name || "—"}</span></div>
      <div class="detail-item"><span class="detail-key">Category</span><span class="detail-val">${categoryLabel(f.regulation_category)}</span></div>
      <div class="detail-item"><span class="detail-key">Authority</span><span class="detail-val">${f.regulation_authority || "—"}</span></div>
      <div class="detail-item"><span class="detail-key">Jurisdiction</span><span class="detail-val">${f.jurisdiction || "—"}</span></div>
      <div class="detail-item"><span class="detail-key">Due Date</span><span class="detail-val" style="color:${f.days_until_due < 0 ? "var(--red-fg)" : "inherit"}">${fmt(f.due_date)} (${daysLabel(f.days_until_due)})</span></div>
      <div class="detail-item"><span class="detail-key">Submitted Date</span><span class="detail-val">${fmt(f.submitted_date)}</span></div>
      <div class="detail-item"><span class="detail-key">Owner</span><span class="detail-val">${f.owner}</span></div>
      <div class="detail-item"><span class="detail-key">Reviewer</span><span class="detail-val">${f.reviewer}</span></div>
      <div class="detail-item"><span class="detail-key">Completion</span><span class="detail-val">${progressBar(f.completion_pct, f.status)}</span></div>
      <div class="detail-item"><span class="detail-key">Attachments</span><span class="detail-val">${f.attachments || 0} document(s)</span></div>
    </div>

    ${f.notes ? `<div style="margin-top:12px;padding:10px 12px;background:var(--bg-hover);border-left:3px solid var(--accent);border-radius:0 var(--radius-sm) var(--radius-sm) 0;font-size:12px;color:var(--text-secondary)">${f.notes}</div>` : ""}

    ${r ? `
    <div class="section-title" style="margin-top:16px">Regulation Details</div>
    <div style="font-size:12px;color:var(--text-muted);line-height:1.6">${r.description || ""}</div>
    ` : ""}

    ${events.length ? `
    <div class="section-title" style="margin-top:16px">Audit Events (${events.length})</div>
    ${events.map(e => `
      <div class="event-row">
        <span class="event-time">${fmtDatetime(e.timestamp)}</span>
        <div>
          <span class="sev-pill ${e.severity}" style="margin-right:6px">${e.severity}</span>
          <span class="event-desc">${e.description}</span>
          <div style="font-size:10px;color:var(--text-muted);margin-top:2px">${e.actor}</div>
        </div>
      </div>
    `).join("")}
    ` : ""}
  `;
}

document.getElementById("close-filing-modal").addEventListener("click", () => {
  document.getElementById("filing-modal").classList.add("hidden");
});
document.querySelector("#filing-modal .modal-backdrop").addEventListener("click", () => {
  document.getElementById("filing-modal").classList.add("hidden");
});

// ─── Global Search ────────────────────────────────────────────────────────────
const globalSearch = document.getElementById("global-search");
const globalResults = document.getElementById("global-search-results");
let searchDebounce;

globalSearch.addEventListener("input", () => {
  clearTimeout(searchDebounce);
  const q = globalSearch.value.trim();
  if (q.length < 2) { globalResults.classList.add("hidden"); return; }
  searchDebounce = setTimeout(async () => {
    const data = await fetchJSON(`/api/filings?q=${encodeURIComponent(q)}`);
    if (!data.filings.length) {
      globalResults.innerHTML = `<div class="search-result-item" style="color:var(--text-muted)">No results</div>`;
    } else {
      globalResults.innerHTML = data.filings.slice(0, 8).map(f => `
        <div class="search-result-item" data-id="${f.id}">
          <div>
            <div style="font-size:12px;font-weight:500">${f.title}</div>
            <div style="font-size:10px;color:var(--text-muted)">${f.regulation_name} · ${statusPill(f.status)}</div>
          </div>
        </div>
      `).join("");
      globalResults.querySelectorAll(".search-result-item[data-id]").forEach(el => {
        el.addEventListener("click", () => {
          globalSearch.value = ""; globalResults.classList.add("hidden");
          openFilingModal(el.dataset.id);
        });
      });
    }
    globalResults.classList.remove("hidden");
  }, 200);
});
document.addEventListener("click", e => {
  if (!globalSearch.contains(e.target) && !globalResults.contains(e.target)) {
    globalResults.classList.add("hidden");
  }
});

// ─── Export & Print ───────────────────────────────────────────────────────────
document.getElementById("btn-quick-export").addEventListener("click", () => {
  window.location = "/export/filings.csv";
});

document.getElementById("btn-print-report")?.addEventListener("click", async () => {
  const data = state.dashData || await fetchJSON("/api/dashboard");
  const filings = (await fetchJSON("/api/filings")).filings;
  const k = data.kpis;

  const win = window.open("", "_blank");
  win.document.write(`<!DOCTYPE html><html><head>
    <title>Compliance Audit Report — ${new Date().toLocaleDateString("en-GB")}</title>
    <style>
      body { font-family: -apple-system, sans-serif; font-size: 12px; color: #1a1a1a; padding: 24px; }
      h1 { font-size: 22px; margin-bottom: 4px; }
      .subtitle { color: #666; font-size: 12px; margin-bottom: 20px; }
      .kpi-row { display: flex; gap: 12px; flex-wrap: wrap; margin-bottom: 24px; }
      .kpi { border: 1px solid #ddd; border-radius: 8px; padding: 12px 16px; min-width: 100px; }
      .kpi-val { font-size: 22px; font-weight: 700; }
      .kpi-lbl { font-size: 10px; color: #666; text-transform: uppercase; }
      table { width: 100%; border-collapse: collapse; margin-bottom: 24px; }
      th { background: #f5f5f5; padding: 7px 10px; text-align: left; font-size: 10px; text-transform: uppercase; color: #666; border: 1px solid #ddd; }
      td { padding: 7px 10px; border: 1px solid #eee; font-size: 11px; }
      tr.overdue { background: #fff5f5; }
      h2 { font-size: 14px; margin: 20px 0 8px; border-bottom: 2px solid #6366f1; padding-bottom: 4px; }
      .footer { margin-top: 32px; font-size: 10px; color: #999; border-top: 1px solid #eee; padding-top: 8px; }
    </style>
  </head><body>
    <h1>Compliance Audit Report</h1>
    <div class="subtitle">Generated: ${new Date().toLocaleString("en-GB")} · Period: FY2025/2026</div>
    <h2>Key Performance Indicators</h2>
    <div class="kpi-row">
      ${[
        ["Obligations", k.total_obligations],
        ["On-Time Rate", k.on_time_rate + "%"],
        ["Approved", k.approved],
        ["Submitted", k.submitted],
        ["In Progress", k.in_progress],
        ["Not Started", k.not_started],
        ["Overdue", k.overdue],
        ["Due in 30 Days", k.due_soon],
      ].map(([l,v]) => `<div class="kpi"><div class="kpi-val">${v}</div><div class="kpi-lbl">${l}</div></div>`).join("")}
    </div>
    <h2>Filing Register</h2>
    <table>
      <thead><tr><th>ID</th><th>Title</th><th>Regulation</th><th>Period</th><th>Due Date</th><th>Status</th><th>Priority</th><th>%</th><th>Owner</th></tr></thead>
      <tbody>
        ${filings.map(f => `
          <tr class="${f.is_overdue ? "overdue" : ""}">
            <td>${f.id}</td><td>${f.title}</td><td>${f.regulation_name || ""}</td>
            <td>${f.period || ""}</td><td>${f.due_date || ""}</td>
            <td>${f.status.replace(/_/g," ")}</td><td>${f.priority}</td>
            <td>${f.completion_pct}%</td><td>${f.owner}</td>
          </tr>
        `).join("")}
      </tbody>
    </table>
    <div class="footer">
      Compliance Audit Dashboard · Auto-generated report · Confidential — for internal and auditor use only
    </div>
  </body></html>`);
  win.document.close();
  setTimeout(() => win.print(), 400);
});

// ─── Debounce util ────────────────────────────────────────────────────────────
function debounce(fn, ms) {
  let t;
  return (...args) => { clearTimeout(t); t = setTimeout(() => fn(...args), ms); };
}

// ─── Boot ─────────────────────────────────────────────────────────────────────
document.addEventListener("DOMContentLoaded", () => {
  loadDashboard();
});

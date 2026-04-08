# frozen_string_literal: true

require "sinatra"
require "sinatra/json"
require "json"

# ─── Configuration ────────────────────────────────────────────────────────────
set :port, 4567
set :bind, "0.0.0.0"
set :public_folder, File.join(__dir__, "public")
set :views, File.join(__dir__, "views")

DATA_DIR = File.join(__dir__, "data")

# ─── Data Loading ─────────────────────────────────────────────────────────────
def load_json(filename)
  JSON.parse(File.read(File.join(DATA_DIR, filename)))
end

ENTITY_DATA     = load_json("entities.json").freeze
SANCTIONS_DATA  = load_json("sanctions_jurisdictions.json").freeze

HIGH_RISK_JURISDICTIONS = SANCTIONS_DATA["high_risk_jurisdictions"]
                          .each_with_object({}) { |j, h| h[j["name"]] = j }
                          .freeze

# ─── Risk Helpers ─────────────────────────────────────────────────────────────
def jurisdiction_risk(jurisdiction)
  HIGH_RISK_JURISDICTIONS[jurisdiction]
end

def enrich_entity(entity)
  jr = jurisdiction_risk(entity["jurisdiction"])
  entity.merge(
    "jurisdiction_risk" => jr ? jr["risk_level"] : "low",
    "jurisdiction_sanctions" => jr ? jr["lists"] : [],
    "jurisdiction_reason" => jr ? jr["reason"] : nil
  )
end

def graph_data
  entities = ENTITY_DATA["entities"].map { |e| enrich_entity(e) }
  relationships = ENTITY_DATA["relationships"]

  # Build adjacency for downstream exposure: any entity connected (directly or
  # indirectly) to a sanctioned node gets flagged for "sanctioned exposure".
  sanctioned_ids = entities.select { |e| e["sanctioned"] }.map { |e| e["id"] }.to_set

  # BFS to propagate sanction exposure through ownership/control edges
  adj = Hash.new { |h, k| h[k] = [] }
  relationships.each do |r|
    adj[r["source"]] << r["target"]
    adj[r["target"]] << r["source"]
  end

  exposed = Set.new
  queue   = sanctioned_ids.to_a.dup
  until queue.empty?
    node = queue.shift
    next if exposed.include?(node)

    exposed.add(node)
    adj[node].each { |n| queue << n unless exposed.include?(n) }
  end

  entities_out = entities.map do |e|
    e.merge("sanction_exposure" => exposed.include?(e["id"]) && !e["sanctioned"])
  end

  { entities: entities_out, relationships: relationships }
end

# ─── Routes ───────────────────────────────────────────────────────────────────

get "/" do
  erb :index
end

# Full graph data
get "/api/graph" do
  content_type :json
  graph_data.to_json
end

# Single entity detail
get "/api/entity/:id" do |id|
  entity = ENTITY_DATA["entities"].find { |e| e["id"] == id }
  halt 404, { error: "Entity not found" }.to_json unless entity

  rels = ENTITY_DATA["relationships"].select do |r|
    r["source"] == id || r["target"] == id
  end

  connected_ids = rels.flat_map { |r| [r["source"], r["target"]] }.uniq - [id]
  connected = ENTITY_DATA["entities"]
              .select { |e| connected_ids.include?(e["id"]) }
              .map { |e| enrich_entity(e) }

  content_type :json
  { entity: enrich_entity(entity), relationships: rels, connected: connected }.to_json
end

# Search entities by name
get "/api/search" do
  q = params[:q].to_s.downcase.strip
  halt 400, { error: "Query too short" }.to_json if q.length < 2

  results = ENTITY_DATA["entities"].select do |e|
    e["name"].downcase.include?(q)
  end.map { |e| enrich_entity(e) }

  content_type :json
  { results: results }.to_json
end

# High-risk jurisdictions reference
get "/api/jurisdictions" do
  content_type :json
  SANCTIONS_DATA.to_json
end

# Shortest path between two entities
get "/api/path" do
  from_id = params[:from].to_s
  to_id   = params[:to].to_s
  halt 400, { error: "from and to are required" }.to_json if from_id.empty? || to_id.empty?

  rels = ENTITY_DATA["relationships"]
  adj  = Hash.new { |h, k| h[k] = [] }
  rels.each do |r|
    adj[r["source"]] << { node: r["target"], rel: r }
    adj[r["target"]] << { node: r["source"], rel: r }
  end

  # BFS
  visited = { from_id => nil }
  queue   = [from_id]
  until queue.empty?
    curr = queue.shift
    break if curr == to_id

    adj[curr].each do |neighbor|
      next if visited.key?(neighbor[:node])

      visited[neighbor[:node]] = { from: curr, rel: neighbor[:rel] }
      queue << neighbor[:node]
    end
  end

  unless visited.key?(to_id)
    content_type :json
    return { path: [], message: "No connection found" }.to_json
  end

  # Reconstruct path
  path = []
  curr = to_id
  while curr
    entry = visited[curr]
    if entry
      path.unshift({ node: curr, via_rel: entry[:rel] })
      curr = entry[:from]
    else
      path.unshift({ node: curr, via_rel: nil })
      curr = nil
    end
  end

  content_type :json
  { path: path }.to_json
end

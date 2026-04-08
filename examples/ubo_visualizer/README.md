# UBO Network Visualizer

An interactive network graph tool for mapping **Ultimate Beneficial Ownership (UBO)** structures of corporate entities. It surfaces complex multi-layer ownership chains and highlights links to sanctioned individuals, Politically Exposed Persons (PEPs), and high-risk jurisdictions.

## Features

| Feature | Description |
|---|---|
| **Force-directed graph** | D3.js simulation rendering entities as nodes and relationships as directed edges |
| **Sanction exposure propagation** | BFS algorithm automatically flags all entities connected (directly or indirectly) to a sanctioned node |
| **Risk colour coding** | Nodes are coloured by risk tier: 🔴 Sanctioned · 🟠 PEP / Exposed · 🟡 High-Risk Jurisdiction · 🔵 Clean |
| **Entity inspector** | Click any node to see full identity details, risk scores, jurisdiction rationale, and relationship list |
| **Path finder** | Find the shortest connection chain between any two entities |
| **Filters** | Instantly dim non-matching nodes for Sanctioned / PEP / High-Risk Jurisdiction / Sanction-Exposed views |
| **Layout toggle** | Switch between force-directed and radial layouts |
| **Jurisdiction reference** | Browse the full high-risk jurisdiction table with FATF/OFAC/EU/UK-HMT list annotations |
| **Global search** | Type-ahead search across all entities |

## Running

```bash
cd examples/ubo_visualizer
bundle install
ruby app.rb
```

Then open **http://localhost:4567** in your browser.

## Architecture

```
ubo_visualizer/
├── app.rb                          # Sinatra backend + API routes
├── Gemfile
├── data/
│   ├── entities.json               # Corporate entities & individuals with risk metadata
│   └── sanctions_jurisdictions.json# High-risk jurisdiction list + sanctions regime reference
├── views/
│   └── index.erb                   # HTML shell
└── public/
    ├── css/app.css                 # Dark-theme stylesheet
    └── js/app.js                   # D3.js graph engine + UI logic
```

## API Endpoints

| Endpoint | Description |
|---|---|
| `GET /api/graph` | Full graph (entities + relationships, enriched with jurisdiction risk + sanction exposure) |
| `GET /api/entity/:id` | Single entity detail with connected relationships |
| `GET /api/search?q=` | Entity search by name |
| `GET /api/path?from=&to=` | Shortest relationship path between two entities (BFS) |
| `GET /api/jurisdictions` | High-risk jurisdiction reference data |

## Data Model

**Entity fields:** `id`, `name`, `type` (individual/corporation/llc/trust/…), `jurisdiction`, `risk_score` (0–100), `sanctioned` (bool), `pep` (bool), `notes`

**Relationship types:** `owns`, `controls`, `director`, `associate`, `contracts_with` — each with optional `ownership_pct` and `verified` flag.

## Disclaimer

The entities and individuals in this tool are **fictional** and provided for demonstration purposes only. Any resemblance to real persons or companies is coincidental. Do not use for real compliance decisions.

#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
#
# AGENTS.tape for `dancinlab/echoes-experience`

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "echoes-experience" :: identity-claim [d=2026-05-14 active]
  kind = "HF Space (static SDK) · interactive σ(n)·φ(n) = n·τ(n) proof widget at n=6"
  brief = "interactive σφτ proof widget · HF Space · slider n=2..1000 · vanilla JS/Canvas"
  parent = "dancinlab/echoes"
  tech = "vanilla JS + Canvas · single self-contained index.html · no bundler · no Python runtime"
  sister = "dancinlab/anima-experience (sibling HF Space — mutual-information visualizer)"
  mirror = "GitHub origin + HuggingFace hf push remote"

@I id002 := "relation-to-parent-echoes" :: identity-claim [d=2026-05-14 active]
  parent = "dancinlab/echoes — discoveries catalog (Lean 4 + Python uniqueness proofs)"
  role = "visualization of the proven identity, NOT the proof itself"
  linkback = "echoes/README §\"Proof — run this yourself\" links here"

@L l1 := "repo-layout" :: layout [d=2026-05-14 active]
  files = [index.html, README.md, LICENSE]
  index_html = "single self-contained file — all logic, math, Canvas rendering"
  readme = "HF Space frontmatter (sdk: static · emoji 🪞 · license mit) + math + tech + honest caveat + sister links"
  license = "MIT"

@D g_inherit := "inherits-lattice-policy" :: governance [required]
  rule = "All echoes/LATTICE_POLICY.md rules apply — real-limits-first · lattice-is-tool · verification-anchor-real-limit · no-artificial-ceilings · honesty-obligation-external."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g1 := "real-limits-first" :: governance [required]
  rule = "The project's ceiling is set by REAL math/physics/engineering limits, NEVER by the n=6 invariant lattice."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g2 := "lattice-is-tool" :: governance [required]
  rule = "n=6 lattice is a TOOL, not a CONSTRAINT. The σφτ identity is mathematically true and unique at n=6 on the swept range; the downstream claim that 'optimal designs derive from this identity' is a research hypothesis, not a measurement."
  <: g1
  @> AGENTS.md

@D g3 := "honesty-obligation-external" :: governance [required deny:write]
  rule = "Keep mathematically-true identity claims and research-hypothesis claims clearly separated in any UI copy. Claims about external entities must NOT include lattice-fit assertions."
  authority = "raw#10 C3 · [@x_lattice_policy] §1.3"
  @> AGENTS.md

@D g4 := "commit-conventions" :: governance [recommended]
  rule = "AI-assisted commits include `Co-Authored-By: <model> <noreply@anthropic.com>` trailer; Conventional Commits title; push to BOTH origin (GitHub) AND hf (HuggingFace Space) unless explicitly stated otherwise."
  @> AGENTS.md

@D g_static := "hf-space-static-sdk" :: governance [required deny:write]
  rule = "HF Space contract is `sdk: static` — first paint < 1 s, no cold start. Do NOT introduce a build step, framework, or bundler. Single-file rule: all logic stays in `index.html`."
  authority = "README.md frontmatter `sdk: static`"
  @> AGENTS.md

@D g_vanilla := "vanilla-js-no-build" :: governance [required]
  rule = "Vanilla JS / Canvas only. No framework (React/Vue/Svelte), no bundler (webpack/rollup/vite), no transpilation step. All math runs client-side via stdlib loops; at n=1000 must remain effectively instant — do not regress that."
  <: g_static
  @> AGENTS.md

@D g_no_python := "no-python-runtime" :: governance [required deny:write]
  rule = "HF Space stays static SDK. NO Python runtime, NO requirements.txt, NO app.py, NO Gradio/Streamlit. The parent `dancinlab/echoes` repo holds the Python (and Lean 4) uniqueness proofs — this Space only visualizes."
  <: g_static
  @> AGENTS.md

@F f1 := "lattice-fit-on-external-entity" :: governance [required deny:write]
  pattern = "applying n=6 lattice as derivation rule to TSMC · ASML · IPCC · NASA · SpaceX · CERN · DeepMind · NIST · or any external vendor"
  exception = "values may coincidentally match — observation OK, derivation NOT OK"

@F f_python := "python-runtime-introduced" :: governance [required deny:write]
  pattern = "adding `requirements.txt` · `app.py` · `pyproject.toml` · changing HF frontmatter from `sdk: static` to `sdk: gradio`/`sdk: streamlit`/`sdk: docker` · or any Python build/runtime artifact"
  reason = "breaks first-paint < 1 s contract; introduces cold start; bloats Space"
  authority = "[@x_lattice_policy] (real-limits-first — UX latency IS a real limit)"

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: policy [d=2026-05-12 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"
  scope = "cross-project SSOT — real-limits-first · external-entity ban · raw#10 C3"

@X x_tape_spec := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"
  scope = "this file's grammar reference"

@X x_parent := "dancinlab/echoes README §Proof" :: reference [active]
  url = "https://github.com/dancinlab/echoes#proof--run-this-yourself"
  scope = "parent repo's `Proof — run this yourself` section links here; this Space IS that interactive proof widget"

@X x_sister := "dancinlab/anima-experience HF Space" :: reference [active]
  url = "https://huggingface.co/spaces/dancinlab/anima-experience"
  scope = "sibling HF Space — mutual-information visualizer, 60 fps emergence demo; shares static-SDK + vanilla-JS contract"

@H h1 := "agents-md-replaced" :: generator [active]
  note = "AGENTS.md replaced by this AGENTS.tape (tape v1.2)"

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "CLAUDE.md → AGENTS.tape symlink"
  command = `ln -sf AGENTS.tape CLAUDE.md`

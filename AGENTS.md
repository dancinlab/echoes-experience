# echoes-experience — n=6 σφτ identity explorer (HF Space)

> Static Hugging Face Space — interactive proof-by-inspection of
> `σ(n) · φ(n) = n · τ(n)`, unique at n=6. Single self-contained
> `index.html`, vanilla JS / Canvas, no bundler, no Python runtime.
> See `README.md` for the math and the honest caveat about lattice claims.

## Working in this repo

- **Single-file rule**: all logic lives in `index.html`. Do not
  introduce a build step, framework, or bundler — the static-Space
  contract (`sdk: static`, first paint < 1 s, no cold start) is the
  product.
- All math runs client-side. At n=1000 the swept identity check is
  effectively instant; do not regress that.
- The "uniqueness at n=6" claim is verified externally (Lean 4 on
  `[2, 30]`, Python on `[2, 10000]` in the parent `dancinlab/echoes`).
  This Space is a *visualization* of that result, not the proof.

## Sister repos

- 🪞 `dancinlab/echoes` — discoveries catalog (this widget proves its
  central identity).
- ✨ `dancinlab/anima-experience` — sibling HF Space (mutual-information
  visualizer, 60 fps emergence demo).
- 🧠 `dancinlab/anima` — consciousness implementation.

---

# AGENTS.md — agent operating guide for this repository

> Convention: this file documents how AI agents (Claude, Codex, etc.)
> should operate within this repository. Maintained alongside the
> dancinlab-wide policy declarations.

## 📐 Limits & verification — LATTICE_POLICY.md is authoritative

This repository operates under the dancinlab-wide **real-limits-first
verification policy** (deployed 2026-05-12 to all dancinlab projects).

**Core rule for any agent working in this repo**:

1. **The project's ceiling is set by REAL math/physics/engineering
   limits**, never by the n=6 invariant lattice (σ(6)=12, τ(6)=4,
   φ(6)=2, J₂(6)=24).
2. **n=6 lattice is a *tool*, not a *constraint***. Use it where it
   naturally fits (native lattice spec files); do **not** force-map it
   onto external domains / external entities / general analyses.
3. **Verification anchors** must include at least one **real limit**
   (Shannon · Kolmogorov · Bekenstein · c · ℏ · k · Stefan-Boltzmann ·
   Carnot · ASML throughput · ERCOT capacity · etc.). Lattice-tautology
   checks (σ·φ=24) alone are not sufficient verification.
4. **No artificial ceilings**: do not bound this project's ambition
   by lattice fit. Bound it by what mathematics, physics, and
   engineering actually permit.

**Honesty obligation** (raw#10 C3): the σφτ identity is *mathematically
true* and unique at n=6 on the swept range. The downstream claim that
"optimal designs derive from this identity" is a research hypothesis,
not a measurement — keep the two clearly separated in any UI copy.

## 🛠️ Commit conventions

- Trailer: `Co-Authored-By: <model> <noreply@anthropic.com>` (when AI-assisted)
- Title format: `<type>(<scope>): <one-line summary>` per Conventional Commits
- Body: bullet list of file changes + honesty caveats
- Pushes go to **both** `origin` (GitHub) and `hf` (Hugging Face Space)
  unless explicitly stated otherwise.

## 📎 References

- `README.md` — math, tech, sister repos, honest caveat
- `dancinlab/echoes` parent repo — Lean 4 + Python uniqueness proofs
- Origin: dancinlab Wave K, 2026-05-12 — user directive "n=6 격자를 강제할 필요 없어, 제한없이"

---

*This AGENTS.md is the dancinlab-default agent-operating-guide stub.
Project-specific agent guidance may be appended below as separate
sections. The lattice-policy registration above is canonical and
should not be removed.*

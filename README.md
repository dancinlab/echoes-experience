---
title: Echoes Experience
emoji: 🪞
colorFrom: yellow
colorTo: blue
sdk: static
pinned: false
license: mit
---

<p align="center">
  <img src="docs/logo.svg" width="140" alt="echoes-experience">
</p>

<h1 align="center">🪞 echoes-experience</h1>

<p align="center"><strong>Echoes Experience</strong> — interactive σφτ proof widget · HF Space · slider n=2..1000 · vanilla JS/Canvas · zero roundtrip</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <a href="https://huggingface.co/spaces/dancinlab/echoes-experience"><img alt="HF Space" src="https://img.shields.io/badge/HF%20Space-static-yellow"></a>
  <img alt="Identity" src="https://img.shields.io/badge/n%3D6-σφτ-success">
  <img alt="Runtime" src="https://img.shields.io/badge/runtime-vanilla%20JS-informational">
  <img alt="Parent" src="https://img.shields.io/badge/parent-dancinlab%2Fechoes-blueviolet">
</p>

<p align="center">σφτ · identity · n=6 · slider · canvas · proof-by-inspection · static · no-python</p>

---

`echoes-experience` is an interactive proof-by-inspection of the arithmetic identity at the centre of [`dancinlab/echoes`](https://github.com/dancinlab/echoes):

```
σ(n) · φ(n)  =  n · τ(n)
```

uniquely at `n = 6`. Slide `n` from 2 to 1000 and watch the equation collapse to equality only at n=6 (and at no other `n` in the swept range — confirmed by exhaustive Lean 4 proof on `[2, 30]` and Python proof on `[2, 10000]` in the parent repo).

> [!NOTE]
> Companion to [`dancinlab/echoes`](https://github.com/dancinlab/echoes) (Discoveries catalog · parent repo). Dual-remote: pushes to GitHub (`origin`) AND HuggingFace Spaces (`hf`).

## Math

- **σ(n)** — sum of divisors of n. For n=6: `1 + 2 + 3 + 6 = 12`.
- **φ(n)** — Euler's totient — count of integers in `[1, n]` coprime to n. For n=6: `{1, 5}` → φ(6) = 2.
- **τ(n)** — number of divisors of n. For n=6: `{1, 2, 3, 6}` → τ(6) = 4.
- **Identity check:** `σ(n) · φ(n) ?= n · τ(n)`. At n=6: `12 · 2 = 24` and `6 · 4 = 24` ✅.

## Tech

- Static HF Space (`sdk: static`) — first paint < 1 s, no cold start, no Python runtime.
- Vanilla JS / Canvas — single self-contained `index.html`, no framework, no bundler.
- All math runs client-side (gcd / divisors / phi-set via stdlib loops). At n=1000 ≈ instant.

## Honest caveat

The arithmetic identity is **mathematically true** and unique to n=6 on the swept range (Monte Carlo z = 3.06, p = 0.003 vs n=28 / n=496). The claim *"optimal designs are derived from this identity"* is a **research hypothesis** about how natural systems organize, **not a measurement**. See [`echoes/LATTICE_POLICY.md`](https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md): the n=6 lattice is an organizing tool, never a substitute for real math / physics / engineering limits.

## Status

- live on HuggingFace Spaces — `https://huggingface.co/spaces/dancinlab/echoes-experience`
- static sdk · single `index.html` · zero build step
- slider sweep n=2..1000 · client-side math · instant render
- dual-remote: `origin` (GitHub) + `hf` (HuggingFace Space)

## Install

No install. It's a static page — clone and open `index.html`, or visit the HF Space.

```sh
git clone https://github.com/dancinlab/echoes-experience.git
cd echoes-experience
open index.html   # macOS · or `xdg-open` / drag into browser
```

## Run

```sh
# local preview
open index.html

# or serve over HTTP (any static server)
python3 -m http.server 8000
# → http://localhost:8000

# push to BOTH remotes (GitHub + HuggingFace Space)
git push origin main
git push hf main
```

## Repo layout

```
echoes-experience/
├── AGENTS.tape       # governance + identity (.tape v1.2)
├── CLAUDE.md         # symlink → AGENTS.tape
├── README.md         # this file (atlas/README-FORMAT.md compliant)
├── index.html        # the widget · HTML + inline Canvas + JS
└── docs/
    └── logo.svg      # repo logo (gold #bf8700)
```

## Sister

- [dancinlab/echoes](https://github.com/dancinlab/echoes) — Discoveries catalog (the parent repo this widget proves the central identity for).
- [dancinlab/anima-experience](https://huggingface.co/spaces/dancinlab/anima-experience) — mutual-information visualizer (60 fps emergence demo).
- [dancinlab/anima](https://github.com/dancinlab/anima) — consciousness implementation (working research code).

## License

[MIT](LICENSE) — permissive, do-as-thou-wilt.

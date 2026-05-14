---
title: Echoes Experience
emoji: 🪞
colorFrom: yellow
colorTo: blue
sdk: static
pinned: false
license: mit
---

# Echoes Experience — n=6 σφτ identity explorer

Interactive proof-by-inspection of the arithmetic identity at the centre of [`dancinlab/echoes`](https://github.com/dancinlab/echoes):

```
σ(n) · φ(n)  =  n · τ(n)
```

uniquely at `n = 6`. Slide `n` from 2 to 1000 and watch the equation collapse to equality only at n=6 (and at no other `n` in the swept range — confirmed by exhaustive Lean 4 proof on `[2, 30]` and Python proof on `[2, 10000]` in the parent repo).

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

## Sister

- 🪞 [dancinlab/echoes](https://github.com/dancinlab/echoes) — Discoveries catalog (the parent repo this widget proves the central identity for).
- ✨ [dancinlab/anima-experience](https://huggingface.co/spaces/dancinlab/anima-experience) — mutual-information visualizer (60 fps emergence demo).
- 🧠 [dancinlab/anima](https://github.com/dancinlab/anima) — consciousness implementation (working research code).

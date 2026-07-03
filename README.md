# homebrew-tap

Tap personal de Homebrew.

```bash
brew tap rotorrest/tap
brew install claude-monitor   # también responde a: brew install claudios | claudes
```

La fórmula se actualiza en cada release de
[rotorrest/claude-monitor](https://github.com/rotorrest/claude-monitor)
(workflow `release.yml` con el secret `TAP_GITHUB_TOKEN`; sin el secret,
bump manual de `url` + `sha256` en `Formula/claude-monitor.rb`).

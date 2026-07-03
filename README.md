# homebrew-tap

Tap personal de Homebrew.

```bash
brew tap rotorrest/tap
brew install claude-monitor   # (o su alias: brew install claudes)
```

La fórmula se actualiza automáticamente en cada release de
[rotorrest/claude-monitor](https://github.com/rotorrest/claude-monitor) (workflow `release.yml`
con el secret `TAP_GITHUB_TOKEN`; sin el secret, bump manual de `url` + `sha256`).

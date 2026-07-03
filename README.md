# homebrew-tap

Tap personal de Homebrew.

```bash
brew install rotorrest/tap/claudes        # monitor de sesiones de Claude Code
brew install rotorrest/tap/claude-monitor # alias del mismo paquete
```

La fórmula se actualiza automáticamente en cada release de
[rotorrest/claudes](https://github.com/rotorrest/claudes) (workflow `release.yml`
con el secret `TAP_GITHUB_TOKEN`; sin el secret, bump manual de `url` + `sha256`).

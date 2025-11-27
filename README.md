# Claude Code Hooks Collection

Collection de hooks prêts à l'emploi pour Claude Code. Automatise ton workflow et arrête de perdre du temps sur des validations manuelles.

## Pourquoi ce repo ?

Les Hooks sont la fonctionnalité la plus sous-estimée de Claude Code. C'est le seul moyen d'automatiser des tâches répétitives de manière déterministe.

Pas de probabilité, pas d'oubli. Le hook s'exécute à chaque fois, sans exception.

## Hooks disponibles

| Hook | Description | Lien |
|------|-------------|------|
| **Notification macOS** | Notification native + son quand Claude termine une tâche | [Voir le hook](./notification-macos/) |

## Comment ça marche ?

Les Hooks sont des commandes shell qui s'exécutent automatiquement à des moments précis du cycle de vie de Claude Code :

- `SessionStart` : au lancement d'une session
- `PreToolUse` : avant l'exécution d'un outil
- `PostToolUse` : après l'exécution d'un outil
- `Stop` : quand Claude termine sa réponse
- `Notification` : quand Claude envoie une notification

Chaque hook reçoit les données en JSON via stdin et retourne un exit code :
- `0` : succès
- `2` : bloqué (stderr renvoyé à Claude)

## Installation

1. Clone le repo
```bash
git clone https://github.com/Bikach/hooks-claude-code.git
```

2. Choisis un hook et suis les instructions dans son dossier

3. Configure ton `~/.claude/settings.json`

4. C'est prêt

## Prérequis

- macOS / Linux
- Claude Code
- `jq` (`brew install jq` ou `apt install jq`)

## Contribuer

Tu as un hook utile ? Partage-le avec la communauté.

### Comment proposer un hook

1. Fork le repo
2. Crée un dossier avec le nom de ton hook
3. Ajoute :
    - Le script (`.sh`, `.py`, ou autre)
    - Un `README.md` avec les instructions d'installation
    - La config `settings.json` à ajouter
4. Ouvre une PR

### Guidelines

- Un hook = un dossier
- README clair avec prérequis et installation
- Teste ton hook avant de soumettre
- Précise si c'est macOS only, Linux only, ou cross-platform

## Idées de hooks à créer

- [ ] Auto-commit après chaque modification
- [ ] Linter automatique (ESLint, Prettier, Checkstyle)
- [ ] Auto-approbation des commandes git read-only
- [ ] Auto-approbation de l'exécution des tests
- [ ] Notification Slack/Discord
- [ ] Logging des commandes exécutées

Tu veux t'en occuper ? Fork et PR.

## Licence

MIT

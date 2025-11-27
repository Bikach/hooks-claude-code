# Notification macOS

Reçois une notification native macOS + un son quand Claude Code t'envoie une notification.

![example-notification.png](example-notification.png)

## Sons

| Contexte | Son |
|----------|-----|
| Tâche terminée (completed, terminé, fini) | Hero |
| Erreur (error, erreur) | Basso |
| Autre | Ping |

## Prérequis
```bash
brew install jq
```

## Installation

### 1. Copier le script
```bash
cp claude-notify.sh ~/.claude/claude-notify.sh
chmod +x ~/.claude/claude-notify.sh
```

### 2. Ajouter la config

Dans `~/.claude/settings.json` :
```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/claude-notify.sh"
          }
        ]
      }
    ]
  }
}
```

## Personnalisation

Modifier les sons dans le script. Sons disponibles :
```bash
ls /System/Library/Sounds/
```

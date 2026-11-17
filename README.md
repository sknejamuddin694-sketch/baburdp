# Webtop Ubuntu XFCE — Railway

A browser-accessible Ubuntu XFCE desktop using the official LinuxServer Webtop image.

## Upload to GitHub

1. Download this ZIP and extract it.
2. Upload the **contents** of the extracted folder to the root of a new GitHub repository.
   - `Dockerfile` must be at the repository root.
3. In Railway, choose **New Project → Deploy from GitHub Repo** and select that repository.

## Railway configuration

In the Railway service:

### Variables

Set these variables:

| Variable | Example |
|---|---|
| `PORT` | `3000` |
| `CUSTOM_USER` | `desktop` |
| `PASSWORD` | Set your own strong password |
| `TZ` | `Asia/Kolkata` |
| `PUID` | `1000` |
| `PGID` | `1000` |

Use your own password; do not publish it in GitHub.

### Networking

1. Open **Settings → Networking**.
2. Generate a public domain.
3. Set the target port to **3000** if Railway asks for one.

Open the generated HTTPS domain to access the desktop.

### Persistent storage (recommended)

Add a Railway Volume and mount it at:

`/config`

This keeps Webtop settings and files across container redeployments. Without a volume, data stored only in the container may be lost.

## Important

- This is **Ubuntu XFCE Linux**, not Microsoft Windows.
- Railway runs this as a container, not a full virtual machine.
- Railway's public HTTPS endpoint proxies to Webtop's HTTP port `3000`.
- Keep `CUSTOM_USER` and `PASSWORD` enabled and use a strong, unique password. Anyone who gets desktop access can use its terminal.
- Resource limits and persistent-volume availability depend on your Railway plan.

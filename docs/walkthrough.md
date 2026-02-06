# Walkthrough: OpenClaw (Moltbot) Installation & Gemini 3 Configuration

We have successfully installed and configured OpenClaw with a Google Gemini 3 backend for WhatsApp.

## Steps Taken

### 1. Installation
- Installed OpenClaw CLI via npm.
- Verified Node.js compatibility (v24+).

### 2. Configuration & Linking
- Initialized configuration with `openclaw onboard`.
- Enabled the WhatsApp plugin.
- Successfully linked WhatsApp via QR code.

### 3. Troubleshooting & Fixes
- **Gateway Auth**: Fixed startup errors by setting `gateway.mode` to `local` and configuring a local token.
- **Model 404 Error**: Discovered that the user's API key specifically supports Gemini 3 models.
- **Persistent Defaults**: Patched the OpenClaw source code (`dist/agents/defaults.js`) to force the use of `google/gemini-3-pro-preview` as the default model.
- **API Key**: Updated `auth-profiles.json` with the valid Google Gemini API Key.

## Final Status
- **Gateway**: Running and listening.
- **Model**: `google/gemini-3-pro-preview` active.
- **WhatsApp**: Connected and responding to messages.

## Verification
- User confirmed successful interaction on WhatsApp ("Agora funcionou").

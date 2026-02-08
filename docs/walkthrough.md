# Walkthrough: OpenClaw (Moltbot) Configuration with OpenRouter Free Models

We have successfully configured OpenClaw to use OpenRouter's free models instead of Google Gemini.

## Migration Summary

### Previous Setup (Google Gemini)
- Model: `google/gemini-3-pro-preview`
- Status: API key expired/quota exceeded
- Issue: Costly and limited by Google quotas

### New Setup (OpenRouter Free)
- Model: `openrouter/openrouter/free` (auto-selects best available free model)
- Alternative tested: `deepseek/deepseek-r1:free`
- Provider: OpenRouter (free tier with API key)
- Status: Working and responding to WhatsApp messages

## Configuration Changes

### 1. Model Provider Configuration
**File**: `~/.openclaw/openclaw.json`

```json
{
  "models": {
    "mode": "merge",
    "providers": {
      "openrouter": {
        "baseUrl": "https://openrouter.ai/api/v1",
        "apiKey": "YOUR_OPENROUTER_API_KEY",
        "api": "openai-completions",
        "models": [
          {
            "id": "openrouter/free",
            "name": "openrouter-free",
            "maxTokens": 32000
          }
        ]
      }
    }
  },
  "agents": {
    "defaults": {
      "model": {
        "primary": "openrouter/openrouter/free"
      }
    }
  }
}
```

### 2. Authentication Profile
**File**: `~/.openclaw/agents/main/agent/auth-profiles.json`

```json
{
  "version": 1,
  "profiles": {
    "openrouter:default": {
      "type": "api_key",
      "provider": "openrouter",
      "key": "YOUR_OPENROUTER_API_KEY"
    }
  }
}
```

### 3. Session Configuration
**File**: `~/.openclaw/agents/main/sessions/sessions.json`

Session automatically uses:
- Provider: `openrouter`
- Model: `openrouter/openrouter/free`
- Auth Profile: `openrouter:default`

## Troubleshooting Journey

### Issues Encountered

1. **Model Not Found Error**
   - Error: `Unknown model: openrouter/deepseek/deepseek-r1:free`
   - Solution: Switched to `openrouter/openrouter/free` (router model)

2. **Tool Use Not Supported**
   - Error: `404 No endpoints found that support tool use`
   - Note: Free models may have limited tool support

3. **Data Policy Error**
   - Error: `404 No endpoints found matching your data policy`
   - Note: Some free models have data sharing policies

4. **No API Key Found**
   - Error: `No API key found for provider "openrouter"`
   - Solution: Created auth profile with valid OpenRouter API key

### Gateway Restart Required
After configuration changes:
```bash
openclaw gateway restart
```

## Final Status
- **Gateway**: Running on port 18789
- **Model**: `openrouter/openrouter/free` (gratuito)
- **Provider**: OpenRouter
- **WhatsApp**: Connected and responding
- **Cost**: FREE (using OpenRouter's free tier)

## Verification
Test by sending a message to the WhatsApp number: +5511976360192

The bot should respond using OpenRouter's free models.

---

## Historical: Original Gemini Configuration
See commit `5d30244` for the original Google Gemini setup documentation.

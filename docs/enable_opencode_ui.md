# Como Habilitar Modelos Grátis do Opencode no Antigravity

Para usar os modelos gratuitos que descobrimos diretamente na interface do chat (onde você seleciona os modelos como no print), siga estes passos:

### 1. Acessar as Configurações
No menu lateral ou no ícone de "..." (dependendo da versão), procure por **Settings** ou **MCP / Providers**.

### 2. Adicionar o Opencode como Provedor Customizado
Como o Opencode funciona com o padrão da OpenAI, você pode adicioná-lo assim:

- **Tipo do Provedor**: Custom OpenAI / OpenAI Compatible
- **Base URL**: `https://opencode.ai/zen/v1`
- **API Key**: Se você estiver usando apenas os modelos grátis, tente deixar em branco. Se ele pedir, use qualquer texto (placeholder) ou sua chave obtida no site do Opencode.

### 3. Selecionar o Modelo Gratuito
No chat, após adicionar o provedor, você poderá digitar ou selecionar o nome do modelo:
- `opencode/trinity-large-preview-free`

### 4. Alternativa via MCP (Recomendado)
Se a sua versão do Antigravity suporta **MCP**, você pode adicionar o servidor do Opencode que listará todos os modelos automaticamente:
- Vá em **Manage MCP Servers**.
- Adicione um novo com o comando: `npx -y @opencode/mcp`

Isso fará com que os modelos do Opencode apareçam na lista junto com os do Gemini e Claude!

---
> [!NOTE]
> No seu print, os modelos com o ícone **(!)** estão com erro de cota ou falta de chave. Usando o método acima com o modelo `free`, esse aviso deve sumir para o novo modelo.

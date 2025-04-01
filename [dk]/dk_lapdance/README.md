# Configuração do Script de Lapdance

## Instalação

1. **Adicione o script:**
   - Coloque este arquivo em qualquer diretório dentro da pasta `resources` do servidor. Recomendo criar uma pasta chamada `[dk]`.

2. **Baixe os snippets:**
   - Acesse nosso Discord e vá até a aba **snippets** (visível para clientes).
   - Baixe os snippets obrigatórios e coloque-os dentro da pasta `[dk]`.

3. **Configure o servidor:**
   - No arquivo `cfg` do servidor, adicione a linha `start [dk]`.
   - **Atenção:** É importante que seja `start [dk]` e não `ensure dk`.

## Configuração

1. **Arquivos de configuração:**
   - Todos os arquivos de configuração estão na pasta `config/`. Personalize-os conforme sua preferência.

2. **Comandos de blips:**
   - Use o comando `/ldcreate` para adicionar, remover e listar blips.

3. **Permissões:**
   - Se o framework do seu servidor não for identificado, o script usa a nativa `IsPlayerAceAllowed(source, "admin")`.
   - Para **vRP**, o script verifica `admin.permissao`.
   - Para **creative**, verifica `Admin`.
   - Atualmente, esses são os frameworks compatíveis. Para mais detalhes, consulte `dk_snippets/server/frameworks`.

Pronto! Agora seu script de lapdance deve estar configurado e pronto para uso. Se precisar de mais ajuda, estou aqui!

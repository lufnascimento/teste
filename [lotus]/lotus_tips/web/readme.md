## 1. Visibilidade

```lua
SendNUIMessage({
  action = 'open'
})

SendNUIMessage({
  action = 'close'
})

RegisterNUICallback('CLOSE', function(data, cb)
  print('close')
  SendNUIMessage({ action = 'close' })
  cb('ok')
end)
``` 

## 2. Enviar as informações para a NUI
```lua
RegisterNUICallback('GET_TIPS', function(data, cb)
  -- TIPOS DE CATEGORIAS
  -- tips: 'Dicas Iniciais',
  -- howToStart: 'Como começar',
  -- earnMoney: 'GANHE DINHEIRO',
  -- factions: 'Facções',
  -- commonBugs: 'Bugs comuns',
  -- updates: 'Atualizações',

  local tips = {
    {
      title = 'Dica #1',
      description = 'Como iniciar no servidor',
      image = '',
      link = 'https://google.com',
      category = 'tips', 
    },
    {
      title = 'Bug #1',
      description = 'Problema com login',
      image = '',
      link = 'https://google.com',
      category = 'commonBugs',
    }
  }
  cb(tips)
end)
``` 

## 3. Callback quando um chamado é gerado
```lua
RegisterNUICallback('CALL', function(data, cb)
  print(data.type, data.description)
  cb('ok')
end)
``` 

## 4. Enviar a identidade do usuário para a NUI
```lua
RegisterNUICallback('GET_IDENTITY', function(data, cb)
  local identity = {
    name = GetPlayerName(source),
    id = GetPlayerServerId(source),
    avatar = GetPlayerPed(source)
  }
  cb(identity)
end)
``` 


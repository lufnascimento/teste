----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare('mirtin_orgs_v2/GetOrganizationInfos', ' SELECT * FROM mirtin_orgs_info WHERE organization = @organization ')
vRP.prepare('mirtin_orgs_v2/GetOrgsPermissions', 'SELECT organization,permissions FROM mirtin_orgs_info')
vRP.prepare('mirtin_orgs_v2/GetGoalsConfig', 'SELECT organization,config_goals FROM mirtin_orgs_info')

vRP.prepare('mirtin_orgs_v2/getAlerts', 'SELECT alerts FROM mirtin_orgs_info WHERE organization = @organization')
vRP.prepare('mirtin_orgs_v2/updateAlerts', 'UPDATE mirtin_orgs_info SET alerts = @alerts WHERE organization = @organization')

vRP.prepare('mirtin_orgs_v2/UpdatePermissions', 'UPDATE mirtin_orgs_info SET permissions = @permissions WHERE organization = @organization')

vRP.prepare('mirtin_orgs_v2/updateFacInfo', 'UPDATE mirtin_orgs_info SET discord = @discord, logo = @logo WHERE organization = @organization')

vRP.prepare('mirtin_orgs_v2/GetAllUsersInfo', "SELECT * FROM mirtin_orgs_player_infos")
vRP.prepare('mirtin_orgs_v2/GetAllUserInfo', "SELECT * FROM mirtin_orgs_player_infos WHERE user_id = @user_id")
vRP.prepare('mirtin_orgs_v2/DeleteUserInfo', "DELETE FROM mirtin_orgs_player_infos WHERE user_id = @user_id")
vRP.prepare('mirtin_orgs_v2/DeleteUserInfoByGroup', "DELETE FROM mirtin_orgs_player_infos WHERE user_id = @user_id AND organization = @organization")
vRP.prepare('mirtin_orgs_v2/SetPlayerOrganization', "INSERT IGNORE INTO mirtin_orgs_player_infos(user_id, organization, joindate, lastlogin, timeplayed) VALUES(@user_id, @organization, @joindate, @lastlogin, @timeplayed)")

vRP.prepare('mirtin_orgs_v2/getInviteReward', "SELECT * FROM mirtin_orgs_invite_rewards WHERE user_id = @user_id")
vRP.prepare('mirtin_orgs_v2/setInviteReward', "INSERT IGNORE INTO mirtin_orgs_invite_rewards(user_id, organization, invite_userid) VALUES(@user_id, @organization, @invite_userid)")




vRP.prepare('mirtin_orgs_v2/CreateTable1', "CREATE TABLE IF NOT EXISTS `mirtin_orgs_goals` ( `user_id` int(11) NOT NULL, `organization` varchar(50) NOT NULL, `item` varchar(100) NOT NULL, `amount` int(11) NOT NULL DEFAULT 0, `day` int(11) NOT NULL, `month` int(11) NOT NULL, `step` int(11) DEFAULT 1, `reward_step` int(11) DEFAULT 0, UNIQUE KEY `user_id_organization_item_day` (`user_id`,`organization`,`item`,`day`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;")
vRP.prepare('mirtin_orgs_v2/CreateTable2', "CREATE TABLE IF NOT EXISTS `mirtin_orgs_info` ( `organization` varchar(50) NOT NULL, `alerts` text DEFAULT '{}', `logo` text DEFAULT NULL, `discord` varchar(150) DEFAULT '', `bank` int(11) DEFAULT 0, `bank_historic` text DEFAULT '{}', `permissions` text DEFAULT '{}', `config_goals` text DEFAULT '{}', PRIMARY KEY (`organization`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;")
vRP.prepare('mirtin_orgs_v2/CreateTable3', "CREATE TABLE IF NOT EXISTS `mirtin_orgs_logs` ( `organization` varchar(50) DEFAULT NULL, `user_id` int(11) DEFAULT NULL, `role` varchar(50) DEFAULT NULL, `name` varchar(50) DEFAULT NULL, `description` varchar(200) DEFAULT NULL, `date` varchar(50) DEFAULT NULL, `expire_at` int(11) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;")
vRP.prepare('mirtin_orgs_v2/CreateTable4', "CREATE TABLE IF NOT EXISTS `mirtin_orgs_player_infos` ( `user_id` int(11) NOT NULL, `organization` varchar(50) DEFAULT NULL, `joindate` int(11) DEFAULT 0, `lastlogin` int(11) DEFAULT 0, `timeplayed` int(11) DEFAULT 0, PRIMARY KEY (`user_id`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Organizations = {
    List = {
        --["lidermecanicacapital"] = "Mecanica Furia" @params group(string), @params groupType(string)
    },

    Permissions = {
        -- ['Hospital'] = {
        --      ["Vice-Diretor"] = { 
        --         invite = false, -- Permissao para Convidar
        --         demote = false, -- Permissao Para Demitir
        --         promove = false, -- Permissao Para Promover
        --         withdraw = false, -- Permissao Para Sacar Dinheiro
        --         deposit = false, -- Permissao Para Depositar Dinheiro
        --         message = false, -- Permissao para Escrever nas anotaçoes
        --         action = false, -- Permissao para Marcar Ação
        --         pix = false, -- Permissao para Alterar o Pix
        --     }
        -- }
    },

    Members = {
        --[1] = { @params user_id(integer)
        --  group = "lidermecanicacapital" @params group(string)
        --  groupType = "Mecanica Furia" @params groupType(string)
        --  joindate = 662251054, @params joindate(integer)
        --  lastlogin = 662251054, @params lastlogin(integer)
        --  timeplayed = 123, @params timeplayed(integer)
        --}
    },

    MembersList = {
        --["Mecanica Furia"] = { @params group(string)
        --  [1] = true @params user_id(int)
        --}
    },

    timePlayed = {
        --[1] = os.time() @params user_id(integer)
    },

    Chat = {
        -- ['Mecanica'] = {
        --     { text = 'test', author = 'Mirtin Zera', user_id = 1 }
        -- }
    },

    hasOppenedOrg = {
        -- ['Mecanica'] = { @params org(string)
        --     [199] = 15 @params user_id(integer), @params source(integer)
        -- }
    },

    payDayOrg = {
         -- ['Mecanica'] = { time = 32342432, amount = 5000 }
    },

    goalsConfig = {
        -- ['Mecanica'] = { @params org(string)
        --     info = {
        --         defaultReward = 1000,
        --         itens = {
        --             ['pecadearma'] = 500,
        --         }
        --     }
        -- }
    }
}

BANK = {
    cooldown = {}
} 

local WARNS = {}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Organizations:AddUserGroup(user_id, v)
    self.Members[user_id] = v
    
    if not self.MembersList[v.groupType] then
        self.MembersList[v.groupType] = {}
    end

    self.MembersList[v.groupType][user_id] = true
end

function Organizations:RemUserGroup(user_id, group)
    local groupType = self.Members[user_id] and self.Members[user_id].groupType or false
    if groupType and self.MembersList[groupType] then
        self.MembersList[groupType][user_id] = nil
    end

    if group then
        vRP.execute('mirtin_orgs_v2/DeleteUserInfoByGroup', { user_id = user_id, organization = group })
    else
        vRP.execute('mirtin_orgs_v2/DeleteUserInfo', { user_id = user_id })
    end

    self.Members[user_id] = nil
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECIVE HANDLERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('vRP:playerJoinGroup', function(user_id,group)
    Wait(200)
    if Organizations.List[group] then
        Organizations:AddUserGroup(user_id, {
            group = group,
            groupType = Organizations.List[group]
        })
    end
end)

AddEventHandler('vRP:playerLeaveGroup', function(user_id,group)
    if Organizations.List[group] then
        Organizations:RemUserGroup(user_id,group)
    end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local nameOrg = {} 
RegisterCommand(Config.Main.cmd, function(source,args)
    local user_id = getUserId(source)
    if not user_id then return end

    local user = Organizations.Members[user_id]
    if not user then
        return TriggerClientEvent('Notify',source,'negado','Você não faz parte de nenhuma organização.',5000)
    end

    if BANK.cooldown[user_id] and (BANK.cooldown[user_id] - os.time()) > 0 then
        TriggerClientEvent('Notify',source,'negado','Você precisa esperar <b>'..(BANK.cooldown[user_id] - os.time())..'</b> segundos para usar o comando novamente.',5000)
        return
    end
    BANK.cooldown[user_id] = (os.time() + 5)

    if args[1] then
        if not Config.Groups[args[1]] then
            TriggerClientEvent('Notify',source,'negado','<b>Organização</b> não encontrada.',5000)
            return
        end
        if not Organizations.MembersList[args[1]] then
            TriggerClientEvent('Notify',source,'negado','Você não faz parte desta organização.',5000)
            return
        end
        nameOrg[source] = args[1]
    end

    vTunnel._OpenPainel(source)
end)

RegisterCommand(Config.Main.cmdAdm, function(source,args)
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    if not vRP.hasPermission(user_id, "admin.permissao") then return end

    local orgName = args[1]
    if not orgName or orgName == "" then
        return
    end

    if not Config.Groups[orgName] then
        return
    end

    local bestGroup = ""
    for group,v in pairs(Config.Groups[orgName].List) do
        if v.tier == 1 then
            bestGroup = group
        end
    end
    vRP.addUserGroup(user_id, bestGroup)

    Wait(1000)
    vTunnel._OpenPainel(source)
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.getFaction()
    local source = source
    local user_id = getUserId(source)
    local orgName = nil
    if not user_id then return end
    
    local user = Organizations.Members[user_id]
    if not user then return end

    if nameOrg[source] then
        orgName = nameOrg[source]
        user.groupType = orgName
    end

    local identity = getUserIdentity(user_id)
    if not identity then return end
    local query = vRP.query('mirtin_orgs_v2/GetOrganizationInfos', { organization = user.groupType })
    if #query == 0 then print("Houve um problema ao encontrar essa Organizacao no banco de dados") return end

    local leaderGroup,listRoles = '', {}
    for group, v in pairs(Config.Groups[user.groupType].List) do
        if v.tier == 1 then
            leaderGroup = group
        else
            listRoles[#listRoles + 1] = {
                prefix = v.prefix,
                group = group,
            }
        end
    end

    local leader = 'Ninguem'
    local totalMember,onlineMembers = 0,0
    
    if not Config.Groups[user.groupType] then
        TriggerClientEvent('Notify',source,'negado','<b>Organização</b> não encontrada.',5000)
        return
    end
    if Organizations.MembersList[user.groupType] then
        for ply_id in pairs(Organizations.MembersList[user.groupType]) do
            if vRP.hasPermission(ply_id,Organizations.Members[ply_id].group) then
                if not Organizations.Members[ply_id] then goto next_player end
                if Organizations.Members[ply_id].groupType ~= user.groupType then goto next_player end

                if not Organizations.timePlayed[ply_id] then
                    Organizations.timePlayed[ply_id] = os.time()
                end

                totalMember = (totalMember + 1)
                local plySrc = getUserSource(ply_id)
                if plySrc then
                    onlineMembers = (onlineMembers + 1)
                end

                if Organizations.Members[ply_id].group == leaderGroup then
                    if not vRP.hasPermission(ply_id,'suporte.permissao') then 
                        local identity = getUserIdentity(ply_id)
                        if not identity then goto next_player end
                        
                        leader = ("%s %s #%d"):format(identity.name,identity.firstname,ply_id)
                    end
                end
            end

            :: next_player ::
        end
    end

    if not Organizations.hasOppenedOrg[user.groupType] then Organizations.hasOppenedOrg[user.groupType] = {} end
    Organizations.hasOppenedOrg[user.groupType][user_id] = source
    return {
        user_id = user_id,
        logo = query[1] and (query[1].logo) or Config.Main.serverLogo,
        serverIcon = Config.Main.serverLogo,
        store = Config.Main.storeUrl,
        orgName = user.groupType,
        orgBalance = query[1] and (query[1].bank or ""),
        name = ('%s %s'):format(identity.name, identity.firstname),
        playerBalance = getBankMoney(user_id),
        roles = listRoles,

        nextPayment = Organizations.payDayOrg[user.groupType] and (Organizations.payDayOrg[user.groupType].time - os.time()) or false,

        goalReward = Organizations.goalsConfig[user.groupType] and Organizations.goalsConfig[user.groupType].info.defaultReward or 1000,
        discord = query[1] and (query[1].discord or ""),
        leader = leader,
        members = totalMember,
        membersOnline = onlineMembers,
        warnings = json.decode(query[1].alerts) or {},
        permissions = Organizations.Permissions[user.groupType] and Organizations.Permissions[user.groupType][user.group] or {}
    }
end

function RegisterTunnel.addWarn(message)
    local source = source
    local user_id = getUserId(source)
    if not user_id then return end

    local user = Organizations.Members[user_id]
    if not user then return end

    local identity = getUserIdentity(user_id)
    if not identity then return end

    if message:len() < 2 then return end

    local historic = WARNS:addWarning(user.groupType, {
        author = ('%s %s'):format(identity.name, identity.firstname),
        author_id = user_id,
        message = message,
        author_avatar = '',
        date = os.date("%d/%m/%Y %X"),
    })

    if Organizations.hasOppenedOrg[user.groupType] then
        for ply_id, ply_src in pairs(Organizations.hasOppenedOrg[user.groupType]) do
            local ped = GetPlayerPed(ply_src)
            if ped == 0 then goto next_player end

            TriggerClientEvent('updateWarnings', ply_src, historic)

            :: next_player ::
        end
    end
    
    return true
end

function RegisterTunnel.sendMessage(message)
    local source = source
    local user_id = getUserId(source)
    if not user_id then return end

    local identity = getUserIdentity(user_id)
    if not identity then return end

    local user = Organizations.Members[user_id]
    if not user then return end

    if not Organizations.Chat[user.groupType] then Organizations.Chat[user.groupType] = {} end

    local gen_id = (#Organizations.Chat[user.groupType] + 1)
    Organizations.Chat[user.groupType][gen_id] = {
        message = message,
        author = ('%s %s'):format(identity.name,identity.firstname),
        author_id = user_id,
    }

    for ply_id,ply_src in pairs(Organizations.hasOppenedOrg[user.groupType]) do
        async(function()
            local ped = GetPlayerPed(ply_src)
            if not ped then return end

            TriggerClientEvent("updateChatMessage", ply_src, Organizations.Chat[user.groupType][gen_id]) 
        end)
    end
end

function RegisterTunnel.getChatMessages()
    local source = source
    local user_id = getUserId(source)
    if not user_id then return end

    local user = Organizations.Members[user_id]
    if not user then return end

    local t = {}
    if Organizations.Chat[user.groupType] then
        for id in pairs(Organizations.Chat[user.groupType]) do
            local message = Organizations.Chat[user.groupType][id]

            t[#t + 1] = {
                message = message.message,
                author = message.author,
                author_id = message.author_id
            }
        end
    end

    return t
end

function RegisterTunnel.close()
    local source = source
    local user_id = getUserId(source)
    if not user_id then return end

    local user = Organizations.Members[user_id]
    if not user then return end

    if Organizations.hasOppenedOrg[user.groupType] and Organizations.hasOppenedOrg[user.groupType][user_id] then
        Organizations.hasOppenedOrg[user.groupType][user_id] = nil
        nameOrg[source] = nil
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WARNS:addWarning(organization, data)
    local query = vRP.query('mirtin_orgs_v2/getAlerts', { organization = organization })
    if #query == 0 then return end

    local historic = json.decode(query[1].alerts) or {}
    if #historic > 10 then
        table.remove(historic,1)
    end
    historic[#historic + 1] = data

    vRP.execute('mirtin_orgs_v2/updateAlerts', { organization = organization, alerts = json.encode(historic) })

    return historic
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CACHE FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Organizations:FormatConfig()
    local first = {}
    for orgName in pairs(Config.Groups) do
        for Group in pairs(Config.Groups[orgName].List) do
            self.List[Group] = orgName

            if (Config.Main.createAutomaticOrganizations) then
                if not first[orgName] then
                    first[orgName] = true
                    exports["oxmysql"]:executeSync([[INSERT IGNORE INTO mirtin_orgs_info(organization) VALUES(?)]], { orgName })
                end
            end
        end
    end 

    self:GenerateCache()
end

function Organizations:GenerateCache()
    local time = os.time()
    print(('^1[%s] ^0Iniciando Cache dos jogadores.'):format(GetCurrentResourceName():upper()))

    local query = vRP.query('mirtin_orgs_v2/GetUsersGroup') 
    local FormatUser = {}
    if not MIRTIN_MULTICHAR then
        for i = 1, #query do
            local ply = query[i]
            local plyData = json.decode(ply.dvalue) or {}

            FormatUser[ply.user_id] = (plyData.groups or {})
        end
    else
        for i = 1, #query do
            local ply = query[i]
            local plyData = json.decode(ply.groups) or {}

            FormatUser[ply.user_id] = plyData
        end
    end

    for user_id, groups in pairs(FormatUser) do
        for groupName in pairs(groups) do
            if self.List[groupName] then
                self:AddUserGroup(user_id, {
                    group = groupName,
                    groupType = self.List[groupName]
                })
            end
        end
    end

    print(('^2[%s] ^0Cache dos jogadores gerados com sucesso tempo %s segundo(s).'):format(GetCurrentResourceName():upper(), os.time() - time))
    FormatUser = {}

    self:VerifyPlayers()
    self:GenerateCachePermissions()
    self:GenerateCacheGoals()
end

function Organizations:GenerateCacheInfos()
    local query = vRP.query('mirtin_orgs_v2/GetAllUsersInfo', {})
    for i = 1, #query do
        local ply = query[i]
        if self.Members[ply.user_id] then
            self.Members[ply.user_id].joindate = ply.joindate
            self.Members[ply.user_id].lastlogin = ply.lastlogin
            self.Members[ply.user_id].timeplayed = ply.timeplayed
        else
            -- REMOVENDO INFORMACOES CASO NÃO FOR MAIS DA ORGANIZAÇÃO
            vRP.execute('mirtin_orgs_v2/DeleteUserInfo', { user_id = ply.user_id })
        end
    end
end

function Organizations:VerifyPlayers()
    local users = getUsers()
    for user_id,source in pairs(users) do
        local plyGroups = getUserMyGroups(user_id) or getUserGroups(user_id)
        for group in pairs(plyGroups) do
            if self.Members[user_id] then
                if self.List[self.Members[user_id].group] then
                    if not hasGroup(user_id, self.Members[user_id].group) then
                        self:RemUserGroup(user_id,self.Members[user_id].group)
                    end
                end
            end
            
            if self.List[group] then
                self:AddUserGroup(user_id, {
                    group = group,
                    groupType = self.List[group]
                })

                Organizations.timePlayed[user_id] = os.time()
            end
        end
    end

    self:GenerateCacheInfos()
end

function Organizations:GenerateCachePermissions()
    local query = vRP.query('mirtin_orgs_v2/GetOrgsPermissions', {})
    for i = 1, #query do
        local v = query[i]
        if not v then goto next_org end

        local insert_permission = {}
        if Config.Groups[v.organization] then
            for Group in pairs(Config.Groups[v.organization].List) do
                if v.permissions == "{}" then
                    if not self.Permissions[v.organization] then self.Permissions[v.organization] = {} end
                    if not self.Permissions[v.organization][Group] then self.Permissions[v.organization][Group] = {} end
                    for permission in pairs(Config.defaultPermissions) do
                        if Config.Groups[v.organization].List[Group].tier == 1 then
                            self.Permissions[v.organization][Group]['leader'] = true
                            self.Permissions[v.organization][Group][permission] = true
                        else
                            self.Permissions[v.organization][Group][permission] = false
                        end
                    end 

                    insert_permission[v.organization] = true
                else
                    self.Permissions[v.organization] = json.decode(v.permissions) or {}
                end
            end

            if insert_permission[v.organization] then
                vRP.execute('mirtin_orgs_v2/UpdatePermissions', { organization = v.organization, permissions = json.encode(self.Permissions[v.organization]) })
            end
        end

        :: next_org ::
    end

    insert_permission = {}
end






exports('addOrganizationPayday', function(...)
    return Organizations:addPayday(...)
end)

function Organizations:GenerateCacheGoals()
    local query = vRP.query('mirtin_orgs_v2/GetGoalsConfig', {})
    for i = 1, #query do
        local v = query[i]
        if not v then goto next_org end
        
        
        local insert_permission = {}
        if Config.Groups[v.organization] and Config.Groups[v.organization].Config.Goals then
            local data = json.decode(query[i].config_goals) or {}
            if not data.info then
                data.info = { itens = {} }
        
                for item, maxAmount in pairs(Config.Groups[v.organization].Config.Goals.itens) do
                    if not data.info.itens[item] then
                        data.info.itens[item] = maxAmount
                    end
                end
            else
                for item in pairs(data.info.itens) do
                    if not Config.Groups[v.organization].Config.Goals.itens[item] then
                        data.info.itens[item] = nil
                    end
                end

                for item, maxAmount in pairs(Config.Groups[v.organization].Config.Goals.itens) do
                    if not data.info[item] then
                        data.info.itens[item] = maxAmount
                    end
                end
            end
            
            self.goalsConfig[v.organization] = data
        end

        :: next_org ::
    end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HANDLERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("mirtin_orgs_v2:playerSpawn", function(user_id, source)
    if Organizations.Members[user_id] then
        Organizations.Members[user_id].lastlogin = os.time()
        Organizations.timePlayed[user_id] = os.time()

        exports["oxmysql"]:execute([[UPDATE mirtin_orgs_player_infos SET lastlogin = ? WHERE user_id = ?]], { Organizations.Members[user_id].lastlogin, user_id })
    end
end)

AddEventHandler("mirtin_orgs_v2:playerLeave",function(user_id) 
    if Organizations.timePlayed[user_id] then
        if Organizations.Members[user_id] and Organizations.Members[user_id].timeplayed then
            Organizations.Members[user_id].timeplayed = Organizations.Members[user_id].timeplayed + (os.time() - Organizations.timePlayed[user_id])

            exports["oxmysql"]:execute([[UPDATE mirtin_orgs_player_infos SET timeplayed = ? WHERE user_id = ?]], { Organizations.Members[user_id].timeplayed, user_id })
        end
    end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREADS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    vRP.execute("mirtin_orgs_v2/CreateTable1", { })
    vRP.execute("mirtin_orgs_v2/CreateTable2", { })
    vRP.execute("mirtin_orgs_v2/CreateTable3", { })
    vRP.execute("mirtin_orgs_v2/CreateTable4", { })

    Wait(10)
    Organizations:FormatConfig()
end)
Tunnel = module('vrp', 'lib/Tunnel')
Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface('vRP')

local server = IsDuplicityVersion()
if server then
    lRoubos = {} -- vrp server => client lRoubos
    vRPC = Tunnel.getInterface('vRP')
    Tunnel.bindInterface('lotus_roubos', lRoubos)
    vCLIENT = Tunnel.getInterface('lotus_roubos')
else
    lRoubos = {} -- vrp client => server lRoubos
    Tunnel.bindInterface('lotus_roubos', lRoubos)
    vSERVER = Tunnel.getInterface('lotus_roubos')
end

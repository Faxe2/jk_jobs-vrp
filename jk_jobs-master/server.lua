local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "something")

RegisterServerEvent('esx_jk_jobs:setJobt')
AddEventHandler('esx_jk_jobs:setJobt', function(job)
	local _source = source
	local user = vRP.getUserId({_source})
	vRP.addUserGroup({user, "taxi"})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tilykke med jobbet!'})
end)

RegisterServerEvent('esx_jk_jobs:setJobm')
AddEventHandler('esx_jk_jobs:setJobm', function(job)
	local _source = source
	local user = vRP.getUserId({_source})
	vRP.addUserGroup({user, "mechanic"})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tilykke med jobbet!'})
end)

RegisterServerEvent('esx_jk_jobs:setJobp')
AddEventHandler('esx_jk_jobs:setJobp', function(job)
	local _source = source
	local user = vRP.getUserId({_source})
	vRP.addUserGroup({user, "fisherman"})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tilykke med jobbet!'})
end)

RegisterServerEvent('esx_jk_jobs:setJobn')
AddEventHandler('esx_jk_jobs:setJobn', function(job)
	local _source = source
	local user = vRP.getUserId({_source})
	vRP.addUserGroup({user, "miner"})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tilykke med jobbet!'})
end)

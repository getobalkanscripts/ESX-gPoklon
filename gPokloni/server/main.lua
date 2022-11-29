ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('poklon', function(source) --## Ime itema mozete promjeniti ako hocete ma da ne bih prporucio
  local Player = ESX.GetPlayerFromId(source)
  TriggerClientEvent('paketti:anna', source)
  Player.removeInventoryItem('poklon', 1) --## Ime itema mozete promjeniti ako hocete ma da ne bih prporucio
  
end)

RegisterServerEvent('paketti:annalahja')
AddEventHandler('paketti:annalahja', function()
  local xPlayer = ESX.GetPlayerFromId(source)
  local lahja = math.random(1,2048) 
	
	if lahja >= 1 and lahja <= 60 then
		xPlayer.addInventoryItem('money', 150000) --## Ovdje mjenate nagrade
	elseif lahja >= 61 and lahja <=100 then
		xPlayer.addInventoryItem('money', 15000)
	elseif lahja >= 101 and lahja <= 130 then
		xPlayer.addInventoryItem('radio', 1)
	elseif lahja >= 900 and lahja <= 901 then
		xPlayer.addInventoryItem('WEAPON_PISTOL', 1)
	elseif lahja >= 1500 and lahja <= 1501 then
		xPlayer.addInventoryItem('WEAPON_BAT', 1)
	elseif lahja >= 1501 and lahja <= 1601 then
		xPlayer.addInventoryItem('fixkit', 3)
	elseif lahja >= 1601 and lahja <= 1801 then
		xPlayer.addInventoryItem('rope', 1)
	elseif lahja >= 1801 and lahja <= 1901 then
		xPlayer.addInventoryItem('bandage', 10)
	elseif lahja >= 1901 and lahja <= 2000 then
		xPlayer.addInventoryItem('bandage', 35)
	elseif lahja >= 2000 and lahja <= 2049 then
		xPlayer.addInventoryItem('burger', 10) 
	else 
		xPlayer.addInventoryItem('water', 10)
	end
end)

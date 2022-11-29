ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent("paketti:anna")
AddEventHandler("paketti:anna", function()
  ESX.UI.Menu.CloseAll()
  
  Citizen.Wait(100)
  pakettinotif()
  annaLahja()
end)

function annaLahja()
  TriggerServerEvent('paketti:annalahja')
end


function pakettinotif()
  exports.rprogress:Start('Otvaras Poklon', 3000);
  exports['mythic_notify']:DoHudText('success', 'Otvorio si poklon')
end


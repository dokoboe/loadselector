local loaded = false 
local charid 

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charids)
    charid = charids 
    loaded = true
end)


RegisterNetEvent("loadsaver:selectCheck")
AddEventHandler("loadsaver:selectCheck",function()
    while not loaded do 
        Wait(0)
    end
    TriggerEvent("loadsaver:selected",loaded,charid)
end)

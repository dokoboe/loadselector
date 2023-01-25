# loadselector
Simple dirty load selector &lt;3


All you do is, on your client side, do the following.

local loaded 


RegisterNetEvent("loadsaver:selected",function(l,charid)
    loaded = true
    --DO ALL OF THE STUFF YOU WOULD NORMALLY TRIGGER VIA vorp:SelectedCharacter HERE 
end)




if you run loops, dont be a dummy and run that stuff from the moment you launch, instead do 

Citizen.CreateThread(function)  
    TriggerEvent("loadsaver:selectCheck")
    while loaded == nil do 
        Wait(0)        
    end
    while true do Wait(0)
        do all your loopy goodness
    end
end)


Why? so you can restart scripts without needing to relog.  

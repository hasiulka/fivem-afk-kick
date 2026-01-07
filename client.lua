local time = 0
local warned = false

CreateThread(function()
    while true do
        Wait(1000)

        local ped = PlayerPedId()
        if not DoesEntityExist(ped) then goto continue end

        local isMoving =
            IsPedWalking(ped) or
            IsPedRunning(ped) or
            IsPedInAnyVehicle(ped) or
            IsPedJumping(ped)

        if isMoving then
            time = 0
            warned = false
        else
            time = time + 1
        end

        if time == Config.WarningTime * 60 and not warned then
            warned = true
            TriggerEvent('chat:addMessage', {
                args = { '^1AFK', 'You will be kicked soon for being AFK.' }
            })
        end

        if time >= Config.AFKTime * 60 then
            TriggerServerEvent('afk:kick')
        end

        ::continue::
    end
end)

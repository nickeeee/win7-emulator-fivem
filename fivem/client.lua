-- Simple integration with the Windows 7 emulator UI

RegisterCommand('openwin7', function()
    -- Give focus to the NUI and instruct it to open
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'open' })
end, false)

-- Callback for closing the UI from the NUI side
RegisterNUICallback('close', function(_, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

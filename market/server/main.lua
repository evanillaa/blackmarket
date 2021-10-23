local QBCore = exports['qb-core']:GetCoreObject()

--- !(っ◕‿◕)っ Buy Items! (Only edit if you know what you are doing!)

RegisterNetEvent("market:server:buyItems")
AddEventHandler("market:server:buyItems", function(products)
    local src = source
    local data = Config.Products[products]
    local Player = QBCore.Functions.GetPlayer(source)
    local moneyPlayer = tonumber(Player.PlayerData.money.crypto)
    if moneyPlayer > data.price then
        Player.Functions.RemoveMoney("crypto", tonumber(data.price), "black-market")
        if Player.Functions.GetItemByName(products) then
            TriggerClientEvent('QBCore:Notify', source, products.." has been brought!", "success")
        else
            Player.Functions.AddItem(products, 1, false)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[products], "add", 1) 
            TriggerClientEvent('QBCore:Notify', source, " You Spent " ..data.price.. " Bits  ", "success")
        end
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't have enough Crypto!", "error")
    end
end)
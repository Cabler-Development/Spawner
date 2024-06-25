local spawnPos = vector3(339.99, 3568.54, 33.45)

AddEventHandler('onClientGameTypeStart', function()
    -- Callback function for manual spawn
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
        })
    end)

    -- Disable auto spawning
    exports.spawnmanager:setAutoSpawn(false)
    
    -- Optional: Manually trigger the spawn when the game starts
    exports.spawnmanager:spawnPlayer({
        x = spawnPos.x,
        y = spawnPos.y,
        z = spawnPos.z,
    })
end)

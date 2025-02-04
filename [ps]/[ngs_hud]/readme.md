`PlayerData.metadata['gps'] = PlayerData.metadata['gps']  or false` add this line to qb-core/server/player.lua
`PlayerData.metadata = PlayerData.metadata or {}` <- below this

add item to core
```lua
["gpsdevice"] = {
    ["name"] = "gpsdevice",
    ["label"] = "GPS Device",
    ["weight"] = 100,
    ["type"] = "item",
    ["image"] = "gps.png",
    ["unique"] = true,
    ["useable"] = true,
    ["shouldClose"] = false,
    ["combinable"] = nil,
    ["description"] = "A Watch to Check Map?"
}
```
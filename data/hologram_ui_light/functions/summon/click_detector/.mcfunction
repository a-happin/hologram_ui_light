#> hologram_ui_light:summon/click_detector/
#@within function hologram_ui_light:create/impl

## 召喚した瞬間に一瞬見えてしまうので奈落に召喚→teleport
summon villager ~ -200 ~ {ActiveEffects: [{Id: 14b, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}], DeathTime: 19s, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Offers: {}, Silent: true, VillagerData: {profession: "nitwit", level: 2147483647, type: "plains"}, Inventory: [{id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}, {id: "debug_stick", Count: 1b}], Team: "hologram_ui_light.click_detector"}
teleport @e[type=villager,team=hologram_ui_light.click_detector,y=-200,distance=0] ~ ~ ~

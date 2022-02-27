#> hologram_ui:summon/click_detector/
#@within function hologram_ui:setup/impl

#>
#@within * hologram_ui:**
team add hologram_ui.click_detector
team modify hologram_ui.click_detector collisionRule never

## 召喚した瞬間に一瞬見えてしまうので奈落に召喚→teleport
summon wandering_trader ~ -200 ~ {ActiveEffects: [{Id: 14b, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}], DeathTime: 19s, Invulnerable: 1b, NoAI: 1b, NoGravity: 1b, Offers: {}, Silent: true, Team: "hologram_ui.click_detector"}
teleport @e[type=wandering_trader,team=hologram_ui.click_detector] ~ ~ ~

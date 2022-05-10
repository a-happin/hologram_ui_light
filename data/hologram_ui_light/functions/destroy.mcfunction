#> hologram_ui_light:destroy
#@within tag/function hologram_ui_light:destroy

advancement revoke @s only hologram_ui_light:operator
teleport @e[type=villager,team=hologram_ui_light.click_detector,distance=..3] ~ -200 ~
kill @e[tag=hologram_ui_light.hologram,distance=..3]

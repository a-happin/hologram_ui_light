#> hologram_ui:destroy
#@within tag/function hologram_ui:destroy

advancement revoke @s only hologram_ui:operator
teleport @e[type=wandering_trader,team=hologram_ui.click_detector,distance=..3] ~ -200 ~
kill @e[tag=hologram_ui.hologram,distance=..3]

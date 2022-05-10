#> hologram_ui_light:operator/tick/
#@within function hologram_ui_light:handler/tick

execute positioned as @e[type=marker,tag=hologram_ui_light.basepoint,distance=..1] run function hologram_ui_light:operator/tick/impl

## 近くにclick_detectorが居なかったらoperatorを剥奪
execute positioned as @s unless entity @e[type=villager,team=hologram_ui_light.click_detector,distance=0] run advancement revoke @s only hologram_ui_light:operator

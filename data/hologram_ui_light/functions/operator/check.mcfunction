#> hologram_ui_light:operator/check
#@within function hologram_ui_light:tick

execute positioned as @e[type=marker,tag=hologram_ui_light.basepoint,distance=..1] run function hologram_ui_light:operator/tick

## スニークしたら強制解除
execute if entity @s[predicate=hologram_ui_light:is_sneaking] run function #hologram_ui_light:destroy

## 近くにclick_detectorが居なかったらoperatorを剥奪
execute positioned as @s[advancements={hologram_ui_light:operator=true}] unless entity @e[type=wandering_trader,team=hologram_ui_light.click_detector,distance=0] run advancement revoke @s only hologram_ui_light:operator

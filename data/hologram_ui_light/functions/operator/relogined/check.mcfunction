#> hologram_ui_light:operator/relogined/check
#@within function hologram_ui_light:operator/relogined/

tag @s add hologram_ui_light.this
  execute if entity @a[advancements={hologram_ui_light:operator=true},tag=!hologram_ui_light.this,distance=..1] run advancement revoke @s only hologram_ui_light:operator
tag @s remove hologram_ui_light.this

execute unless entity @e[type=wandering_trader,team=hologram_ui_light.click_detector,distance=0] run advancement revoke @s only hologram_ui_light:operator

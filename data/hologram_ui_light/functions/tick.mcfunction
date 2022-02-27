#> hologram_ui_light:tick
#@within tag/function tick

execute as @a[advancements={hologram_ui_light:operator=true}] at @s positioned as @e[type=marker,tag=hologram_ui_light.basepoint,distance=..1] run function hologram_ui_light:operator/tick

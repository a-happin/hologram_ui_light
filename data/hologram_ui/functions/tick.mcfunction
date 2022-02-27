#> hologram_ui:tick
#@within tag/function tick

execute as @a[advancements={hologram_ui:operator=true}] at @s positioned as @e[type=marker,tag=hologram_ui.basepoint,distance=..1] run function hologram_ui:operator/tick

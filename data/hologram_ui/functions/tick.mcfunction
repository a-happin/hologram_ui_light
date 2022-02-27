#> hologram_ui:tick
#@within tag/function tick

execute as @a[advancements={hologram_ui:operator=true}] at @s positioned as @e[type=marker,tag=hologram_ui.basepoint] run function hologram_ui:operator/tick
# execute as @e[type=area_effect_cloud,tag=hologram_ui.hologram] at @s positioned ~ ~0.9 ~ run particle composter

#> hologram_ui:summon/hologram/adjust/summon
#@within function hologram_ui:summon/hologram/adjust/y

summon area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: 0, WaitTime: 2147483647, Particle: "block air", Tags: ["hologram_ui.hologram", "hologram_ui.init"], CustomNameVisible: 1b}
execute as @e[type=area_effect_cloud,tag=hologram_ui.init,distance=..0.01] run function hologram_ui:summon/hologram/impl

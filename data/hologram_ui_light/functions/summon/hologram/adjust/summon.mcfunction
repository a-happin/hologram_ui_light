#> hologram_ui_light:summon/hologram/adjust/summon
#@within function hologram_ui_light:summon/hologram/adjust/y

summon area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: 0, WaitTime: 2147483647, Particle: "block air", Tags: ["hologram_ui_light.hologram", "hologram_ui_light.init"], CustomNameVisible: 1b}
execute as @e[type=area_effect_cloud,tag=hologram_ui_light.init,distance=..0.01] run function hologram_ui_light:summon/hologram/impl

execute if data storage : _[-1].hologram_ui_light[-1].Item positioned ^ ^0.4 ^0.3 run function hologram_ui_light:summon/hologram_item/

#> hologram_ui_light:summon/hologram_item/
#@within function hologram_ui_light:summon/hologram/adjust/summon

summon item ~ ~ ~ {Age: -32768s, PickupDelay: -32768s, NoGravity: 1b, Item: {id: "ice", Count: 1b}, Tags: ["hologram_ui_light.hologram", "hologram_ui_light.init"]}
execute as @e[type=item,tag=hologram_ui_light.init,distance=0] at @s run function hologram_ui_light:summon/hologram_item/impl

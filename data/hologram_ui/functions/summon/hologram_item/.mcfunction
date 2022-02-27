#> hologram_ui:summon/hologram_item/
#@within function hologram_ui:summon/hologram/adjust/summon

#>
#@within function hologram_ui:summon/hologram_item/*
#declare tag hologram_ui.hologram_item
summon item ~ ~ ~ {Age: -32768s, PickupDelay: -32768s, Item: {id: "ice", Count: 1b}, NoGravity: 1b, Tags: ["hologram_ui.hologram", "hologram_ui.init"]}
execute as @e[type=item,tag=hologram_ui.init,distance=0] at @s run function hologram_ui:summon/hologram_item/impl

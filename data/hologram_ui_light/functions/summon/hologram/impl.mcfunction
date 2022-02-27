#> hologram_ui_light:summon/hologram/impl
#@within function hologram_ui_light:summon/hologram/adjust/summon

data modify entity @s CustomName set from storage : _[-1].hologram_ui_light[-1].text
execute store result score @s hologram_ui_light.id run data get storage : _[-1].hologram_ui_light[-1].id

## idのあるホログラムを選択可能にする
execute if data storage : _[-1].hologram_ui_light[-1].id run tag @s add hologram_ui_light.selectable

## 初期化用タグの消去
tag @s remove hologram_ui_light.init

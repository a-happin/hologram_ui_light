#> hologram_ui:summon/hologram/impl
#@within function hologram_ui:summon/hologram/adjust/summon

data modify entity @s CustomName set from storage : _[-1].hologram_ui[-1].text
execute store result score @s hologram_ui.id run data get storage : _[-1].hologram_ui[-1].id
execute if data storage : _[-1].hologram_ui[-1].text if data storage : _[-1].hologram_ui[-1].id run tag @s add hologram_ui.selectable

## 初期化用タグの消去
tag @s remove hologram_ui.init

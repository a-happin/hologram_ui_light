#> hologram_ui_light:summon/hologram_item/impl
#@within function hologram_ui_light:summon/hologram_item/

# data modify storage : _[-1].hologram_ui_light[-1].Item.Count set value 1b
data modify entity @s Item merge from storage : _[-1].hologram_ui_light[-1].Item

## 初期化用タグの消去
tag @s remove hologram_ui_light.init

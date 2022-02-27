#> hologram_ui:summon/hologram_item/impl
#@within function hologram_ui:summon/hologram_item/

# data modify storage : _[-1].hologram_ui[-1].Item.Count set value 1b
data modify entity @s Item merge from storage : _[-1].hologram_ui[-1].Item
tag @s remove hologram_ui.init

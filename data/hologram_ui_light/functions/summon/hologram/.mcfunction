#> hologram_ui_light:summon/hologram/
#@within
#  function hologram_ui_light:load_menu/
#  function hologram_ui_light:summon/hologram/

## 位置調整用変数の初期化
execute store result score $y _hologram_ui_light store result score $yaw _hologram_ui_light run scoreboard players remove $index _hologram_ui_light 1
scoreboard players operation $yaw _hologram_ui_light %= #9 _hologram_ui_light

## 位置調整してsummon
execute if data storage : _[-1].menu[-1].text rotated ~-60 0 positioned ~ ~2 ~ run function hologram_ui_light:summon/hologram/adjust/yaw

data remove storage : _[-1].menu[-1]
execute if data storage : _[-1].menu[-1] run function hologram_ui_light:summon/hologram/

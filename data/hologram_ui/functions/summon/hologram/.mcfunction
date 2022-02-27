#> hologram_ui:summon/hologram/
#@within
#  function hologram_ui:load_menu/
#  function hologram_ui:summon/hologram/

## 位置調整用変数の初期化
execute store result score $y _hologram_ui store result score $yaw _hologram_ui run scoreboard players remove $index _hologram_ui 1
scoreboard players operation $yaw _hologram_ui %= #9 _hologram_ui

## 位置調整してsummon
execute if data storage : _[-1].hologram_ui[-1].text rotated ~-60 ~ positioned ~ ~2 ~ run function hologram_ui:summon/hologram/adjust/yaw

data remove storage : _[-1].hologram_ui[-1]
execute if data storage : _[-1].hologram_ui[-1] run function hologram_ui:summon/hologram/

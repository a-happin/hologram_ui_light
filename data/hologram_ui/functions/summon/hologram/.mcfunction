#> hologram_ui:summon/hologram/
#@within
#  function hologram_ui:load_menu/
#  function hologram_ui:summon/hologram/

## 位置調整用変数の初期化
execute store result score $y _hologram_ui store result score $yaw _hologram_ui run scoreboard players remove $index _hologram_ui 1
scoreboard players operation $yaw _hologram_ui %= #5 _hologram_ui
scoreboard players remove $y _hologram_ui 5

## 位置調整
execute if score $mod5 _hologram_ui matches 0 rotated ~-60 ~ run function hologram_ui:summon/hologram/adjust/yaw
execute if score $mod5 _hologram_ui matches 4 rotated ~-45 ~ run function hologram_ui:summon/hologram/adjust/yaw
execute if score $mod5 _hologram_ui matches 3 rotated ~-30 ~ run function hologram_ui:summon/hologram/adjust/yaw
execute if score $mod5 _hologram_ui matches 2 rotated ~-15 ~ run function hologram_ui:summon/hologram/adjust/yaw
execute if score $mod5 _hologram_ui matches 1 run function hologram_ui:summon/hologram/adjust/yaw

# o o o o o
#  o o o o
#   o o o
#    o o
#     o
# mod5 == 1 | 0 => ^ ^ ^1.5
# mod5 == 2 | 1, 0 => ^-0.5 ^ ^1.5, ^0.5 ^ ^1.5
# mod5 == 3 | 2, 1, 0 => ^-1 ^ ^1.5, ^ ^ ^1.5, ^1 ^ ^1.5
# mod5 == 4 | 3, 2, 1, 0 => ^-1.5 ^ ^1.5, ^-0.5 ^ ^1.5, ^0.5 ^ ^1.5, ^1.5 ^ ^1.5
# mod5 == 0 | 4, 3, 2, 1, 0 => ^-2 ^ ^1.5, ^-1 ^ ^1.5, ^ ^ ^1.5, ^1 ^ ^1.5, ^2 ^ ^1.5
# facing ^2 ^ ^1.5 == rotated ~-53.130363 ~
# facing ^1.5 ^ ^1.5 == rotated ~-45 ~
# facing ^1 ^ ^1.5 == rotated ~-33.69 ~
# facing ^0.5 ^ ^1.5 == rotated ~-18.434975 ~
# facing ^ ^ ^1.5 == rotated ~ ~
# 15°間隔のほうがいいかも？

## 最後の行が終わったらmod5を0にする
execute if score $index _hologram_ui <= $s _hologram_ui run scoreboard players set $mod5 _hologram_ui 0

data remove storage : _[-1].hologram_ui[-1]
execute if data storage : _[-1].hologram_ui[-1] run function hologram_ui:summon/hologram/

#> hologram_ui_light:summon/hologram/adjust/yaw
#@within
#  function hologram_ui_light:summon/hologram/
#  function hologram_ui_light:summon/hologram/adjust/yaw

scoreboard players remove $yaw _hologram_ui_light 1
execute if score $yaw _hologram_ui_light matches ..-1 run function hologram_ui_light:summon/hologram/adjust/y
execute if score $yaw _hologram_ui_light matches 0.. rotated ~15 ~ run function hologram_ui_light:summon/hologram/adjust/yaw

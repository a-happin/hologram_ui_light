#> hologram_ui:summon/hologram/adjust/yaw
#@within
#  function hologram_ui:summon/hologram/
#  function hologram_ui:summon/hologram/adjust/yaw

scoreboard players remove $yaw _hologram_ui 1
execute if score $yaw _hologram_ui matches ..-1 run function hologram_ui:summon/hologram/adjust/y
execute if score $yaw _hologram_ui matches 0.. rotated ~15 ~ run function hologram_ui:summon/hologram/adjust/yaw

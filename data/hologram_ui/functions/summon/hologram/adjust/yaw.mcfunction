#> hologram_ui:summon/hologram/adjust/yaw
#@within
#  function hologram_ui:summon/hologram/
#  function hologram_ui:summon/hologram/adjust/yaw

execute if score $yaw _hologram_ui matches 0 run function hologram_ui:summon/hologram/adjust/y
scoreboard players remove $yaw _hologram_ui 1
execute if score $yaw _hologram_ui matches 0.. rotated ~30 ~ run function hologram_ui:summon/hologram/adjust/yaw

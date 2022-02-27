#> hologram_ui_light:summon/hologram/adjust/y
#@within
#  function hologram_ui_light:summon/hologram/adjust/yaw
#  function hologram_ui_light:summon/hologram/adjust/y

scoreboard players remove $y _hologram_ui_light 9
execute if score $y _hologram_ui_light matches ..-1 positioned ^ ^ ^1.5 run function hologram_ui_light:summon/hologram/adjust/summon
execute if score $y _hologram_ui_light matches 0.. positioned ~ ~-0.5 ~ run function hologram_ui_light:summon/hologram/adjust/y

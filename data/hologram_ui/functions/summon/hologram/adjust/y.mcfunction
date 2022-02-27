#> hologram_ui:summon/hologram/adjust/y
#@within
#  function hologram_ui:summon/hologram/adjust/yaw
#  function hologram_ui:summon/hologram/adjust/y

scoreboard players remove $y _hologram_ui 9
execute if score $y _hologram_ui matches ..-1 positioned ^ ^ ^1.5 run function hologram_ui:summon/hologram/adjust/summon
execute if score $y _hologram_ui matches 0.. positioned ~ ~-0.5 ~ run function hologram_ui:summon/hologram/adjust/y

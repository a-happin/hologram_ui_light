#> hologram_ui:summon/hologram/adjust/y
#@within
#  function hologram_ui:summon/hologram/adjust/yaw
#  function hologram_ui:summon/hologram/adjust/y

scoreboard players add $y _hologram_ui 5
execute if score $y _hologram_ui >= $s _hologram_ui positioned ^ ^0.5 ^1.5 run function hologram_ui:summon/hologram/adjust/summon
execute if score $y _hologram_ui < $s _hologram_ui positioned ^ ^0.5 ^ run function hologram_ui:summon/hologram/adjust/y

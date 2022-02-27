#> hologram_ui_light:create/
#@within advancement hologram_ui_light:operator

## 近くのbasepointを基準にする
execute unless entity @e[type=marker,tag=hologram_ui_light.basepoint,distance=..10] run function hologram_ui_light:create/cancel/by_no_basepoint
execute at @e[type=marker,tag=hologram_ui_light.basepoint,distance=..10,sort=nearest,limit=1] run function hologram_ui_light:create/check

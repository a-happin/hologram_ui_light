#> hologram_ui_light:create/
#@within advancement hologram_ui_light:operator

## 近くのbasepointを基準にする
execute at @e[type=marker,tag=hologram_ui_light.basepoint,distance=..10,sort=nearest,limit=1] run function hologram_ui_light:create/check

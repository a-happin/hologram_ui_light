#> hologram_ui:setup/
#@within advancement hologram_ui:operator

## 近くのbasepointを基準にする
execute at @e[type=marker,tag=hologram_ui.basepoint,distance=..10,sort=nearest,limit=1] run function #hologram_ui:dispatch/setup

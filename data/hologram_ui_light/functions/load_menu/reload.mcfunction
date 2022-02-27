#> hologram_ui_light:load_menu/reload
#@within tag/function hologram_ui_light:dispatch/selected_hologram

## tag/function hologram_ui_light:selected_hologram
##   内でdestroyが呼ばれる可能性があるため、まだoperatorであるかどうかをチェックする
execute if entity @s[advancements={hologram_ui_light:operator=true}] at @e[type=marker,tag=hologram_ui_light.basepoint,distance=..1,sort=nearest,limit=1] run function hologram_ui_light:load_menu/

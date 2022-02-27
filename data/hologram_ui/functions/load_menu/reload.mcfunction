#> hologram_ui:load_menu/reload
#@within tag/function hologram_ui:dispatch/selected_hologram

## tag/function hologram_ui:selected_hologram
##   内でdestroyが呼ばれる可能性があるため、まだoperatorであるかどうかをチェックする
execute if entity @s[advancements={hologram_ui:operator=true}] at @e[type=marker,tag=hologram_ui.basepoint,distance=..10,sort=nearest,limit=1] run function hologram_ui:load_menu/

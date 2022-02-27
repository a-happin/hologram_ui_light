#> hologram_ui_light:load_menu/
#@within
#  tag/function hologram_ui_light:create
#  function hologram_ui_light:load_menu/reload

data modify storage : _ append value {}
  #>
  #@private
  #declare tag/function hologram_ui_light:load_menu
  function #hologram_ui_light:load_menu
  #>
  #@within * hologram_ui_light:**
  scoreboard objectives add _hologram_ui_light dummy
    ## 定数初期化
    scoreboard players set #9 _hologram_ui_light 9

    execute store result score $index _hologram_ui_light if data storage : _[-1].hologram_ui_light[]

    ## ホログラムの再召喚
    kill @e[tag=hologram_ui_light.hologram,distance=..3]
    execute if data storage : _[-1].hologram_ui_light[45] run tellraw @s [{"text": "Error» ", "color": "red"}, "hologram_ui_light: ", "メニューの項目が多すぎます。45個以下にしてください。"]
    execute unless data storage : _[-1].hologram_ui_light[45] if data storage : _[-1].hologram_ui_light[-1] run function hologram_ui_light:summon/hologram/

  scoreboard objectives remove _hologram_ui_light
data remove storage : _[-1]

#> hologram_ui:load_menu/
#@within
#  tag/function hologram_ui:create
#  function hologram_ui:load_menu/reload

data modify storage : _ append value {}
  #>
  #@private
  #declare tag/function hologram_ui:load_menu
  function #hologram_ui:load_menu
  #>
  #@within * hologram_ui:**
  scoreboard objectives add _hologram_ui dummy
    ## 定数初期化
    scoreboard players set #9 _hologram_ui 9

    execute store result score $index _hologram_ui if data storage : _[-1].hologram_ui[]

    ## ホログラムの再召喚
    kill @e[tag=hologram_ui.hologram,distance=..3]
    execute if data storage : _[-1].hologram_ui[45] run tellraw @s [{"text": "Error» ", "color": "red"}, "hologram_ui: ", "メニューの項目が多すぎます。45個以下にしてください。"]
    execute unless data storage : _[-1].hologram_ui[45] if data storage : _[-1].hologram_ui[-1] run function hologram_ui:summon/hologram/

  scoreboard objectives remove _hologram_ui
data remove storage : _[-1]

#> hologram_ui:load_menu/
#@within
#  function hologram_ui:setup/impl
#  function hologram_ui:load_menu/reload

data modify storage : _ append value {}
  function #hologram_ui:load_menu
  #>
  #@within * hologram_ui:**
  scoreboard objectives add _hologram_ui dummy
    ## 定数初期化
    scoreboard players set #5 _hologram_ui 5

    ## index = size
    ## s = 左下のindex = (size - 1) / 5 * 5
    execute store result storage : _[-1].s int 0.19999999998 store result score $index _hologram_ui store result score $mod5 _hologram_ui if data storage : _[-1].hologram_ui[]
    execute store result score $s _hologram_ui run data get storage : _[-1].s 5

    execute if score $index _hologram_ui matches 21.. run tellraw @s [{"text": "Error» ", "color": "red"}, "hologram_ui: ", "メニューの項目が多すぎます。20個以下にしてください。"]

    ## mod5 = size % 5
    scoreboard players operation $mod5 _hologram_ui %= #5 _hologram_ui

    ## ホログラムの再召喚
    kill @e[tag=hologram_ui.hologram]
    execute unless data storage : _[-1].hologram_ui[20] if data storage : _[-1].hologram_ui[-1] run function hologram_ui:summon/hologram/

  scoreboard objectives remove _hologram_ui
data remove storage : _[-1]

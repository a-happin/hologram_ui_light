#> hologram_ui:setup/impl
#@within function hologram_ui:setup/

## 位置と向きを補正する
teleport @s ~ ~ ~ ~ ~

#>
#@public
  scoreboard objectives add hologram_ui.id dummy
  scoreboard objectives add hologram_ui.menu dummy

execute store result score @s hologram_ui.menu run data get entity @e[type=marker,tag=hologram_ui.basepoint,sort=nearest,limit=1] data.default

## クリック検知用エンティティの召喚
function hologram_ui:summon/click_detector/

function hologram_ui:load_menu/

title @s actionbar [{"translate": "%s キーで HologramUI を終了", "with": [{"keybind": "key.sneak"}]}]

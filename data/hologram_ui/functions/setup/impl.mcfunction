#> hologram_ui:setup/impl
#@within function hologram_ui:setup/

## 位置と向きを補正する
teleport @s ~ ~ ~ ~ ~

#>
#@public
  scoreboard objectives add hologram_ui.id dummy
  scoreboard objectives add hologram_ui.menu dummy

## デフォルトメニューidのロード
execute store result score @s hologram_ui.menu run data get entity @e[type=marker,tag=hologram_ui.basepoint,distance=..0.01,limit=1] data.default

## クリック検知用エンティティの召喚
function hologram_ui:summon/click_detector/

## メニューを読み込む
function hologram_ui:load_menu/

title @s actionbar [{"translate": "%s キーで HologramUI を終了", "with": [{"keybind": "key.sneak"}]}]

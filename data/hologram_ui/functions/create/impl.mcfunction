#> hologram_ui:create/impl
#@within tag/function hologram_ui:create

## 位置と向きを補正する
teleport @s ~ ~ ~ ~ ~

#>
#@public
  scoreboard objectives add hologram_ui.id dummy
  scoreboard objectives add hologram_ui.menu dummy

#>
#@within * hologram_ui:**
team add hologram_ui.click_detector
team modify hologram_ui.click_detector collisionRule never

## デフォルトメニューidのロード
execute store result score @s hologram_ui.menu run data get entity @e[type=marker,tag=hologram_ui.basepoint,distance=..0.01,limit=1] data.default

## クリック検知用エンティティの召喚
execute unless entity @e[type=wandering_trader,team=hologram_ui.click_detector,distance=0] run function hologram_ui:summon/click_detector/

## actionbar
title @s actionbar [{"translate": "%s キーで HologramUI を終了", "with": [{"keybind": "key.sneak"}]}]

#> hologram_ui_light:create/impl
#@within tag/function hologram_ui_light:create

## 位置と向きを補正する
teleport @s ~ ~ ~ ~ ~

#>
#@public
  scoreboard objectives add hologram_ui_light.id dummy
  scoreboard objectives add hologram_ui_light.menu_id dummy

#>
#@within * hologram_ui_light:**
team add hologram_ui_light.click_detector
team modify hologram_ui_light.click_detector collisionRule never

## デフォルトメニューidのロード
execute store result score @s hologram_ui_light.menu_id run data get entity @e[type=marker,tag=hologram_ui_light.basepoint,distance=..0.01,limit=1] data.default_menu_id

## クリック検知用エンティティの召喚
execute unless entity @e[type=wandering_trader,team=hologram_ui_light.click_detector,distance=0] run function hologram_ui_light:summon/click_detector/

## actionbar
title @s actionbar [{"translate": "%s キーで HologramUI を終了", "with": [{"keybind": "key.sneak"}]}]

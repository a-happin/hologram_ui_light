#> hologram_ui_light:create/cancel/by_other_player
#@within function hologram_ui_light:create/check

tellraw @s [{"text": "Error» Hologram UI Light» ", "color": "red"}, "他のプレイヤーが操作中です"]
advancement revoke @s only hologram_ui_light:operator

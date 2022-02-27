#> hologram_ui_light:create/cancel
#@within function hologram_ui_light:create/check

tellraw @s [{"text": "Error» HologramUI» ", "color": "red"}, "他のプレイヤーが操作中です"]
advancement revoke @s only hologram_ui_light:operator

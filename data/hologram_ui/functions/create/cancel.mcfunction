#> hologram_ui:create/cancel
#@within function hologram_ui:create/check

tellraw @s [{"text": "Error» HologramUI» ", "color": "red"}, "他のプレイヤーが操作中です"]
advancement revoke @s only hologram_ui:operator

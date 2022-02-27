#> hologram_ui_light:create/cancel/by_no_basepoint
#@within function hologram_ui_light:create/

tellraw @s [{"text": "Error» HologramUI» ", "color": "red"}, "hologram_ui_light.basepointが見つかりませんでした"]
advancement revoke @s only hologram_ui_light:operator

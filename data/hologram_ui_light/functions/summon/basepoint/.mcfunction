#> hologram_ui_light:summon/basepoint/
#@user

summon marker ~ ~ ~ {Tags: ["hologram_ui_light.basepoint"]}
execute as @e[type=marker,tag=hologram_ui_light.basepoint,distance=..0.01] rotated ~ 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^-0.7071067812 align xyz facing 0.0 0.0 0.0 positioned as @s align xz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~ ~ ~

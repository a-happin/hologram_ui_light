#> hologram_ui_light:operator/tick/impl
#@within function hologram_ui_light:operator/tick/

## 固定
execute unless entity @s[distance=0] run function hologram_ui_light:operator/stick

## 選択中のホログラムをparticleで示す(execute幾何学式)
tag @s add hologram_ui_light.this
  execute rotated ~ 0 positioned ^ ^ ^1.5 positioned ~-0.5 ~ ~-0.5 as @e[type=area_effect_cloud,tag=hologram_ui_light.selectable,dx=0,dy=2,dz=0] positioned as @s positioned ~ ~0.9 ~ facing entity @a[tag=hologram_ui_light.this] eyes positioned as @s positioned ^ ^ ^16 rotated as @a[tag=hologram_ui_light.this] positioned ^ ^ ^16 positioned ~ ~-0.9 ~ if entity @s[distance=..2] run tag @s add hologram_ui_light.targeting
    execute as @e[type=area_effect_cloud,tag=hologram_ui_light.targeting,distance=..3,sort=nearest,limit=1] at @s run particle dust 1 1 1 0.3 ~ ~0.7 ~ 0.1 0 0.1 0 10
  tag @e[type=area_effect_cloud,tag=hologram_ui_light.targeting,distance=..3] remove hologram_ui_light.targeting
tag @s remove hologram_ui_light.this

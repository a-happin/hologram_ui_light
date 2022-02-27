#> hologram_ui:operator/tick
#@within function hologram_ui:tick


## 固定
teleport @s ~ ~ ~

## 選択中のホログラムをparticleで示す(execute幾何学式)
#>
#@private
#declare tag hologram_ui.this
tag @s add hologram_ui.this
  execute rotated ~ 0 positioned ^ ^ ^1.5 positioned ~-0.5 ~ ~-0.5 as @e[type=area_effect_cloud,tag=hologram_ui.selectable,dx=0,dy=10,dz=0] positioned as @s positioned ~ ~0.9 ~ facing entity @a[tag=hologram_ui.this] eyes positioned as @s positioned ^ ^ ^16 rotated as @a[tag=hologram_ui.this] positioned ^ ^ ^16 positioned ~ ~-0.9 ~ if entity @s[distance=..2] run tag @s add hologram_ui.targeting
    execute as @e[type=area_effect_cloud,tag=hologram_ui.targeting,distance=..10,sort=nearest,limit=1] at @s run particle dust 1 1 1 0.3 ~ ~0.7 ~ 0.1 0 0.1 0 10
  tag @e[type=area_effect_cloud,tag=hologram_ui.targeting,distance=..10] remove hologram_ui.targeting
tag @s remove hologram_ui.this

## スニークしたら強制解除
execute if entity @s[predicate=hologram_ui:is_sneaking] run function hologram_ui:destroy

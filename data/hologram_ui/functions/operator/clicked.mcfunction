#> hologram_ui:operator/clicked
#@within advancement hologram_ui:clicked

advancement revoke @s only hologram_ui:clicked

## 選択中のホログラムのidを取得
tag @s add hologram_ui.this
  execute rotated ~ 0 positioned ^ ^ ^1.5 positioned ~-0.5 ~ ~-0.5 as @e[type=area_effect_cloud,tag=hologram_ui.selectable,dx=0,dy=2,dz=0] positioned as @s positioned ~ ~0.9 ~ facing entity @a[tag=hologram_ui.this] eyes positioned as @s positioned ^ ^ ^16 rotated as @a[tag=hologram_ui.this] positioned ^ ^ ^16 positioned ~ ~-0.9 ~ if entity @s[distance=..2] run tag @s add hologram_ui.targeting
    execute as @e[type=area_effect_cloud,tag=hologram_ui.targeting,distance=..3,sort=nearest,limit=1] run scoreboard players operation @a[tag=hologram_ui.this] hologram_ui.id = @s hologram_ui.id
  tag @e[type=area_effect_cloud,tag=hologram_ui.targeting,distance=..3] remove hologram_ui.targeting
tag @s remove hologram_ui.this

## ホログラムを選択した際の処理
execute if entity @s[scores={hologram_ui.id=-2147483648..}] run function #hologram_ui:dispatch/selected_hologram

scoreboard players reset @s hologram_ui.id

#> hologram_ui_light:create/check
#@within function hologram_ui_light:create/

## 他のプレイヤーがいたときはやめる
tag @s add hologram_ui_light.this
  execute if entity @a[advancements={hologram_ui_light:operator=true},tag=!hologram_ui_light.this,distance=..1] run function hologram_ui_light:create/cancel
tag @s remove hologram_ui_light.this

execute if entity @s[advancements={hologram_ui_light:operator=true}] run function #hologram_ui_light:create

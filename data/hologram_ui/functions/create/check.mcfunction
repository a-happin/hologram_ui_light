#> hologram_ui:create/check
#@within function hologram_ui:create/

## 他のプレイヤーがいたときはやめる
tag @s add hologram_ui.this
  execute if entity @a[advancements={hologram_ui:operator=true},tag=!hologram_ui.this,distance=..1] run function hologram_ui:create/cancel
tag @s remove hologram_ui.this

execute if entity @s[advancements={hologram_ui:operator=true}] run function #hologram_ui:create

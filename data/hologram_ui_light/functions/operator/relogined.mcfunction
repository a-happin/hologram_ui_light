#> hologram_ui_light:operator/relogined
#@within function hologram_ui_light:handler/relogined

## 自分以外のoperatorが居たらoperator権限を剥奪
tag @s add hologram_ui_light.this
  execute if entity @a[advancements={hologram_ui_light:operator=true},tag=!hologram_ui_light.this,distance=..1] run advancement revoke @s only hologram_ui_light:operator
tag @s remove hologram_ui_light.this

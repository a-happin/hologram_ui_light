#> hologram_ui_light:tick
#@within tag/function player:tick

execute if entity @s[advancements={hologram_ui_light:operator=true}] run function hologram_ui_light:operator/check

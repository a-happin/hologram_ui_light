#> hologram_ui:operator/selected_hologram
#@within tag/function hologram_ui:dispatch/selected_hologram

execute if entity @s[scores={hologram_ui.id=-1}] run function #hologram_ui:dispatch/destroy

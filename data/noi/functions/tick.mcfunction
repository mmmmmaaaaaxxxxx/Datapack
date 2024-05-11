#yo keep this one at the front
execute as @a[tag=noi.remove_resistance] run function noi:spell/extra/iron_ingot_1

execute unless score .global_max_mana noi.settings matches ..-1 run scoreboard players operation @a noi.max_mana = .global_max_mana noi.settings

execute as @e[scores={noi.cooldown=1..}] run scoreboard players remove @s noi.cooldown 1
execute as @e[scores={noi.lifetime=1..}] run scoreboard players remove @s noi.lifetime 1
execute as @e[scores={noi.lifetime=..0}] run kill

execute as @a[scores={noi.clicked=1..},nbt={SelectedItem:{tag:{noi.wand:1b,noi.wand_format:1}}},tag=!noi.nowand] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s SelectedItem.tag.Spell
execute as @a[scores={noi.clicked=1..},nbt={SelectedItem:{tag:{noi.wand:1b}}},tag=!noi.nowand] unless entity @s[nbt={SelectedItem:{tag:{noi.wand_format:1}}}] run tellraw @s {"text":"This wand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

scoreboard players reset @a noi.clicked

title @a[scores={noi.stored_mana=0}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"}]
title @a[scores={noi.stored_mana=1..}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"},{"text":" (+","color":"#9E72A1"},{"score":{"name":"*","objective":"noi.stored_mana"},"color":"#9E72A1"},{"text":")","color":"#9E72A1"}]

scoreboard players add #timer noi.math 1
execute if score #timer noi.math matches 5.. run function noi:mana_tick

execute as @e[type=marker,tag=noi.bouncy_object,predicate=noi:riding] at @s run function noi:spell/extra/get_vehicle_motion
execute as @e[type=marker,tag=noi.ball_mod,predicate=noi:riding] at @s run function noi:spell/extra/ball_mod with entity @s data
execute as @e[type=marker,tag=noi.ball_mod,predicate=!noi:riding] run kill
execute as @e[type=marker,tag=noi.dripstone_drill,predicate=!noi:riding] at @s run function noi:spell/extra/dripstone_trigger with entity @s data
execute as @e[type=marker,tag=noi.thrown_block,predicate=!noi:riding] at @s run function noi:spell/extra/generic_block_trigger_1
execute as @e[type=marker,tag=noi.thrown_ball,predicate=!noi:riding] at @s run function noi:spell/extra/generic_ball_trigger_0
execute as @e[type=marker,tag=noi.const_direction,predicate=!noi:riding] at @s run function noi:spell/extra/const_direction_trigger

execute as @e[type=interaction,nbt={interaction:{}},tag=noi.wandholder] at @s run function noi:altar/wands/main
execute as @e[type=interaction,nbt={interaction:{}},tag=noi.spellholder] at @s run function noi:altar/spells/main
execute as @e[type=minecraft:item_display,tag=noi.spellholder_display] at @s run tp @s ~ ~ ~ ~-2.2 ~

execute at @e[type=interaction,tag=noi.wandholder,tag=noi.empty] positioned ~ ~2 ~ run particle enchant ~ ~ ~ 0 0 0 .5 1
execute at @e[type=interaction,tag=noi.spellholder,tag=noi.empty,tag=!noi.locked] positioned ~ ~1 ~ run particle enchanted_hit

execute as @e[type=item_display,tag=noi.thrown_tool] at @s on passengers run function noi:spell/extra/thrown_tool with entity @s data

execute as @e[type=item_display,tag=noi.thrown_iron_nugget] at @s run function noi:spell/extra/iron_nugget_tick
$execute if data entity @s item.tag.Inv.2.id run summon item_display ~ ~ ~ {item:$(2),teleport_duration:2,billboard:"fixed",Tags:["noi.spellholder_display","current2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[.7f,.7f,.7f]}}
summon interaction ~ ~ ~ {width:1f,height:2f,Tags:["noi.spellholder","noi.itemholder"]}
execute unless data entity @s item.tag.Inv.2.id run tag @e[type=interaction,tag=noi.spellholder,distance=...0001] add noi.empty
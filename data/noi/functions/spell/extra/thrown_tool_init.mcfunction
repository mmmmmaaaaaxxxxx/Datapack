execute if entity @s[tag=noi.tool.golden_pickaxe] run tag @s add noi.tooltype.golden
execute if entity @s[tag=noi.tool.golden_hoe] run tag @s add noi.tooltype.golden
execute if entity @s[tag=noi.tool.golden_shovel] run tag @s add noi.tooltype.golden
execute if entity @s[tag=noi.tool.golden_sword] run tag @s add noi.tooltype.golden
execute if entity @s[tag=noi.tool.golden_axe] run tag @s add noi.tooltype.golden
execute if entity @s[tag=noi.tool.wooden_pickaxe] run tag @s add noi.tooltype.wooden
execute if entity @s[tag=noi.tool.wooden_hoe] run tag @s add noi.tooltype.wooden
execute if entity @s[tag=noi.tool.wooden_shovel] run tag @s add noi.tooltype.wooden
execute if entity @s[tag=noi.tool.wooden_sword] run tag @s add noi.tooltype.wooden
execute if entity @s[tag=noi.tool.wooden_axe] run tag @s add noi.tooltype.wooden
execute if entity @s[tag=noi.tool.stone_pickaxe] run tag @s add noi.tooltype.stone
execute if entity @s[tag=noi.tool.stone_hoe] run tag @s add noi.tooltype.stone
execute if entity @s[tag=noi.tool.stone_shovel] run tag @s add noi.tooltype.stone
execute if entity @s[tag=noi.tool.stone_sword] run tag @s add noi.tooltype.stone
execute if entity @s[tag=noi.tool.stone_axe] run tag @s add noi.tooltype.stone
execute if entity @s[tag=noi.tool.iron_pickaxe] run tag @s add noi.tooltype.iron
execute if entity @s[tag=noi.tool.iron_hoe] run tag @s add noi.tooltype.iron
execute if entity @s[tag=noi.tool.iron_shovel] run tag @s add noi.tooltype.iron
execute if entity @s[tag=noi.tool.iron_sword] run tag @s add noi.tooltype.iron
execute if entity @s[tag=noi.tool.iron_axe] run tag @s add noi.tooltype.iron
execute if entity @s[tag=noi.tool.diamond_pickaxe] run tag @s add noi.tooltype.diamond
execute if entity @s[tag=noi.tool.diamond_hoe] run tag @s add noi.tooltype.diamond
execute if entity @s[tag=noi.tool.diamond_shovel] run tag @s add noi.tooltype.diamond
execute if entity @s[tag=noi.tool.diamond_sword] run tag @s add noi.tooltype.diamond
execute if entity @s[tag=noi.tool.diamond_axe] run tag @s add noi.tooltype.diamond
execute if entity @s[tag=noi.tool.netherite_pickaxe] run tag @s add noi.tooltype.netherite
execute if entity @s[tag=noi.tool.netherite_hoe] run tag @s add noi.tooltype.netherite
execute if entity @s[tag=noi.tool.netherite_shovel] run tag @s add noi.tooltype.netherite
execute if entity @s[tag=noi.tool.netherite_sword] run tag @s add noi.tooltype.netherite
execute if entity @s[tag=noi.tool.netherite_axe] run tag @s add noi.tooltype.netherite

execute if entity @s[tag=noi.tooltype.golden] on vehicle run scoreboard players set @s noi.lifetime 75
execute if entity @s[tag=noi.tooltype.wooden] on vehicle run scoreboard players set @s noi.lifetime 100
execute if entity @s[tag=noi.tooltype.stone] on vehicle run scoreboard players set @s noi.lifetime 150
execute if entity @s[tag=noi.tooltype.iron] on vehicle run scoreboard players set @s noi.lifetime 200
execute if entity @s[tag=noi.tooltype.diamond] on vehicle run scoreboard players set @s noi.lifetime 250
execute if entity @s[tag=noi.tooltype.netherite] on vehicle run scoreboard players set @s noi.lifetime 300

execute if entity @s[tag=noi.tooltype.golden] run data modify entity @s data merge value {speed:1}
execute if entity @s[tag=noi.tooltype.wooden] run data modify entity @s data merge value {speed:.1}
execute if entity @s[tag=noi.tooltype.stone] run data modify entity @s data merge value {speed:.2}
execute if entity @s[tag=noi.tooltype.iron] run data modify entity @s data merge value {speed:.3}
execute if entity @s[tag=noi.tooltype.diamond] run data modify entity @s data merge value {speed:.4}
execute if entity @s[tag=noi.tooltype.netherite] run data modify entity @s data merge value {speed:.5}
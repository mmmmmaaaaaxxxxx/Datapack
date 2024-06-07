$execute unless data storage noi:lookup $(1).slime_block unless data storage noi:lookup $(1).honey_block unless data storage noi:lookup $(1).anvil run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:$(1)"},HurtEntities:1b,Motion:$(Motion),Time:-99999,DropItem:0b,CancelDrop:1b,Passengers:[{id:"minecraft:marker",Tags:["noi.thrown_block","noi.bouncy_object"],data:{UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}}]}
$execute if data storage noi:lookup $(1).slime_block run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:slime_block"},HurtEntities:1b,Motion:$(Motion),Time:-99999,DropItem:0b,CancelDrop:1b,Passengers:[{id:"minecraft:marker",Tags:["noi.thrown_block","noi.bouncy_object"],data:{UUID:$(UUID),1:"dirt",2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:"generic_block",2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}}]}
#The second line makes the slime block work. I should fix it at some point so it makes another slime block instead of dirt
$execute if data storage noi:lookup $(1).honey_block run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:honey_block"},HurtEntities:1b,Motion:$(Motion),Time:-99999,DropItem:0b,CancelDrop:1b,Passengers:[{id:"minecraft:marker",Tags:["noi.thrown_block","noi.bouncy_object","noi.bounce_backwards"],data:{UUID:$(UUID),1:"honeycomb_block",2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:"generic_block",2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}}]}
#The third line is for honey blocks
$execute if data storage noi:lookup $(1).anvil run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},HurtEntities:1b,Motion:$(Motion),Time:-99999,DropItem:0b,CancelDrop:1b,FallHurtMax:40,FallHurtAmount:2.0f,Passengers:[{id:"minecraft:marker",Tags:["noi.thrown_block","noi.bouncy_object"],data:{UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}}]}

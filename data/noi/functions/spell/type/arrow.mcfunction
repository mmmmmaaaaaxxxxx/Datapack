function noi:math/block_launch {speed: 3.04}
$data modify storage temp:local macro merge value {UUID:$(UUID),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:$(1att),2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}
data modify storage temp:local macro merge value {type:"arrow"}
function noi:spell/extra/proj_summon with storage temp:local macro

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

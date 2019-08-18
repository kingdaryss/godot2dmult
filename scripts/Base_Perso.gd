extends Node2D

# Declare member variables here. Examples:

#atributos personagem ---
var vida 
var velocidade 
var nome
var str_Pts
var max_Pts
var vit_Pts
var def_Pts

# godot vars ---
var btn_start
var txt_nome
var lbl_nome
#str ---
var btn_strup
var btn_strdown
var atr_Str
#vit ---
var btn_vitup
var btn_vitdown
var atr_Vit
#def ---
var btn_defup
var btn_defdown
var atr_Def
# max pts ---
var lbl_Pts


# Called when the node enters the scene tree for the first time.
func _ready():
	#atributos --
	str_Pts = 0
	vit_Pts = 0
	def_Pts = 0
	max_Pts = 100
	#godot nodes --
	txt_nome = get_node("txt_Nome")
	lbl_nome = get_node("lbl_Nome")
	btn_start = get_node("btn_Start")
	btn_strup = get_node("btn_Str_Up")
	btn_strdown = get_node("btn_Str_Down")
	atr_Str = get_node("atr_Str")
	lbl_Pts = get_node("lbl_Pts")
	btn_vitup = get_node("btn_Vit_Up")
	btn_vitdown = get_node("btn_Vit_Down")
	atr_Vit = get_node("atr_Vit")
	btn_defup = get_node("btn_Def_Up")
	btn_defdown = get_node("btn_Def_Down")
	atr_Def = get_node("atr_Def")
	
	pass
	
func _process(delta):
	#str ------
	if btn_strup.pressed && max_Pts > 0:
		str_Pts = str_Pts + int(1)
		max_Pts = max_Pts - int(1)
		atr_Str.set_text(str(str_Pts))
		lbl_Pts.set_text(str(max_Pts))
	if btn_strdown.pressed && str_Pts > 0:
		str_Pts = str_Pts - int(1)
		max_Pts = max_Pts + int(1)
		atr_Str.set_text(str(str_Pts))
		lbl_Pts.set_text(str(max_Pts))
	#vit ------
	if btn_vitup.pressed && max_Pts > 0:
		vit_Pts = vit_Pts + int(1)
		max_Pts = max_Pts - int(1)
		atr_Vit.set_text(str(vit_Pts))
		lbl_Pts.set_text(str(max_Pts))
	if btn_vitdown.pressed && vit_Pts > 0:
		vit_Pts = vit_Pts - int(1)
		max_Pts = max_Pts + int(1)
		atr_Vit.set_text(str(vit_Pts))
		lbl_Pts.set_text(str(max_Pts))
	#def ------
	if btn_defup.pressed && max_Pts > 0:
		def_Pts = def_Pts + int(1)
		max_Pts = max_Pts - int(1)
		atr_Def.set_text(str(def_Pts))
		lbl_Pts.set_text(str(max_Pts))
	if btn_defdown.pressed && def_Pts > 0:
		def_Pts = def_Pts - int(1)
		max_Pts = max_Pts + int(1)
		atr_Def.set_text(str(def_Pts))
		lbl_Pts.set_text(str(max_Pts))
	pass
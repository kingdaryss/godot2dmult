extends "res://scripts/Base_Perso.gd"

# godot vars ---
var btn_atribuir
var txt_nome
var lbl_nome
#str ---
var btn_strup
var btn_strdown
var atr_Str
var lbl_dano
#vit ---
var btn_vitup
var btn_vitdown
var atr_Vit
var lbl_vida
var lbl_currentvida
#def ---
var btn_defup
var btn_defdown
var atr_Def
var lbl_defesa
#agi ---
var btn_agiup
var btn_agidown
var atr_Agi
var lbl_velocidade
# max pts ---
var lbl_Pts
# exp room ---
var lbl_currentExp
var lbl_maxExp
var lbl_level


# Called when the node enters the scene tree for the first time.
func _ready():
	#atributos --
	#godot nodes --
	txt_nome = get_node("txt_Nome")
	lbl_nome = get_node("lbl_Nome")
	btn_atribuir = get_node("btn_Atribuir")
	#exp ---
	lbl_currentExp = get_node("lbl_currentexp")
	lbl_maxExp = get_node("lbl_maxexp")
	lbl_level = get_node("lbl_level")

	#str
	btn_strup = get_node("btn_Str_Up")
	btn_strdown = get_node("btn_Str_Down")
	atr_Str = get_node("atr_Str")
	lbl_dano = get_node("lbl_dano")
	#maxpoints
	lbl_Pts = get_node("lbl_Pts")
	#vitalidade
	btn_vitup = get_node("btn_Vit_Up")
	btn_vitdown = get_node("btn_Vit_Down")
	atr_Vit = get_node("atr_Vit")
	lbl_vida = get_node("lbl_vida")
	lbl_currentvida = get_node("lbl_currentvida")
	#defesa
	btn_defup = get_node("btn_Def_Up")
	btn_defdown = get_node("btn_Def_Down")
	atr_Def = get_node("atr_Def")
	lbl_defesa = get_node("lbl_defesa")
	#agilidade
	btn_agiup = get_node("btn_Agi_Up")
	btn_agidown = get_node("btn_Agi_Down")
	atr_Agi = get_node("atr_Agi")
	lbl_velocidade = get_node("lbl_velocidade")

	

	
	pass
	
func _process(delta):
	lbl_currentvida.set_text(str(currentVida))
	lbl_currentExp.set_text(str(currentExp))
	if currentExp >= maxExp: # upou de nível
		currentExp+=1
		maxExp = maxExp + maxExp
		currentLevel+=1
		dano+=1
		vida+=1
		defesa+=1
		velocidade+=1
		currentVida = vida
		max_Pts+= 2
		lbl_maxExp.set_text(str(maxExp))
		lbl_level.set_text(str(currentLevel))
		lbl_dano.set_text(str(dano))
		lbl_vida.set_text(str(vida))
		lbl_defesa.set_text(str(defesa))
		lbl_velocidade.set_text(str(velocidade))
		lbl_Pts.set_text(str(max_Pts))
		btn_strdown.set_disabled(false)
		btn_vitdown.set_disabled(false)
		btn_defdown.set_disabled(false)
		btn_agidown.set_disabled(false)
		
		pass
	
	if Input.is_key_pressed(KEY_K):
		currentExp+=1
		self.show()
		pass
#STR -----------------
func _on_btn_Str_Up_button_up():
	if max_Pts > 0:
		str_Pts+=1
		_atribuir(str_Pts, atr_Str)
		pass

func _on_btn_Str_Down_button_up():
	if str_Pts > 0:
		str_Pts-= 1
		_desatribuir(str_Pts, atr_Str)
	pass
#VIT -----------------
func _on_btn_Vit_Up_button_up():
	if max_Pts > 0:
		vit_Pts+= 1
		_atribuir(vit_Pts, atr_Vit)
		pass

func _on_btn_Vit_Down_button_up():
	if vit_Pts > 0:
		vit_Pts-= 1
		_desatribuir(vit_Pts, atr_Vit)
		pass # Replace with function body.
#DEF -----------------
func _on_btn_Def_Up_button_up():
	if max_Pts > 0:
		def_Pts+= 1
		_atribuir(def_Pts, atr_Def)
		pass # Replace with function body.

func _on_btn_Def_Down_button_up():
	if def_Pts > 0:
		def_Pts-= 1
		_desatribuir(def_Pts, atr_Def)
		pass # Replace with function body.

#AGI -----------------
func _on_btn_Agi_Up_button_up():
	if max_Pts > 0:
		agi_Pts+= 1
		_atribuir(agi_Pts, atr_Agi)
		pass # Replace with function body.

func _on_btn_Agi_Down_button_up():
	if agi_Pts > 0:
		agi_Pts-= 1
		_desatribuir(agi_Pts, atr_Agi)
		pass # Replace with function body.

func _atribuir(status_Points, atr_Status):
		max_Pts-= 1
		lbl_Pts.set_text(str(max_Pts))
		atr_Status.set_text(str(status_Points))

func _desatribuir(status_Points, atr_Status):
		max_Pts+= 1
		lbl_Pts.set_text(str(max_Pts))
		atr_Status.set_text(str(status_Points))

func _on_btn_Atribuir_button_up():
	dano+=int(str_Pts)
	vida+=int(vit_Pts)
	defesa+=int(def_Pts)
	velocidade+=int(agi_Pts)
	lbl_dano.set_text(str(dano))
	lbl_vida.set_text(str(vida))
	lbl_defesa.set_text(str(defesa))
	lbl_velocidade.set_text(str(velocidade))
	str_Pts = 0
	vit_Pts = 0
	def_Pts = 0
	agi_Pts = 0
	atr_Str.set_text(str(str_Pts))
	atr_Vit.set_text(str(vit_Pts))
	atr_Def.set_text(str(def_Pts))
	atr_Agi.set_text(str(agi_Pts))
	btn_strdown.set_disabled(true)
	btn_vitdown.set_disabled(true)
	btn_defdown.set_disabled(true)
	btn_agidown.set_disabled(true)
	pass

func _on_btn_Fechar_button_up():
	self.hide()
	pass # Replace with function body.

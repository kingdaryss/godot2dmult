extends Node2D

# Declare member variables here. Examples:

#atributos personagem ---
var nome
var currentExp = 0 #aumenta quando inimigo morre
var maxExp = 5 #aumenta quando currentLevel soma 1
var currentLevel = 1   #sobe quando o currentExp for igual a maxExpToLevelUp
var dano = 1
var currentVida = 1
var vida = 1
var defesa = 1
var velocidade = 1
#godot
var str_Pts = 0
var vit_Pts = 0
var def_Pts = 0
var agi_Pts = 0
var max_Pts = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	currentVida = vida
	pass

func _process(delta):

	pass

extends Node2D


# defines if the noise is going up or down
@export var direction = 1
# the following will be used for generating an arbitrary number of noise later
var max_nb_noise = 5
var noise_preload = preload("res://scenes/noise_rep.tscn")
# for now everything is hard coded

@onready var noise_rep_1: Node2D = $NoiseRep1
@onready var noise_rep_2: Node2D = $NoiseRep2
@onready var noise_rep_3: Node2D = $NoiseRep3
@onready var noise_rep_4: Node2D = $NoiseRep4
@onready var noise_rep_5: Node2D = $NoiseRep5
@onready var noises = [noise_rep_1, noise_rep_2, noise_rep_3, noise_rep_4, noise_rep_5]
@export var x_initial_state = [1, 0, 1, 0, 1]
@export var z_initial_state = [0, 0, 0, 0, 0]

func _ready() -> void:
	print("hello")
	for i in len(noises):
		noises[i].update_representation(Vector2(x_initial_state[i], z_initial_state[i]))
	


func apply_1q_gate(gate:GeneralGate, noise_idx)->void:
	var noise:NoiseRep = noises[noise_idx]
	var new_state = gate.gate_data * noise
	noise.update_representation(new_state)
	
#func apply_2q_gate()
	

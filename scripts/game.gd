extends Node2D

@onready var button = $Button
@onready var animation_player = $AnimationPlayer
@onready var spawn = $spawn

var player = preload("res://scenes/player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 3:
		var instance = player.instantiate()
		instance.position.x = 256 * i
		spawn.add_child(instance)
		instance.animation.play("test")
		
	button.button_down.connect(start_animation)

func start_animation():
	spawn.get_child(0).animation.play("test")
	spawn.get_child(2).animation.queue("test")

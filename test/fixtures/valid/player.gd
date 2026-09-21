class_name Player
extends CharacterBody2D

signal health_changed(new_health: int)

const MAX_HEALTH: int = 100

@export var move_speed: float = 300.0

var current_health: int = MAX_HEALTH


func _physics_process(delta: float) -> void:
	var input_direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * move_speed
	move_and_slide()


func take_damage(amount: int) -> void:
	current_health = clampi(current_health - amount, 0, MAX_HEALTH)
	health_changed.emit(current_health)

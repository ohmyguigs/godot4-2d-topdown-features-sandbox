extends Node
@onready var btn_comecar = $MarginContainer/VBoxContainer/btn_comecar
@onready var btn_sair = $MarginContainer/VBoxContainer/btn_sair


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	

func _on_btn_sair_pressed() -> void:
	get_tree().quit()


func _on_btn_comecar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

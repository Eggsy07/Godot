tool
extends Node

export(String, FILE) var next_scene_path: = ""

func _on_button_up():
	get_tree().change_scene(next_scene_path)

func _get_configuration_warning() -> String:
	return "next_scene_path deve ser preenchido para o botao funcionar correctamente" if next_scene_path == "" else ""

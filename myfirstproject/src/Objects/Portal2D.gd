tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var next_scene: PackedScene
export var level: int = 1

func _on_body_entered(body):
	teleport()

func _get_configuration_warning() -> String:
	return "A propriedade da proxima cena nao pode estar vazia" if not next_scene else ""

func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player,"animation_finished")
	PlayerData.level += level
	$AnimationPlayer.play()
	get_tree().change_scene_to(next_scene)



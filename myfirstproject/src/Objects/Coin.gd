extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
export var score: = 100
var cont: int = 0
func _on_body_entered(body: PhysicsBody2D) -> void:
	cont += 1
	if cont == 1:
		PlayerData.score += score
	$AudioStreamPlayer.play()
	anim_player.play("fade_out")

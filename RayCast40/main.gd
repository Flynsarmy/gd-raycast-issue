extends Node3D


@onready var cast: RayCast3D = $RayCast3d
@onready var mesh: MeshInstance3D = $MeshInstance3d

func _physics_process(delta: float) -> void:
	mesh.global_transform.origin = cast.global_transform.translated(cast.target_position).origin

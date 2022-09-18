extends Spatial

onready var cast: RayCast = $RayCast
onready var mesh: MeshInstance = $MeshInstance

func _physics_process(delta: float) -> void:
	mesh.global_transform.origin = cast.global_transform.translated(cast.cast_to).origin

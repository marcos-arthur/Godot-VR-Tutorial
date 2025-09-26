extends Node3D

@onready var floor: MeshInstance3D = $Floor

func _ready() -> void:
	floor.create_trimesh_collision()
	

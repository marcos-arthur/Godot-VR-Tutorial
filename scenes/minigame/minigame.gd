extends Node3D

@onready var plastic_label: Label = $PlasticMessage/CorrectMessage/CenterContainer/Label
@onready var metal_label: Label = $MetalMessage/CorrectMessage/CenterContainer/Label
@onready var paper_label: Label = $PaperMessage/CorrectMessage/CenterContainer/Label

func check_type(body: Recyclabe, expected_type: String) -> bool:
	if(body.type && body.type == expected_type):
		print("CORRECT")
		return true
	else:
		print("INCORRECT")
		return false

func _on_paper_bin_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		if(check_type(body, "paper")):
			paper_label.text = "CORRECT"
		else:
			paper_label.text = "INCORRECT"
		await get_tree().create_timer(3)
		paper_label.text = "PAPER"

func _on_metal_bin_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		if(check_type(body, "metal")):
			paper_label.text = "CORRECT"
		else:
			paper_label.text = "INCORRECT"
		await get_tree().create_timer(3)
		paper_label.text = "METAL"
func _on_plastic_bin_body_entered(body: Node3D) -> void:
	if(body is Recyclabe):
		if(check_type(body, "plastic")):
			paper_label.text = "CORRECT"
		else:
			paper_label.text = "INCORRECT"
		await get_tree().create_timer(3)
		paper_label.text = "PLASTIC"

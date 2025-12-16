# --- IN ---
func _tween_finished():
	self.is_in_animation = false
	self.is_door_open = ! self.is_door_open

func _on_body_entered(body: Node):
	if body.has_method("add_intractable_obj_info"):
		body.add_intractable_obj_info(IntractableObjectInfo.new(self , INTERACT_OPEN_DOOR))

func _on_body_exited(body: Node):
	if body.has_method("remove_intractable_obj_info"):
		body.remove_intractable_obj_info(self )

# --- OUT ---
func _tween_finished():
	self.is_in_animation = false
	self.is_door_open = !self.is_door_open

func _on_body_entered(body: Node):
	if body.has_method("add_intractable_obj_info"):
		body.add_intractable_obj_info(IntractableObjectInfo.new(self, INTERACT_OPEN_DOOR))

func _on_body_exited(body: Node):
	if body.has_method("remove_intractable_obj_info"):
		body.remove_intractable_obj_info(self)

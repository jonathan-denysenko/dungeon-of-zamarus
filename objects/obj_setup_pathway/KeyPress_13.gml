/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3B33E78D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_inst"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_dialog"
/// @DnDArgument : "layer" "layer"
/// @DnDSaveInfo : "objectid" "obj_dialog"
var _inst = instance_create_layer(x + 0, y + 0, layer, obj_dialog);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 30A17978
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18D24320
	/// @DnDInput : 3
	/// @DnDParent : 30A17978
	/// @DnDArgument : "expr" ""You saved me!""
	/// @DnDArgument : "expr_1" ""Thank you, noble traveller.""
	/// @DnDArgument : "expr_2" ""Walk carefully, there are more monsters ahead.""
	/// @DnDArgument : "var" "text[0]"
	/// @DnDArgument : "var_1" "text[1]"
	/// @DnDArgument : "var_2" "text[2]"
	text[0] = "You saved me!";
	text[1] = "Thank you, noble traveller.";
	text[2] = "Walk carefully, there are more monsters ahead.";

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7084D485
	/// @DnDInput : 2
	/// @DnDParent : 30A17978
	/// @DnDArgument : "var" "text[text_current]"
	/// @DnDArgument : "function" "string_wrap"
	/// @DnDArgument : "arg" "text[text_current]"
	/// @DnDArgument : "arg_1" "text_width"
	text[text_current] = string_wrap(text[text_current], text_width);
/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1200F8B4
/// @DnDArgument : "var" "_len"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "string_length"
/// @DnDArgument : "arg" "text[text_current]"
var _len = string_length(text[text_current]);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 417E7F83
/// @DnDArgument : "var" "char_current"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "_len"
if(char_current < _len)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 018B1048
	/// @DnDParent : 417E7F83
	/// @DnDArgument : "expr" "_len"
	/// @DnDArgument : "var" "char_current"
	char_current = _len;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3EC21C9C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38AF6949
	/// @DnDParent : 3EC21C9C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "text_current"
	text_current += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AF2F47B
	/// @DnDParent : 3EC21C9C
	/// @DnDArgument : "var" "text_current"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "text_last"
	if(text_current > text_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7048CEF9
		/// @DnDParent : 6AF2F47B
		room_restart();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3A10C3F3
	/// @DnDParent : 3EC21C9C
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 785FCA42
		/// @DnDInput : 2
		/// @DnDParent : 3A10C3F3
		/// @DnDArgument : "var" "text[text_current]"
		/// @DnDArgument : "function" "string_wrap"
		/// @DnDArgument : "arg" "text[text_current]"
		/// @DnDArgument : "arg_1" "text_width"
		text[text_current] = string_wrap(text[text_current], text_width);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53EEC67E
		/// @DnDParent : 3A10C3F3
		/// @DnDArgument : "var" "char_current"
		char_current = 0;
	}
}
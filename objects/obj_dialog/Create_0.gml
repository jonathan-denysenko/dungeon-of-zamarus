/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D3C4DA0
/// @DnDInput : 2
/// @DnDArgument : "expr" ""Hello World""
/// @DnDArgument : "expr_1" ""You saved me! Thank you, noble traveler. Be wary. There are more ahead.""
/// @DnDArgument : "var" "text[0]"
/// @DnDArgument : "var_1" "text[1]"
text[0] = "Hello World";
text[1] = "You saved me! Thank you, noble traveler. Be wary. There are more ahead.";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74ACCE57
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "300"
/// @DnDArgument : "expr_3" "32"
/// @DnDArgument : "expr_4" "32"
/// @DnDArgument : "var" "text_current"
/// @DnDArgument : "var_1" "text_last"
/// @DnDArgument : "var_2" "text_width"
/// @DnDArgument : "var_3" "text_x"
/// @DnDArgument : "var_4" "text_y"
text_current = 0;
text_last = 1;
text_width = 300;
text_x = 32;
text_y = 32;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79AA8693
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "0.25"
/// @DnDArgument : "var" "char_current"
/// @DnDArgument : "var_1" "char_speed"
char_current = 1;
char_speed = 0.25;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 43D7F514
/// @DnDInput : 2
/// @DnDArgument : "var" "text[text_current]"
/// @DnDArgument : "function" "string_wrap"
/// @DnDArgument : "arg" "text[text_current]"
/// @DnDArgument : "arg_1" "text_width"
text[text_current] = string_wrap(text[text_current], text_width);
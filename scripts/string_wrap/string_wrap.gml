/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 71E2439D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "string_wrap"
function string_wrap() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2AF24F8E
	/// @DnDParent : 71E2439D
	/// @DnDArgument : "code" "var _text_wrapped = "";$(13_10)var _space = -1;$(13_10)var _char_pos = 1;$(13_10)while (string_length(_text) >= _char_pos)$(13_10)    {$(13_10)    if (string_width(string_copy(_text, 1, _char_pos)) > _width)$(13_10)        {$(13_10)        if (_space != -1)$(13_10)            {$(13_10)            _text_wrapped += string_copy(_text, 1, _space) + "\n";$(13_10)            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));$(13_10)            _char_pos = 1;$(13_10)            _space = -1;$(13_10)            }$(13_10)        }$(13_10)    if (string_char_at(_text,_char_pos) == " ")$(13_10)        {$(13_10)        _space = _char_pos;$(13_10)        }$(13_10)    _char_pos += 1;$(13_10)    }$(13_10)if (string_length(_text) > 0)$(13_10)    {$(13_10)    _text_wrapped += _text;$(13_10)    }$(13_10)return _text_wrapped;"
	var _text_wrapped = "";
	var _space = -1;
	var _char_pos = 1;
	while (string_length(_text) >= _char_pos)
	    {
	    if (string_width(string_copy(_text, 1, _char_pos)) > _width)
	        {
	        if (_space != -1)
	            {
	            _text_wrapped += string_copy(_text, 1, _space) + "\n";
	            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));
	            _char_pos = 1;
	            _space = -1;
	            }
	        }
	    if (string_char_at(_text,_char_pos) == " ")
	        {
	        _space = _char_pos;
	        }
	    _char_pos += 1;
	    }
	if (string_length(_text) > 0)
	    {
	    _text_wrapped += _text;
	    }
	return _text_wrapped;
}
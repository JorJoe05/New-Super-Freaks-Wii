enum difficulty_levels
{
	easy = 0,
	normal,
	hard,
}

enum heart_setting_levels
{
	minimum = 0,
	maximum,
}

#macro HEART_MAX 99

/// @function difficulty_init
function difficulty_init()
{
	global.difficulty = difficulty_levels.normal;
	global.heart_setting = [0, 99];
}

/// @function hearts_minimum_set
/// @param {Int} _amount = 0
function hearts_minimum_set(_amount = 0)
{
	global.heart_setting[heart_setting_levels.minimum] = clamp(_amount, 0, HEART_MAX);
	
	gml_pragma("forceinline");
}

/// @function hearts_minimum_get
function hearts_minimum_get()
{
	return global.heart_setting[heart_setting_levels.minimum];
	
	gml_pragma("forceinline");
}

/// @function hearts_maximum_set
/// @param {Int} _amount = 0
function hearts_maximum_set(_amount = 0)
{
	global.heart_setting[heart_setting_levels.maximum] = clamp(_amount, 0, HEART_MAX);
	
	gml_pragma("forceinline");
}

/// @function hearts_maximum_get
function hearts_maximum_get()
{
	return global.heart_setting[heart_setting_levels.maximum];
	
	gml_pragma("forceinline");
}
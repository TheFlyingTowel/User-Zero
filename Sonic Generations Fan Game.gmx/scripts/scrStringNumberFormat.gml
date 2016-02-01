// ==== FUNCTION ====================================================================
// scrStringNumberFormat(Number, Places)
// ==================================================================================

    var _String, _NumPlaces;
    _String     = string(argument0);
    _NumPlaces  = argument1-string_length(_String);
    
    while(_NumPlaces) {
        _String     = "0" + _String;
        _NumPlaces -= 1;
    }
    
    return _String;

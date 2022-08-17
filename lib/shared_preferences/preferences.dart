import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  } 

  // Da el valor de la preferencia cuya key es name, si no existe todavía se le da el valor de _name
  static String get name{
    return _prefs.getString('name') ?? _name;
  }

  // Recibe un nombre y le da el valor a la preferencia 'name'
  static set name( String name ){
    _name = name;
    _prefs.setString('name', name);
  }

  static bool get isDarkMode{
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode( bool value ){
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }

    static int get gender{
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender( int value ){
    _gender = value;
    _prefs.setInt('gender', value);
  }

}
import 'package:shared_preferences/shared_preferences.dart';

class ConfSharedPreferences {
  final SharedPreferences _prefs; 

  ConfSharedPreferences._(this._prefs); 

  static Future<ConfSharedPreferences> create() async {
    final prefs = await SharedPreferences.getInstance();
    return ConfSharedPreferences._(prefs); 
  }
  savePath(String path) {
    _prefs.setString("imagePath", path);
  }
  
  String getPath() {
    return _prefs.getString("imagePath") ?? "";
  }
}
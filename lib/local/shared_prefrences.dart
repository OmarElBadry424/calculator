import 'package:shared_preferences/shared_preferences.dart';
import '../Utilites/enums.dart';


class MyCache {
  static SharedPreferences? preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }
  // key = value
  // name = "esraa"
  // Write   data

  static putString({required MyCacheKeys key, required String value}) async {
    await preferences!.setString(key.name, value) ;
  }
// Read data
  static getString({required MyCacheKeys key}) {
    return preferences!.getString(key.name)?? '' ;
  }
  static putDouble({required MyCacheKeys key, required double value}) async {
    await preferences!.setDouble(key.name, value);
  }
// Read data
  static getDouble({required MyCacheKeys key}) {
    return preferences!.getDouble(key.name)?? 0.0;
  }
// int
  static putInt({required MyCacheKeys key, required int value}) async {
    await preferences!.setInt(key.name, value);
  }
  static getInt({required MyCacheKeys key}) {
    return preferences!.getInt(key.name)?? 0;
  }
  // bool
  static putBoolean({required MyCacheKeys key, required bool value}) async {
    await preferences!.setBool(key.name, value);
  }
  static getBoolean({required MyCacheKeys key}) {
    return preferences!.getBool(key.name) ?? false;
  }
  removeFromShared({required MyCacheKeys key})async{
    await preferences!.remove(key.name);
  }

  clearShared()async{
    await preferences!.clear();
  }

}
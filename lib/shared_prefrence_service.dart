import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<void> saveData(List<String> list) async {
    final sharedPrefenreces = await SharedPreferences.getInstance();
    await sharedPrefenreces.setStringList('list', list);
  }

  Future<List<String>?> getList() async {
    final sharedPrefenreces = await SharedPreferences.getInstance();
    return sharedPrefenreces.getStringList('list');
  }
}

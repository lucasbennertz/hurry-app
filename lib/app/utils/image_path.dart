import 'package:flutter/widgets.dart';
import 'package:hurry_app/app/utils/conf_shared_preferences.dart';

class ImagePath extends ChangeNotifier {
  String? imagePath;

  void setImagePath(String? path) {
    imagePath = path;
    notifyListeners();
  }

  Future<void> loadInitialPath() async {
    final conf = await ConfSharedPreferences.create();
    final savedPath = conf.getPath();
    if (savedPath.isNotEmpty) {
      imagePath = savedPath;
      notifyListeners();
    }
  }
}
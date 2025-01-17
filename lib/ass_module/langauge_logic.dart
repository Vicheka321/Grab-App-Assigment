import 'package:flutter/material.dart';

import 'langauge_data.dart';


class LanguageLogic extends ChangeNotifier {
  Language _language = Khmer();
  Language get language => _language;
  int _langIndex = 0;
  int get langIndex => _langIndex;

  void changeToKhmer() {
    _langIndex = 0;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToEnglish() {
    _langIndex = 1;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToChinese() {
    _langIndex = 2;
    _language = languageList[_langIndex];
    notifyListeners();
  }
}

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

  void changeToThailand() {
    _langIndex = 3;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToFrance() {
    _langIndex = 4;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToIndonesia() {
    _langIndex = 5;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToKorean() {
    _langIndex = 6;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToMalay() {
    _langIndex = 7;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToJapan() {
    _langIndex = 8;
    _language = languageList[_langIndex];
    notifyListeners();
  }

  void changeToJVietnamese() {
    _langIndex = 9;
    _language = languageList[_langIndex];
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:user_model/Api/dio_service.model.dart';

import '../../models/user_model.dart';

class DioProvayder extends ChangeNotifier {
  List<UserModel> item = [];
  final _apiService = ApiService();
  Future<void> fechPost() async {
    final test = await _apiService.getPost();
    if (test != null) {
      item = test;
      notifyListeners();
    }
  }
}

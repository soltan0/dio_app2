import 'package:dio/dio.dart';
import 'package:user_model/models/user_model.dart';

final class ApiService {
  final dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  Future<List<UserModel>?> getPost() async {
    final response = await dio.get('/users');
    if (response.statusCode == 200) {
      final result = response.data;
      if (result is List) {
        return result.map((e) => UserModel.fromJson(response.data)).toList();
      }
    }
    return null;
    
  }
}

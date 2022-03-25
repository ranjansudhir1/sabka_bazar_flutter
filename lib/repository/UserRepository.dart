import 'dart:convert';

import 'package:sabka_bazar/models/UserDetails.dart';
import 'package:sabka_bazar/services/ApiService.dart';

class UserRepository {
  static ApiService<List<UserDetails>> getAll() {
    return ApiService(
        url: Uri.http("https://jsonplaceholder.typicode.com", "/posts"),
        parse: (response) {
          final parsed = json.decode(response.body);
          var data = parsed as List;
          List<UserDetails> usersDetails =
              data.map((i) => UserDetails.fromJson(i)).toList();
          return usersDetails;
        });
  }
}

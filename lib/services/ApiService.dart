import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiService<T> {
  final Uri? url;
  final dynamic body;
  T Function(http.Response response)? parse;

  ApiService({this.url, this.body, this.parse});
}

class APIWeb {
  Future<T> load<T>(ApiService<T> resource) async {
    final response = await http.get(resource.url!);
    if (response.statusCode == 200) {
      return resource.parse!(response);
    } else {
      throw Exception(response.statusCode);
    }
  }
}

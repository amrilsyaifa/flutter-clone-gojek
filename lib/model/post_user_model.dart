import 'dart:convert';

import 'package:http/http.dart' as http;

class PostUser {
  String id;
  String name;
  String job;
  String created;

  PostUser(
      {required this.id,
      required this.name,
      required this.job,
      required this.created});

  factory PostUser.createPostUser(Map<String, dynamic> object) {
    return PostUser(
        id: object["id"],
        name: object["name"],
        job: object['job'],
        created: object['createdAt']);
  }

  static Future<PostUser> connectToAPI(String name, String job) async {
    const String apiURL = "https://reqres.in/api/users";
    final Uri url = Uri.parse(apiURL);

    var resultAPI = await http.post(url, body: {"name": name, "job": job});

    var jsonObject = json.decode(resultAPI.body);

    return PostUser.createPostUser(jsonObject);
  }
}

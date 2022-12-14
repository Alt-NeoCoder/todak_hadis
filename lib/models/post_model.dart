import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.title,
    required this.body,
  });

  int id;
  String title;
  String body;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}
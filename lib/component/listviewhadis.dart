import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todak_hadis/component/searchbar.dart';
import 'package:todak_hadis/models/post_model.dart';

import '../views/senarai_hadis.dart';

Future<List<Post>> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Post>((json) => Post.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class ListViewHadis extends StatefulWidget {
  @override
  _ListViewHadis createState() => _ListViewHadis();
}

class _ListViewHadis extends State<ListViewHadis> {
  late Future<List<Post>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => 
                GestureDetector(
                  onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SenaraiHadis())),
                  child: Container(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 219, 219),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data![index].title,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 51, 57, 73),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-bold'
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(snapshot.data![index].body,
                        style: const TextStyle(
                          fontSize: 12.0,
                            color: Color.fromARGB(255, 81, 81, 81),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-reg'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        );
  }
}
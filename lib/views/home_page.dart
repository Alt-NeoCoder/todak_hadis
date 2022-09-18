import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todak_hadis/component/hadisharian.dart';
import 'package:todak_hadis/component/listviewkitab.dart';
import 'package:todak_hadis/component/searchbar.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Todak Assesment",
            style: const TextStyle(
              fontSize: 16.0,
              fontFamily: 'Montserrat-bold'
            ),
          ),
          backgroundColor: Color.fromARGB(255, 76, 85, 107), 
          actions: [
              // Navigate to the Search Screen
              IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchBar())),
                icon: const Icon(Icons.search))
          ],
          centerTitle: true,
        ),
        body: const HadisHarian(),
        // Column(
        //   children: [
        //     HadisHarian(),
        //     Padding(padding: const EdgeInsets.all(15), ),
        //     ListViewKitab(),
        //   ]
        // ),
    ),);
  }
}

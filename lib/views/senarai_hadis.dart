import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todak_hadis/component/listviewhadis.dart';
import 'package:todak_hadis/component/listviewkitab.dart';
import 'package:todak_hadis/component/searchbar.dart';
import 'package:todak_hadis/views/home_page.dart';


// void main() => runApp(MyApp());

class SenaraiHadis extends StatefulWidget {
  @override
  _SenaraiHadisState createState() => _SenaraiHadisState();
}

class _SenaraiHadisState extends State<SenaraiHadis> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Senarai Hadis",
            style: const TextStyle(
              fontSize: 16.0,
              fontFamily: 'Montserrat-bold'
            ),
          ),
          backgroundColor: Color.fromARGB(255, 76, 85, 107), 
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Color.fromARGB(255, 255, 255, 255),  ),
            onTap: () {
              Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => HomePage()));
            } ,
          ) ,
          actions: [
              // Navigate to the Search Screen
              IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchBar())),
                icon: const Icon(Icons.search))
          ],
          centerTitle: true,
        ),
        body: ListViewHadis(),
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

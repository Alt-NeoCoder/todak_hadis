import 'package:flutter/material.dart';
import 'package:todak_hadis/component/searchbar.dart';
import 'package:todak_hadis/views/senarai_kitab.dart';
  
  
/// This Widget is the main application widget.  
class HadisHarian extends StatelessWidget {
  const HadisHarian({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return Column(
      children: [
        Container(  
          height:200,
          padding: const EdgeInsets.all(15),  
          margin: const EdgeInsets.all(10),  
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                image: NetworkImage(
                        "https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=829&q=80"
                        ),
                fit: BoxFit.cover
            )
          ), 
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.all(10), //apply padding to all four sides
                child: Text("Hadis Harian",  
                    style: TextStyle(
                      color: Color.fromARGB(255, 241, 185, 44), 
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-bold'
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(6), //apply padding to all four sides
                child: Text("Sahih Muslim",  
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), 
                      fontSize: 15, 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-bold'
                    ),
                ),
              ),
              const Text("Dari 'Aisyah r.a., katanya: \"Tatkala telah lewat dua puluh sembilan malam yang aku  menghitungnya sendiri, Rasulullah saw. mulai masuk ke rumahku. Kerana itu aku berkata kepada beliau, \"Ya, Rasulullah! Bukankah anda telah bersumpah tidak akan masuk ke rumah kami selama sebulan? Menurut  hitunganku, sekarang baru dua puluh sembilan hari.\" Jawab Nabi saw., \"Sesungguhnya sebulan itu adakalanya dua puluh sembilan hari. \"",  
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 12,
                    fontFamily: 'Montserrat-reg'
                  ),
              ),
            ],
          ),
        ),
        const Text("Senarai Kitab dan Hadis",  
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), 
              fontSize: 18,
              fontFamily: 'Montserrat-bold'
            ),
        ),
        Container(
              height: 250,
              width: 450,
              padding: const EdgeInsets.all(15),  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
                ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.network('https://images.unsplash.com/photo-1589462135796-2b46e4bdd7fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80', fit: BoxFit.cover),
                ),
              ),
            ),
        Center(
          child: ElevatedButton(
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IndexPage()),
              );
            },
            child: const Text('Lihat Senarai Kitab'),
          ),
        )
      ],
    );
  }  
}  
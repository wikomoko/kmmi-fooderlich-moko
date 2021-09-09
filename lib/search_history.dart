
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Search extends SearchDelegate<String>{
  
  List <String>nama = ['salmon'];
  List <String> isi = [];


   Future<void> tambah( masuk) async {
       SharedPreferences pref = await SharedPreferences.getInstance();
        isi.add(masuk);
        pref.setStringList('memo', isi);
       dapat(masuk);
      print('isi $isi');
      print('masuk : $masuk');
    }

     Future<void> dapat( masuk) async {
       SharedPreferences pref = await SharedPreferences.getInstance();
      List <String> a = pref.getStringList('memo');
      print(a);
     nama.addAll(a);
      print(nama);
    }






  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: (){
          query = '';
        }, 
        icon: Icon(Icons.clear)
        )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (){Navigator.pop(context);},
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
  final saran = nama.where((namax){
     return namax.toLowerCase().contains(query.toLowerCase());
   });

  if(saran.isEmpty){
   tambah(query);
    // print(query);
  }

   return ListView.builder(
     itemCount: saran.length,
     itemBuilder: (context, index) {
       return ListTile(
         leading: Icon(Icons.history),
         title: Text(
           saran.elementAt(index)
         ),
       
       );
     },
     );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   final saran = nama.where((namax){
     return namax.toString().toLowerCase().contains(query.toLowerCase());
   });

   return ListView.builder(
     itemCount: saran.length,
     itemBuilder: (context, index) {
       return ListTile(
        leading: Icon(Icons.history),
         title: Text(
           saran.elementAt(index)
         ),
        trailing: Icon(Icons.north_west),
       );
     },
     );
  }
  
}
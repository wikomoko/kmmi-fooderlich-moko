
import 'package:flutter/material.dart';
import 'package:fooder_lich_2/api/getApi.dart';
import 'package:fooder_lich_2/data_from_edamame.dart';
import 'package:fooder_lich_2/screens/recipeDetail.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Search extends SearchDelegate<String> {
  List<String> nama = [];

  void tambah(masuk) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    nama.insert(0, masuk);
    pref.setStringList('memory', nama);
  }

  void dapat() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    nama.clear();
    var getDatas = pref.getStringList('memory');
    nama.addAll(getDatas);
    print(nama);
  }
  

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final saran = nama.where((namax) {
      return namax.toLowerCase().contains(query.toLowerCase());
    });

    if (saran.isEmpty) {
      tambah(query);
    }

    return FutureBuilder<Food>(
                      future: datagetter().getData(query),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.separated(
                              physics: BouncingScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return Divider();
                              },
                              itemCount: snapshot.data.hits.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: (){
                                   Navigator.push(context, MaterialPageRoute(
                                     builder: (context){
                                      return RecipeDetailPage(recipe: snapshot.data.hits[index].recipe);
                                     }
                                   ));
                              
                                  },
                                  child: ListTile(
                                    leading: Image.network(
                                        snapshot.data.hits[index].recipe.image),
                                    title: Text(
                                        snapshot.data.hits[index].recipe.label),
                                    subtitle: Text(
                                        snapshot.data.hits[index].recipe.source),
                                  ),
                                );
                              });
                        } else {
                          print("ekosng");
                        }
                        return Center(child: CircularProgressIndicator());
                      }
                      );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    dapat();
    final saran = nama.where((namax) {
      return namax.toString().toLowerCase().contains(query.toLowerCase());
    });
    print(saran.length);
    return ListView.builder(
      itemCount: saran.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            //cariDariHistory(saran.elementAt(index));
            query = saran.elementAt(index);
          },
          child: ListTile(
            leading: Icon(Icons.history),
            title: Text(saran.elementAt(index)),
            trailing: Icon(Icons.north_west),
          ),
        );
      },
    );
  }
}

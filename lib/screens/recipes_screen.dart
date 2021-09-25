
import 'package:flutter/material.dart';
import 'package:fooder_lich_2/api/getApi.dart';
import 'package:fooder_lich_2/data_from_edamame.dart';
import 'package:fooder_lich_2/screens/recipeDetail.dart';


class RecipesScreen extends StatefulWidget {
  const RecipesScreen({ Key key }) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: FutureBuilder<Food>(
                  future: datagetter().getData('salmon'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          itemCount: snapshot.data.hits.length,
                              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500,
                        ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                     builder: (context){
                                       return RecipeDetailPage(recipe: snapshot.data.hits[index].recipe);
                                     }
                                   ));
                             //     print(snapshot.data[index]['recipe']);
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(32, 16, 0, 0),          
                                 child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Expanded(
                                        child: ClipRRect(
                                              child: Image.network(snapshot.data.hits[index].recipe.image),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                     ),
                                      const SizedBox(height: 10),
                                      Text(
                                             "${snapshot.data.hits[index].recipe.label }",
                                              maxLines: 1,
                                              style: Theme.of(context).textTheme.bodyText1,
                                            ),
                                     Text( "${snapshot.data.hits[index].recipe.totalTime }",
                                              maxLines: 1,),
                                      Divider()
                                   ],
                                 ),
                              ),
                            );
                          });
                    } else {
                      print("ekosng");
                    }
                    return CircularProgressIndicator();
                  }),
            ),
          )
        ],
      ),
    );
  }
}

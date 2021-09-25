
import 'package:flutter/material.dart';

import 'package:fooder_lich_2/data_from_edamame.dart';

class RecipeDetailPage extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailPage({Key key,this.recipe}) : super(key: key);

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {

  List <Widget> myWidget = []; 
  List<String> text = [];

  @override
  Widget build(BuildContext context) {
    for(int i =0;i<widget.recipe.ingredientLines.length;i++){
      setState(() {
               myWidget.add(Text(widget.recipe.ingredientLines[i]));
               text.add(widget.recipe.ingredientLines[i]);
            });
    }
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      })),
              SizedBox(),
              SizedBox(),
            ],
          ),
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.recipe.image),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 32,),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text('${widget.recipe.label}',
          maxLines: 2,
          softWrap: true,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 24),
           child: Text('by : ${widget.recipe.source}',
        maxLines: 2,
        softWrap: true,
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,),
          ),
         ),
         Divider(),
           Padding(
           padding: const EdgeInsets.only(left: 24),
           child: Text('Ingredients : \n',
        maxLines: 2,
        softWrap: true,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
          ),
         ),
        for(var i in text)  Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text("$i \n",
          style: TextStyle(fontSize: 14),),
        ),
      ],
    )
    );
  }
}


import 'package:flutter/material.dart';

class RecipeDetailPage extends StatefulWidget {
  final Map<String, dynamic> recipe;
  const RecipeDetailPage({Key key, this.recipe}) : super(key: key);

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  @override
  Widget build(BuildContext context) {
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
                  image: NetworkImage(widget.recipe['image']),
                  fit: BoxFit.cover)),
        ),
        
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext cntx){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Prueba tamano'),
        ),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          new SliverStaggeredGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            staggeredTiles: <StaggeredTile>[
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(2, 1),
              StaggeredTile.count(1, 2),
              StaggeredTile.count(1, 2),
              StaggeredTile.count(2, 2),
              StaggeredTile.count(3, 2),
              StaggeredTile.count(3, 1)
            ],
            children: <Widget>[
              Container(
                color: Colors.yellow,
                child: FractionallySizedBox(
                  widthFactor: .95,
                  heightFactor: .95,
                  child: Container(
                    color: Colors.black,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Prueba, prueba, prueba, prueba, prueba", style: TextStyle(fontSize: 14, color: Colors.white), overflow: TextOverflow.ellipsis, maxLines: 2,),
                    )
                  )
                )
          ),
          Container(
            color: Colors.red
          ),
          Container(
            color: Colors.green
          ),
          Container(
            color: Colors.blue
          ),
          Container(
            color: Colors.purple
          ),
          Container(
            color: Colors. green[200],
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text("Prueba, prueba, prueba, prueba, prueba, prueba", style: TextStyle(fontSize: 14), overflow: TextOverflow.ellipsis,),
            )
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      )
      ]
    )
    );
  }

}
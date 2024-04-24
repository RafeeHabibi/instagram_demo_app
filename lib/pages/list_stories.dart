import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "استوری ها",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Text("مشاهده همه" , style: TextStyle(fontWeight: FontWeight.bold)),
          Icon(Icons.play_arrow)
        ],
      )
    ],
  );

  final stories = Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context , index) {
              return Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image : DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/Me.jpg'),
                        )
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  ),
                  index == 0
                      ? CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0 ,
                    child: new Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  )
                      : Container()
                ],
              );
            }),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          topText,
          stories
        ],
      ),
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_demo_app/pages/list_stories.dart';

class HomePage extends StatelessWidget {

  final Posts = Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Row>[
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Me.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Text('انستاگرام نمونه', style: TextStyle(fontFamily: 'vazir', fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.more_vert),
                )
              ],
            ),
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Image.asset('assets/images/Me.jpg'),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.bookmark_border)
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Icon(Icons.share),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.comment),
                  ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Icon(Icons.favorite_outline),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text('شما و 5000 نفر دیگر', style: TextStyle(fontFamily: 'vazir')),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/Me.jpg'),
                )
              ),
            ),
            Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'نوشتن کامنت ها...',
                    border: InputBorder.none,
                  ),
                )
            ),
          ],
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context , index) {
          return index == 0 ? SizedBox(child: ListStories(), height: deviceSize.height * 0.15,) : Posts;
        }
    );
  }

}
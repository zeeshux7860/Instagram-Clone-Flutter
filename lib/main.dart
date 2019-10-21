import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
  
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 1.0,
        leading: new IconButton(
          onPressed: (){},
          icon: Icon(Icons.camera_alt),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: new Text("InstaGram Clone",style: TextStyle(
          color: Colors.black,
          
        ),),
        actions: <Widget>[
          new IconButton(
            onPressed: (){},
            icon: Icon(Icons.live_tv),
            color: Colors.black
          ),
          new IconButton(
            onPressed: (){},
            icon: Icon(Icons.send),
            color: Colors.black
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
       
            height: 110.0,
            child: new ListView.builder(
            scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                  backgroundImage: new NetworkImage("https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo"),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Text("Your Story")
              ],
            ),
          );
        },
      ),
          ),
          new Divider(
            height: 1.0,
          ),
          new ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return  new Container(
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      leading: new CircleAvatar(
                        backgroundColor: Colors.red,
                          backgroundImage: new NetworkImage("https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo"),
                
                      ),
                      title: new Text("CtechViral"),
                      subtitle: new Text("kolkata"),
                      trailing: new IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu),
                      ),
                    ),
                    Image.network("https://scontent.fccu8-1.fna.fbcdn.net/v/t1.0-9/72899515_2424808247789487_9192494572071026688_o.jpg?_nc_cat=100&_nc_oc=AQnEXKd3-euBiFxk_ReP8-LVHEiyQX5QYIyw0gXkXgrl_T9ThVqAA7pyr60cfGlhcoYW5OUvAdkIbpp8smq-2Rfv&_nc_ht=scontent.fccu8-1.fna&oh=fb877f6ccae39240e1e2ed695d9d34a5&oe=5E18ABFA"),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                       width: 180.0,
                       child: new Row(
                         children: <Widget>[
                           new IconButton(
                             color: Colors.red,
                             icon: Icon(Icons.favorite),
                             onPressed: (){}
                           ),
                            new SizedBox(
                             width: 10.0
                           ),
                           new IconButton(
                             color: Colors.black,
                             icon: Icon(Icons.chat_bubble_outline),
                             onPressed: (){}
                           ),
                            new SizedBox(
                             width: 10.0
                           ),
                           new IconButton(
                             color: Colors.black,
                             icon: Icon(Icons.send),
                             onPressed: (){}
                           ),
                            new SizedBox(
                             width: 10.0
                           ),
                         ],
                       ),   
                        ),
                         new IconButton(
                             color: Colors.black,
                             icon: Icon(Icons.bookmark_border),
                             onPressed: (){}
                           ),
                      ],
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: bmnav.BottomNav(
        color: Colors.white,
      iconStyle: bmnav.IconStyle(
        onSelectColor: Colors.black,
       // color: Colors.white
      ),
			items: [
				bmnav.BottomNavItem(Icons.home),
				bmnav.BottomNavItem(Icons.search),
				bmnav.BottomNavItem(Icons.add),
				bmnav.BottomNavItem(Icons.favorite),
        bmnav.BottomNavItem(Icons.verified_user),
        
			],
		),
    );
  }
}
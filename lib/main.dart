import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pertivo_app/featured.dart';
import 'package:pertivo_app/popular.dart';
import 'package:pertivo_app/trending.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locations',
//      theme: ThemeData(
//        primarySwatch: Colors.red,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      home: MyHomePage(title: 'Locations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(125),
            child: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Locations',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Material(
                        color: Colors.red, // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Image(
                                image: NetworkImage(
                                    'https://i.pinimg.com/236x/4e/4a/98/4e4a988dc82bff29f06c8f587790cea1.jpg'),
                                fit: BoxFit.cover,
                              )),
                          onTap: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                      child: Text(
                    'Featured',
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    'Popular',
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    'Trending',
                    style: TextStyle(color: Colors.black),
                  )),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Featured(),
              Popular(),
              Trending(),
            ],
          ),
        ),
      ),
    );
  }
}

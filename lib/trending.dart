import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  List<String> location1 = [
    "https://assets.telegraphindia.com/telegraph/35ba88d9-1e03-4c46-90cb-ff5d06e2b1ad.jpg",
    "Statue of Unity",
    "Biggest Statue in the World",
    "15",
    "Feb"
  ];
  List<String> location2 = [
    "https://www.treebo.com/blog/wp-content/uploads/2018/08/The-Golden-Temple-Amritsar.jpg",
    "Golden Temple",
    "100% Gold used in building",
    "25",
    "Dec"
  ];
  IconData presentIcon1 = Icons.panorama_fish_eye;
  IconData presentIcon2 = Icons.panorama_fish_eye;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 5.0),
          child: Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 10.0,
                            )
                          ],
                          image: new DecorationImage(
                            image: NetworkImage(location1[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (presentIcon1 == Icons.panorama_fish_eye)
                                    presentIcon1 = Icons.check_circle_outline;
                                  else
                                    presentIcon1 = Icons.panorama_fish_eye;
                                });
                              },
                              icon: Icon(
                                presentIcon1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                            child: Text(
                              location1[1],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                location1[2],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 4, 10, 0.25),
                              child: Text(
                                location1[3],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 0.25, 10, 4),
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  location1[4],
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 8.0),
          child: Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: SizedBox(
                      width: double.infinity,
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 10.0,
                            )
                          ],
                          image: new DecorationImage(
                            image: NetworkImage(location2[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (presentIcon2 == Icons.panorama_fish_eye)
                                    presentIcon2 = Icons.check_circle_outline;
                                  else
                                    presentIcon2 = Icons.panorama_fish_eye;
                                });
                              },
                              icon: Icon(
                                presentIcon2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                            child: Text(
                              location2[1],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                location2[2],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 4, 10, 0.25),
                              child: Text(
                                location2[3],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 0.25, 10, 4),
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  location2[4],
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

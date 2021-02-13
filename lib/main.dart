import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
              label: 'Home', icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              label: 'Cart', icon: new Icon(Icons.shopping_cart)),
          new BottomNavigationBarItem(
              label: 'Favorite', icon: new Icon(Icons.favorite)),
          new BottomNavigationBarItem(
              label: 'Settings', icon: new Icon(Icons.settings))
        ],
      ),
      appBar: new AppBar(
          leading: Icon(Icons.menu),
          title: Text('Sweet Order'),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.green,
          elevation: 0.0,
      ),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: new Container(
              child: new Column(
                  children: <Widget>[
                    new SizedBox(
                      height: 15.0,
                    ),

                    //Browse by cuisine
                    Row(
                      children: <Widget>[
                        // Browse by cuisine
                        new Expanded(
                            child: new Text("Browse by cuisine",
                                style: new TextStyle(fontSize: 22.0,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                    new SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/african.jpg'),
                                    ),),),
                                new Text(
                                  "African",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/asian.jpg'),
                                    ),),),
                                new Text(
                                  "Asian",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/american.jpg'),
                                    ),),),
                                new Text(
                                  "Western",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        )
                      ],
                    ),

                    //best deals
                    new SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                            child: new Text("Best deals",
                                style: new TextStyle(fontSize: 22.0,
                                    fontWeight: FontWeight.bold))),
                        new Expanded(
                            child: new Text(
                              "View All",
                              style: new TextStyle(color: Colors.green),
                              textAlign: TextAlign.end,
                            )),
                      ],
                    ),
                    new SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/pizza.jpg'),
                                    ),),),
                                new Text(
                                  "Pizza",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/juice.jpg'),
                                    ),),),
                                new Text(
                                  "Juice",
                                  style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/fries.jpg'),
                                    ),),),
                                new Text(
                                  "Fresh Fries",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        )
                      ],
                    ),

                    //other deals
                    new SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                            child: new Text("Buy one get free 1",
                                style: new TextStyle(fontSize: 22.0,
                                    fontWeight: FontWeight.bold))),
                        new Expanded(
                            child: new Text(
                              "View All",
                              style: new TextStyle(color: Colors.green),
                              textAlign: TextAlign.end,
                            )),
                      ],
                    ),
                    new SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/african.jpg'),
                                    ),),),
                                new Text(
                                  "African",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/asian.jpg'),
                                    ),),),
                                new Text(
                                  "Asian",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Expanded(
                          child: Container(
                            height: 160.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage('assets/american.jpg'),
                                    ),),),
                                new Text(
                                  "Western",
                                  style: new TextStyle(fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],),),
                        )
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ]
    );
  }
}
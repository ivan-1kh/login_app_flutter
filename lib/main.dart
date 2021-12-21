import 'package:flutter/material.dart';
import 'package:login_app/login_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Color pageAccent = Color(0xFFFFFCC8);

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Stack(children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('./assets/galilee.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: pageAccent,
                    ),
                    width: double.infinity,
                    height: 100,
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: TextButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.wifi,
                                    ),
                                  ),
                                  Text("WiFi"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1,
                            child: TextButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.umbrella_rounded,
                                    ),
                                  ),
                                  Text("Beach"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1,
                            child: TextButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.pool,
                                    ),
                                  ),
                                  Text("Pool"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 1,
                            child: TextButton(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.bar_chart,
                                    ),
                                  ),
                                  Text("Concert"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '''Sea of Galilee''',
                      maxLines: 20,
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.arrow_back, color: Colors.white)),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.share, color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    pageAccent,
                    Color(0xFFE1FFFB),
                  ],
                )),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

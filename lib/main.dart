// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xopherw/bottomNav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chris Wong',
      home: MyHomePage(),
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
    isSmallText(screensize) {}

    var screensize = MediaQuery.of(context).size;
    String intro =
        '   Welcome to my Flutter page! I am from Malaysia born in Kota Kinabalu, Sabah. '
        'I graduated as Mechanical Engineer from Iowa State University in 2018. '
        'I have always been passionate about technology. \n\n'
        '   This is an example of what flutter can achieve besides App Development! '
        'In my free time I like to work on flutter programming like this project, and also do some python programming. '
        'I also love learning new stuff and reading books. \n\n'
        '   Anyway, I hope you enjoy my website, you may reach me in one of the medium below!';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('images/me.jpeg'),
                radius: screensize.height * 0.13,
              ),
            ),
            Container(
              height: screensize.height * 0.38,
              width: screensize.width * 0.65,
              child: Scrollbar(
                controller: ScrollController(),
                isAlwaysShown: true,
                child: ListView(
                  children: [
                    Text(
                      intro,
                      style: TextStyle(
                        fontSize: 22.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }
}

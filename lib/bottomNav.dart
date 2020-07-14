import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

const String _fibonacci = '11235813';
String _input;

class bottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: ScrollController(),
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            child: Scrollbar(
              child: Row(
                children: [
                  FlatButton(
                    onPressed: _gitURL,
                    child: Icon(MaterialCommunityIcons.github_box),
                  ),
                  FlatButton(
                    onPressed: _linkedinURL,
                    child: Icon(MaterialCommunityIcons.linkedin),
                  ),
                  FlatButton(
                    onPressed: _emailURL,
                    child: Icon(MaterialCommunityIcons.email_outline),
                  ),
                  FlatButton(
                    onPressed: _mediumURL,
                    child: Icon(MaterialCommunityIcons.medium),
                  ),
                  FlatButton(
                    onPressed: _unsplashURL,
                    child: Icon(FontAwesome.camera_retro),
                  ),
                  FlatButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => _pass(context),
                    ),
                    child: Icon(MaterialCommunityIcons.music),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_gitURL() async {
  const url = 'https://github.com/xopherw';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Site not found';
  }
}

_linkedinURL() async {
  const url = 'https://www.linkedin.com/in/chriswwl95/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Site not found';
  }
}

_emailURL() async {
  const url = 'mailto:chriswwl95@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'User not found';
  }
}

_mediumURL() async {
  const url = 'https://medium.com/@chriswwl95';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Site not found';
  }
}

_unsplashURL() async {
  const url = 'https://unsplash.com/@xopher';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Site not found';
  }
}

_pass(context) {
  return AlertDialog(
    title: Text('Password Entry'),
    actions: [
      FlatButton(
        onPressed: () {
          if (_input == _fibonacci) {
            html.window.open('http://xopherw.duckdns.org/fserver', '_top');
            Navigator.of(context).pop();
          } else {
            Navigator.of(context).pop();
          }
        },
        child: Text('Submit'),
      )
    ],
    content: TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
      onChanged: (String value) {
        _input = value;
      },
    ),
  );
}

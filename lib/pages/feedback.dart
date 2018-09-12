import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trufi_app/drawer.dart';
import 'package:trufi_app/trufi_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatefulWidget {
  static const String route = "feedback";

  FeedbackPage({Key key}) : super(key: key);

  @override
  FeedBackPageState createState() => new FeedBackPageState();
}

class FeedBackPageState extends State<FeedbackPage> {
  Future<Null> _launched;

  Future<Null> _launch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<Null> snapshot) {
    if (snapshot.hasError) {
      return new Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    TrufiLocalizations localizations = TrufiLocalizations.of(context);
    const String toLaunch = 'mailto:feedback@trufi.com?subject=Feedback';
    return Scaffold(
      appBar: AppBar(title: Text(localizations.feedback)),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: Text(
                localizations.feedbackContent,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              padding: const EdgeInsets.all(24.0),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            new RaisedButton(
              onPressed: () => setState(() {
                    _launched = _launch(toLaunch);
                  }),
              child: new Text(localizations.feedbackButton),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            new FutureBuilder<Null>(future: _launched, builder: _launchStatus),
          ],
        ),
      ),
      drawer: buildDrawer(context, FeedbackPage.route),
    );
  }
}

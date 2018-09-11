import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trufi_app/pages/about.dart';
import 'package:trufi_app/pages/feedback.dart';
import 'package:trufi_app/pages/home.dart';
import 'package:trufi_app/trufi_localizations.dart';

class TrufiDrawer extends StatefulWidget {
  String currentRoute;
  Function onLanguageChangedCallback;

  TrufiDrawer(this.currentRoute, {this.onLanguageChangedCallback});

  @override
  State<StatefulWidget> createState() {
    return DrawerState(currentRoute, onLanguageChangedCallback);
  }
}

class DrawerState extends State<TrufiDrawer> {
  String currentRoute;
  Function onLanguageChangedCallback;
  SharedPreferences sharedPreferences;
  TrufiLocalizations localizations;

  DrawerState(this.currentRoute, this.onLanguageChangedCallback);

  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      sharedPreferences = prefs;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    localizations = TrufiLocalizations.of(context);
    return buildDrawer(context, currentRoute, sharedPreferences);
  }

  Drawer buildDrawer(
      BuildContext context, String currentRoute, SharedPreferences prefs) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(localizations.title),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.linear_scale),
            title: Text(localizations.connections),
            selected: currentRoute == HomePage.route,
            onTap: () {
              Navigator.popAndPushNamed(context, HomePage.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(localizations.about),
            selected: currentRoute == AboutPage.route,
            onTap: () {
              Navigator.popAndPushNamed(context, AboutPage.route);
            },
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text(localizations.feedback),
            selected: currentRoute == FeedbackPage.route,
            onTap: () {
              Navigator.popAndPushNamed(context, FeedbackPage.route);
            },
          ),
          buildDropdownButton(prefs)
        ],
      ),
    );
  }

  Widget buildDropdownButton(SharedPreferences prefs) {
    TrufiLocalizations trufiLocalizations = TrufiLocalizations.of(context);
    return new ListTile(
      leading: Icon(Icons.language),
      title: new DropdownButton<String>(
        value:
            localizations.getLanguageString(localizations.locale.languageCode),
        onChanged: (String newValue) {
          SharedPreferences.getInstance().then((prefs) {
            String languageCode = trufiLocalizations.getLanguageCode(newValue);
            prefs.setString(
                TrufiLocalizations.SAVED_LANGUAGE_CODE, languageCode);
            trufiLocalizations.switchToLanguage(languageCode);
            if (onLanguageChangedCallback == null) {
              setState(() {
                Navigator.popAndPushNamed(context, currentRoute);
              });
            } else {
              setState(onLanguageChangedCallback);
            }
          });
        },
        items: <String>[
          localizations.spanish,
          localizations.english,
          localizations.german
        ].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
      ),
    );
  }
}

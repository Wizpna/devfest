import 'package:devfest/agenda/agenderScreen.dart';
import 'package:devfest/config/config_bloc.dart';
import 'package:devfest/map/map_page.dart';
import 'package:devfest/speakers/speakersScreen.dart';
import 'package:devfest/sponsors/sponsor_page.dart';
import 'package:devfest/teams/team_all.dart';
import 'package:devfest/universal/image_card.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:devfest/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> devFestText(context) => [
        Text(
          Devfest.welcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Devfest.descText,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
      ];

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebookF),
              onPressed: () async {
                await _launchURL("https://www.facebook.com/gdgaba/");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: () async {
                await _launchURL("https://twitter.com/gdg_aba");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.meetup),
              onPressed: () async {
                await _launchURL("https://www.meetup.com/GDG-Aba/");
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.envelope),
              onPressed: () async {
                var emailUrl = '''mailto:info@aba.gdg.ng''';
                var out = Uri.encodeFull(emailUrl);
                await _launchURL(out);
              },
            ),
          ],
        ),
      );

  Widget newActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        runSpacing: 20.0,
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AgenderScreen()));
              },
              child: Hero(
                tag: 'agenda',
                child: Ink(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: ConfigBloc().darkModeOn
                          ? Tools.hexToColor("#1f2124")
                          : Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: !ConfigBloc().darkModeOn
                          ? [
                              BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]
                          : null),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.schedule, color: Colors.red, size: 30),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Agenda")
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SpeakersScreen()));
              },
              child: Ink(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: ConfigBloc().darkModeOn
                        ? Tools.hexToColor("#1f2124")
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: !ConfigBloc().darkModeOn
                        ? [
                            BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]
                        : null),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.green, size: 30),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Speakers")
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TeamsUI()));
              },
              child: Ink(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: ConfigBloc().darkModeOn
                        ? Tools.hexToColor("#1f2124")
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: !ConfigBloc().darkModeOn
                        ? [
                            BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]
                        : null),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.orange,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Team")
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
              child: Ink(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: ConfigBloc().darkModeOn
                        ? Tools.hexToColor("#1f2124")
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: !ConfigBloc().darkModeOn
                        ? [
                            BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]
                        : null),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.map,
                      color: Colors.pink,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Location")
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SponsorPage()));
              },
              child: Ink(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: ConfigBloc().darkModeOn
                        ? Tools.hexToColor("#1f2124")
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: !ConfigBloc().darkModeOn
                        ? [
                            BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]
                        : null),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.attach_money, color: Colors.purple, size: 30),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Sponsors")
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () async {
                await _launchURL('http://aba.gdg.ng/');
              },
              child: Ink(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: ConfigBloc().darkModeOn
                        ? Tools.hexToColor("#1f2124")
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: !ConfigBloc().darkModeOn
                        ? [
                            BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]
                        : null),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.language, color: Colors.blue, size: 30),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Connect")
                  ],
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: ConfigBloc().darkModeOn
                  ? Devfest.banner_dark
                  : Devfest.banner_light,
            ),
            SizedBox(
              height: 20,
            ),
            ...devFestText(context),
            SizedBox(
              height: 20,
            ),
            newActions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context),
            SizedBox(
              height: 20,
            ),
            Text(
              'DevFest 2019',
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}

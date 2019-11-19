import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/gd.png',
                    height: 100,
//                  width: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/jetbrains.png',
                    height: 100,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/kotlin.png',
                    height: 100,
//                  width: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/firebase.png',
                    height: 100,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8, top: 15, bottom: 0),
              child: Center(
                  child: Image.asset(
                'assets/images/rad5hub.png',
                height: 100,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Image.asset(
                'assets/images/sppedmedia.jpeg',
                height: 100,
              )),
            ),
          ],
        ),
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12,
        ),
        child: Image.asset(imgUrl),
      ),
    );
  }
}

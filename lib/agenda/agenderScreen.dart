import 'package:devfest/agenda/agender_core.dart';
import 'package:devfest/agenda/agenser_ui.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class AgenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 5, bottom: 5),
                  child: Text(
                    '9:00',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 09, 00),
                endTime: DateTime(2019, 11, 9, 9, 30),
                mainTitle: 'Registration',
                duration: 30,
                speakers: []),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 9, 30),
                endTime: DateTime(2019, 11, 9, 10, 00),
                mainTitle: 'Networking',
                duration: 30,
                speakers: []),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 10, 00),
                endTime: DateTime(2019, 11, 9, 10, 07),
                mainTitle: 'Welcome Speech',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Trust Onyekwere',
                      speakerPhoto: "assets/images/trust.jpg")
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 10, 08),
                endTime: DateTime(2019, 11, 9, 10, 38),
                mainTitle: 'Keynote Speech',
                duration: 30,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Ada Oyom',
                      speakerPhoto: "assets/images/ada.jpg")
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 10, 39),
                endTime: DateTime(2019, 11, 9, 10, 53),
                mainTitle: 'Speaker 1',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Jethro Theo',
                      speakerTopic: 'Marketing Funnels For The Indie Developer',
                      speakerPhoto: "assets/images/theo.jpg"),
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 10, 54),
                endTime: DateTime(2019, 11, 9, 11, 09),
                mainTitle: 'Speaker 2',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Chiamaka Osumgba',
                      speakerTopic: 'Transition and growth in Tech',
                      speakerPhoto: "assets/images/chiamaka.jpg")
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 11, 10),
                endTime: DateTime(2019, 11, 9, 11, 40),
                mainTitle: 'Fireside chat 1',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Nnanna John',
                      speakerPhoto: "assets/images/nnanna.jpg",
                      speakerTopic: 'Starting and growing a career in tech')
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 11, 41),
                endTime: DateTime(2019, 11, 9, 11, 50),
                mainTitle: 'Entertainment',
                duration: 30,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Sister Nkechinyere',
                      speakerPhoto: "assets/images/sisterNke.jpg",
                      speakerTopic: 'Comedy')
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 11, 50),
                endTime: DateTime(2019, 11, 9, 12, 10),
                mainTitle: 'Keynote Speech',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Igwe Uguru',
                      speakerPhoto: "assets/images/igwe.jpg"),
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 12, 11),
                endTime: DateTime(2019, 11, 9, 12, 25),
                mainTitle: 'Speaker 3',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Salvation Peter',
                      speakerPhoto: "assets/images/salvation.jpg",
                      speakerTopic: 'Data and the Cloud')
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 12, 26),
                endTime: DateTime(2019, 11, 9, 12, 41),
                mainTitle: 'Speaker 4',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Buchi Ubani',
                      speakerTopic: 'Content development for developers',
                      speakerPhoto: "assets/images/buchi.jpeg")
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 12, 42),
                endTime: DateTime(2019, 11, 9, 12, 50),
                mainTitle: 'Entertainment',
                duration: 30,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Kate Ozioma',
                      speakerPhoto: "assets/images/Kate.jpeg",
                      speakerTopic: 'Ballet/Contemporary Dance')
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 12, 52),
                endTime: DateTime(2019, 11, 9, 13, 36),
                mainTitle: 'Panel Discussion',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Igwe Uguru',
                      speakerPhoto: "assets/images/igwe.jpg")
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 13, 37),
                endTime: DateTime(2019, 11, 9, 13, 46),
                mainTitle: 'Speaker 5',
                duration: 30,
                speakers: [
                  DevfestSpeaker(
                      speakerName: 'Uzoma Agba',
                      speakerPhoto: "assets/images/uzoma.jpeg",
                      speakerTopic: 'Google Tools for Developers')
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 13, 47),
                endTime: DateTime(2019, 11, 9, 14, 00),
                mainTitle: 'Photos/Networking',
                duration: 12,
                speakers: []),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 01),
                endTime: DateTime(2019, 11, 9, 14, 20),
                mainTitle: 'Lunch',
                duration: 12,
                speakers: []),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 21),
                endTime: DateTime(2019, 11, 9, 15, 10),
                mainTitle: 'Android',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                    speakerName: 'Nnenna Ogbonna',
                    speakerTopic: 'Introduction to building Android Apps',
                    speakerPhoto: "assets/images/nnenna.jpeg",
                  ),
                  DevfestSpeaker(
                    speakerName: 'Ogechi Mbaba',
                    speakerTopic: 'Careers in Android development',
                    speakerPhoto: "assets/images/ogechi.jpeg",
                  )
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 21),
                endTime: DateTime(2019, 11, 9, 15, 10),
                mainTitle: 'ARCore',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                    speakerName: 'Emmanuel David',
                    speakerTopic: 'Getting started with ARcore on Android',
                    speakerPhoto: "assets/images/iyke.jpeg",
                  ),
                  DevfestSpeaker(
                    speakerName: 'Akwa Peter',
                    speakerTopic: 'Getting started with ARcore on Android',
                    speakerPhoto: "assets/images/peter.jpeg",
                  )
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 21),
                endTime: DateTime(2019, 11, 9, 15, 10),
                mainTitle: 'Flutter',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                    speakerName: 'Promise Amadi',
                    speakerTopic: 'Getting started with Flutter',
                    speakerPhoto: "assets/images/promise.jpg",
                  ),
                  DevfestSpeaker(
                    speakerName: 'Emmanuel Sunday',
                    speakerTopic: 'Getting started with Flutter',
                    speakerPhoto: "assets/images/emmanuel.jpeg",
                  )
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 21),
                endTime: DateTime(2019, 11, 9, 15, 10),
                mainTitle: 'Kotlin',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                    speakerName: 'Pascal Chidi',
                    speakerTopic: 'Kotlin Everywhere',
                    speakerPhoto: "assets/images/pascal.jpeg",
                  )
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 14, 21),
                endTime: DateTime(2019, 11, 9, 15, 10),
                mainTitle: 'Web',
                duration: 12,
                speakers: [
                  DevfestSpeaker(
                    speakerName: 'Shulammite John',
                    speakerTopic: 'Career as a web developer',
                    speakerPhoto: "assets/images/shulammite.jpg",
                  ),
                  DevfestSpeaker(
                    speakerName: 'Solomon Eseme',
                    speakerTopic: 'Backend Development 101',
                    speakerPhoto: "assets/images/Solomon.jpg",
                  )
                ]),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 15, 10),
                endTime: DateTime(2019, 11, 9, 15, 20),
                mainTitle: 'Announcement',
                duration: 12,
                speakers: []),
          ),
          AgenderUI(
            agenderCore: AgenderCore(
                startTime: DateTime(2019, 11, 9, 15, 21),
                endTime: DateTime(2019, 11, 9, 15, 30),
                mainTitle: 'Closing remark',
                duration: 12,
                speakers: []),
          ),
        ],
      ),
      title: 'Agenda',
    );

    // return DevScaffold(body: ListView.builder(
    //   shrinkWrap: false,
    //   itemCount: sessions.length,
    //   itemBuilder: (c, i) {
    //     return Card(
    //       elevation: 0.0,
    //       child: ListTile(
    //         onTap: () {},
    //         // dense: true,
    //         isThreeLine: true,
    //         trailing: RichText(
    //           textAlign: TextAlign.center,
    //           text: TextSpan(
    //             text: "${sessions[i].sessionTotalTime}\n",
    //             style: Theme.of(context)
    //                 .textTheme
    //                 .title
    //                 .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
    //             children: [
    //               TextSpan(
    //                 text: sessions[i].sessionStartTime,
    //                 style: Theme.of(context).textTheme.subtitle.copyWith(
    //                       fontSize: 12,
    //                     ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         leading: Hero(
    //           tag: sessions[i].speakerImage,
    //           child: CircleAvatar(
    //             radius: 30,
    //             backgroundImage:
    //                 CachedNetworkImageProvider(sessions[i].speakerImage),
    //           ),
    //         ),
    //         title: RichText(
    //           text: TextSpan(
    //             text: "${sessions[i].sessionTitle}\n",
    //             style: Theme.of(context).textTheme.title.copyWith(fontSize: 16),
    //             children: [
    //               TextSpan(
    //                   text: sessions[i].speakerName,
    //                   style: Theme.of(context).textTheme.subtitle.copyWith(
    //                         fontSize: 14,
    //                         color: Tools.multiColors[Random().nextInt(4)],
    //                       ),
    //                   children: []),
    //             ],
    //           ),
    //         ),
    //         subtitle: Text(
    //           sessions[i].speakerDesc,
    //           style: Theme.of(context).textTheme.caption.copyWith(
    //                 fontSize: 10.0,
    //               ),
    //         ),
    //       ),
    //     );

    // },

    // ), title: "Agender",);
  }
}

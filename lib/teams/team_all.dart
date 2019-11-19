import 'package:devfest/teams/in_team.dart';
import 'package:devfest/teams/member.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class TeamsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: 'Teams',
      body: ListView(physics: BouncingScrollPhysics(), children: <Widget>[
        ListTile(
          title: Text('Media/Content'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Media/Content', members: [
                          Member(
                              personName: 'Maduabuchi Ubani',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'Uche Sylvester',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Divine Etim',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Precious Ezema',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Timothy',
                              leader: false,
                              assistant: false)
                        ])));
          },
        ),
        ListTile(
          title: Text('Graphics'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Graphics', members: [
                          Member(
                              personName: 'Michael Omoniyi',
                              assistant: false,
                              leader: true),
                          Member(
                              personName: 'Finest',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Ibiam Chinenye',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Chikwado Friday',
                              leader: false,
                              assistant: false),
                        ])));
          },
        ),
        ListTile(
          title: Text('Technical'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Technical', members: [
                          Member(
                              personName: 'Ezema Ikechukwu',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'Ukaegbu Prosper',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Promise Amadi',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Daniel Onuoha A.',
                              leader: false,
                              assistant: false),
                        ])));
          },
        ),
        ListTile(
          title: Text('Registration/Protocol'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TeamMembers(
                            teamName: 'Registration/Protocol',
                            members: [
                              Member(
                                  personName: 'Judith Orji',
                                  leader: true,
                                  assistant: false),
                              Member(
                                  personName: 'Pascal Chidi',
                                  leader: false,
                                  assistant: true),
                              Member(
                                  personName: 'Moses Joshua C',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'John Shulammite Joyful',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Chidi Joy',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Lilian Thomas',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Chidi Joy',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Nwafor Emmanuel',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Chime Theodore',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Nwujiokah Godstime',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Jordan Erugoh',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Ogechi Mbaba',
                                  leader: false,
                                  assistant: false),
                            ])));
          },
        ),
        ListTile(
          title: Text('Sponsors'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Sponsors', members: [
                          Member(
                              personName: 'Amaram Justice',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'Pascal Chidi',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Osumgba Kindness',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Ibiam Chinenye',
                              leader: false,
                              assistant: false),
                        ])));
          },
        ),
        ListTile(
          title: Text('Photography'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Photography', members: [
                          Member(
                              personName: 'Akwa Peter',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'Dennis Candor',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Jordan Erugoh',
                              leader: false,
                              assistant: false),
                        ])));
          },
        ),
        ListTile(
          title: Text('Speaker/Guest Handlers'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TeamMembers(
                            teamName: 'Speaker/Guest Handlers',
                            members: [
                              Member(
                                  personName: 'Osumgba Chiamaka',
                                  leader: true,
                                  assistant: false),
                              Member(
                                  personName: 'Maduabuchi Ubani',
                                  leader: false,
                                  assistant: true),
                              Member(
                                  personName: 'Charmbalin Ezigbo',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Amaram Justice',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Emmanuel Ikechukwu',
                                  leader: false,
                                  assistant: false),
                              Member(
                                  personName: 'Nwafor Emmanuel',
                                  leader: false,
                                  assistant: false),
                            ])));
          },
        ),
        ListTile(
          title: Text('Refreshment'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Refreshment', members: [
                          Member(
                              personName: 'Dennis Candor',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'Ndubuisi A.',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Judith Orji',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Chidi Joy',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Ogechi Mbaba',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Lilian Thomas',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Nwujiokah Godstime',
                              leader: false,
                              assistant: false),
                        ])));
          },
        ),
        ListTile(
          title: Text('Swags'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TeamMembers(teamName: 'Swags', members: [
                          Member(
                              personName: 'Kalu Chinedu U.',
                              leader: true,
                              assistant: false),
                          Member(
                              personName: 'John Shulammite',
                              leader: false,
                              assistant: true),
                          Member(
                              personName: 'Lilian Thomas',
                              leader: false,
                              assistant: false),
                          Member(
                              personName: 'Ndubuisi Agbandu',
                              leader: false,
                              assistant: false)
                        ])));
          },
        ),
      ]),
    );
  }
}

import 'package:devfest/teams/member.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class TeamMembers extends StatelessWidget {
  final List<Member> members;
  final String teamName;

  TeamMembers({this.members, this.teamName});

  List<Widget> getMemberWidgets() {
    List<Widget> membersWidgets = [];
    for (int i = 0; i < members.length; i++) {
      membersWidgets.add(ListTile(
        title: Text(members[i].personName),
        trailing: (members[i].leader)
            ? Text('Leader')
            : (members[i].assistant) ? Text('Assistant') : null,
      ));
    }
    return membersWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
        title: teamName,
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: getMemberWidgets(),
        ));
  }
}

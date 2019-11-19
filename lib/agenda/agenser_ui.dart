import 'package:devfest/agenda/agender_core.dart';
import 'package:devfest/config/index.dart';
import 'package:flutter/material.dart';

class AgenderUI extends StatefulWidget {
  final AgenderCore agenderCore;

  AgenderUI({this.agenderCore});

  @override
  _AgenderUIState createState() => _AgenderUIState();
}

class _AgenderUIState extends State<AgenderUI> {
  List<Widget> getSpeakers(List<DevfestSpeaker> speakers) {
    List<Widget> devFestSpeakerWidgets = [];

    for (int i = 0; i < speakers.length; i++) {
      Widget ui = Padding(
          padding: EdgeInsets.only(left: 0),
          child: ListTile(
            leading: ClipOval(child: Image.asset(speakers[i].speakerPhoto)),
            title: Text(
              speakers[i].speakerName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            contentPadding: EdgeInsets.only(left: 5),
            subtitle: (speakers[i].speakerTopic == null)
                ? null
                : Text(
                    speakers[i].speakerTopic,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
          ));
      devFestSpeakerWidgets.add(ui);
    }
    return devFestSpeakerWidgets;
  }

  Duration getDiff(DateTime start, DateTime end) {
    int mldiff = end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
    return Duration(milliseconds: mldiff);
  }

  Future<bool> current(DateTime start, DateTime end) async {
    DateTime now = DateTime.now();
    if (start.isBefore(DateTime.now()) &&
        end.isAfter(DateTime.now()) &&
        DateTime.now().day == 9 &&
        DateTime.now().month == 11) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: current(widget.agenderCore.startTime, widget.agenderCore.endTime)
          .asStream(),
      builder: (ctx, snapshot) {
        while (snapshot.connectionState == ConnectionState.waiting ||
            !snapshot.hasData) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Divider(),
          );
        }
        try {
          return Container(
            //elevation: 0,
            color: (snapshot.data)
                ? Colors.blue
                : ConfigBloc().darkModeOn ? Colors.black : Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0),
                    child: Container(
                      height: 15,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 5,
                                  color:
                                      (snapshot.data && ConfigBloc().darkModeOn)
                                          ? Colors.grey.shade900
                                          : Colors.grey.shade600))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.agenderCore.mainTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: (snapshot.data)
                                ? Colors.black
                                : ConfigBloc().darkModeOn
                                    ? Colors.white
                                    : Colors.black),
                      ),
                      Text(
                        getDiff(widget.agenderCore.startTime,
                                    widget.agenderCore.endTime)
                                .inMinutes
                                .toString() +
                            " mins",
                        style: TextStyle(
                            fontSize: 17,
                            color: (snapshot.data)
                                ? Colors.grey.shade100
                                : Colors.grey.shade500,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          width: 5,
                                          color: Colors.grey.shade600))),
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      getSpeakers(widget.agenderCore.speakers),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: ConfigBloc().darkModeOn
                                ? Colors.black
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15, top: 5, bottom: 5),
                              child: Text(
                                widget.agenderCore.endTime.hour.toString() +
                                    ':' +
                                    widget.agenderCore.endTime.minute
                                        .toString(),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        } catch (e) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Divider(),
          );
        }
      },
    );
  }
}

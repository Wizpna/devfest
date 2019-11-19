class AgenderCore {
  final String mainTitle;
  final int duration;
  final List<DevfestSpeaker> speakers;
  final int id;
  final DateTime startTime;
  final DateTime endTime;

  AgenderCore(
      {this.mainTitle,
      this.duration,
      this.speakers,
      this.id,
      this.startTime,
      this.endTime});
}

class DevfestSpeaker {
  final String speakerName;
  final String speakerTopic;
  final String speakerPhoto;

  DevfestSpeaker({this.speakerName, this.speakerTopic, this.speakerPhoto});
}

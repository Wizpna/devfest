class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage: "assets/images/ada.jpg",
    speakerName: "Ada Oyom",
    speakerDesc: "Software Developer",
  ),
  Speaker(
    speakerImage: "assets/images/trust.jpg",
    speakerName: "Trust Onyekwere",
    speakerDesc: "Program Manager, Rad5 Tech Hub",
  ),
  Speaker(
    speakerImage: "assets/images/igwe.jpg",
    speakerName: "Igwe Uguru",
    speakerDesc: "Co-founder & Innovation Strategist at RAD5 Tech Hub",
  ),
  Speaker(
    speakerImage: "assets/images/nnanna.jpg",
    speakerName: "Nnanna John",
    speakerDesc: "Tech Community Influencer. Rad5 Tech Hub",
  ),
  Speaker(
    speakerImage: "assets/images/chiamaka.jpg",
    speakerName: "Chiamaka Osumgba",
    speakerDesc: "Software Developer, Women Techmakers Lead Aba",
  ),
  Speaker(
    speakerImage: "assets/images/theo.jpg",
    speakerName: "Jethro Theo",
    speakerDesc: "Copywriter, Internet Marketer, Funnel Developer and Captain.",
  ),
  Speaker(
    speakerImage: "assets/images/salvation.jpg",
    speakerName: "Salvation Peter",
    speakerDesc: "Python Developer, Data Scientist. Rad5 Tech Hub.",
  ),
  Speaker(
    speakerImage: "assets/images/buchi.jpeg",
    speakerName: "Buchi Ubani",
    speakerDesc:
        "Writer, Content Developer, Creative Strategist and Start-up Storyteller",
  ),
  Speaker(
    speakerImage: "assets/images/uzoma.jpeg",
    speakerName: "Uzoma Agba",
    speakerDesc:
        "Digital and brand strategist for corporate organisation and startups.",
  ),
  Speaker(
    speakerImage: "assets/images/promise.jpg",
    speakerName: "Amadi Promise",
    speakerDesc:
        " Expert Android Developer and Certified Flutter Developer, Rad5 Tech Hub.",
  ),
  Speaker(
    speakerImage: "assets/images/emmanuel.jpeg",
    speakerName: "Emmanuel Sunday",
    speakerDesc:
        "FLutter Mobile App developer, Backend Engineer. Rad5 Tech Hub.",
  ),
  Speaker(
    speakerImage: "assets/images/pascal.jpeg",
    speakerName: "Pascal Chidi",
    speakerDesc: "Android Kotlin Developer, Rad5 Tech Hub.",
  ),
  Speaker(
    speakerImage: "assets/images/peter.jpeg",
    speakerName: "Akwa Peter",
    speakerDesc:
        "Lead Mobile Developer and Front-End Designer at RAD5 Tech Hub",
  ),
  Speaker(
    speakerImage: "assets/images/iyke.jpeg",
    speakerName: 'Emmanuel David',
    speakerDesc: "Android developer, Rad5 Tech Hub.",
  ),
  Speaker(
    speakerImage: "assets/images/shulammite.jpg",
    speakerName: "Shulammite John",
    speakerDesc: "Web Developer, Tech instructor and Tech ecosystem activist.",
  ),
  Speaker(
    speakerImage: "assets/images/Solomon.jpg",
    speakerName: "Solomon Eseme",
    speakerDesc: "Software Developer",
  ),
  Speaker(
    speakerImage: "assets/images/nnenna.jpeg",
    speakerName: 'Nnenna Ogbonna',
    speakerDesc: "Android Developer.",
  ),
  Speaker(
    speakerImage: "assets/images/ogechi.jpeg",
    speakerName: "Ogechi Mbaba",
    speakerDesc: "Android Developer",
  ),
];

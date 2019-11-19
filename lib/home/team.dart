class TeamData {
  List<Team> team;

  TeamData({this.team});

  TeamData.fromJson(Map<String, dynamic> json) {
    if (json['team'] != null) {
      team = new List<Team>();
      json['team'].forEach((v) {
        team.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.team != null) {
      data['team'] = this.team.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String teamId;
  String teamName;
  String teamRole;
  String teamImage;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;

  Team(
      {this.teamId,
      this.teamName,
      this.teamImage,
      this.twitterUrl,
      this.fbUrl,
      this.githubUrl,
      this.linkedinUrl,
      this.teamRole});

  Team.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    teamName = json['team_Name'];
    teamImage = json['team_image'];
    twitterUrl = json['team_twitterUrl'];
    teamRole = json['team_role'];
    githubUrl = json['github_url'];
    fbUrl = json['fb_url'];
    linkedinUrl = json['linkedin_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['team_Name'] = this.teamName;
    data['team_image'] = this.teamImage;
    data['team_twitterUrl'] = this.twitterUrl;
    data['team_role'] = this.teamRole;
    data['github_url'] = this.githubUrl;
    data['fb_url'] = this.fbUrl;
    data['linkedin_url'] = this.linkedinUrl;
    return data;
  }
}

List<Team> team = [
  Team(
    teamImage: "assets/images/chiamaka.jpg",
    teamName: "Chiamaka Osumgba",
    teamRole: "Google Developer Expert, Flutter",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/theo.jpg",
    teamName: "Jethro Theo",
    teamRole: "Software Developer, DMod Labs",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/salvation.jpg",
    teamName: "Salvation Peter",
    teamRole: "Software Engineer, Byte Default",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/buchi.jpg",
    teamName: "Buchi Ubani",
    teamRole: "Tech Architect, Investor, Tutor",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/uzoma.jpeg",
    teamName: "Uzoma Agba",
    teamRole: "Sr. Staff Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/promise.jpg",
    teamName: "Amadi Promise",
    teamRole: "Web Developer Advocate, Mozilla Foundation",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/chiamaka.jpg",
    teamName: "Emmanuel Sunday",
    teamRole: "Software Developer, Big Nerd Ranch",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/chiamaka.jpg",
    teamName: "Pascal Chidi",
    teamRole: "Web Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/peter.jpeg",
    teamName: "Akwa Peter",
    teamRole: "Web Developer Advocate, Mozilla Foundation",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/chiamaka.jpg",
    teamName: 'Emmanuel David',
    teamRole: "Software Developer, Big Nerd Ranch",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/chiamaka.jpg",
    teamName: "Shulammite John",
    teamRole: "Web Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/peter.jpeg",
    teamName: "Solomon Eseme",
    teamRole: "Web Developer Advocate, Mozilla Foundation",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/nnenna.jpeg",
    teamName: 'Nnenna Ogbonna',
    teamRole: "Software Developer, Big Nerd Ranch",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Team(
    teamImage: "assets/images/ogechi.jpeg",
    teamName: "Ogechi Mbaba",
    teamRole: "Web Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
];

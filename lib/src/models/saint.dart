class Saint {
  int id;
  String name;
  String title;
  String titleGenitive;
  String sex;
  int newmartyr;
  int priority;
  String description;
  String uri;
  String url;
  String linkToService;
  String worldlyActivities;
  int number;
  int group;
  int splitGroup;
  int combinedGroup;
  int hideIdeograph;
  String typeOfSanctity;
  String churchTitle;
  String churchTitleGenitive;
  String typeOfSanctityPlural;
  String churchTitlePlural;
  String typeOfSanctityComplete;
  String typeOfSanctityCompleteFemale;
  int enableChurchTitle;
  int enableTypeOfSanctity;
  String prefix;
  String suffix;
  int dateId;
  String union;
  int ideograph;
  int bold;
  int isCathedral;
  int saintsDatesStatsFltr;
  List<Imgs> imgs;
  List<Taks> taks;
  // List<Null> caa;
  // List<Dates> dates;

  Saint(
      {this.id,
      this.name,
      this.title,
      this.titleGenitive,
      this.sex,
      this.newmartyr,
      this.priority,
      this.description,
      this.uri,
      this.url,
      this.linkToService,
      this.worldlyActivities,
      this.number,
      this.group,
      this.splitGroup,
      this.combinedGroup,
      this.hideIdeograph,
      this.typeOfSanctity,
      this.churchTitle,
      this.churchTitleGenitive,
      this.typeOfSanctityPlural,
      this.churchTitlePlural,
      this.typeOfSanctityComplete,
      this.typeOfSanctityCompleteFemale,
      this.enableChurchTitle,
      this.enableTypeOfSanctity,
      this.prefix,
      this.suffix,
      this.dateId,
      this.union,
      this.ideograph,
      this.bold,
      this.isCathedral,
      this.saintsDatesStatsFltr,
      this.imgs,
      this.taks,
      // this.caa,
      // this.dates
      });

  Saint.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    titleGenitive = json['title_genitive'];
    sex = json['sex'];
    newmartyr = json['newmartyr'];
    priority = json['priority'];
    description = json['description'];
    uri = json['uri'];
    url = json['url'];
    linkToService = json['link_to_service'];
    worldlyActivities = json['worldly_activities'];
    number = json['number'];
    group = json['group'];
    splitGroup = json['split_group'];
    combinedGroup = json['combined_group'];
    hideIdeograph = json['hide_ideograph'];
    typeOfSanctity = json['type_of_sanctity'];
    churchTitle = json['church_title'];
    churchTitleGenitive = json['church_title_genitive'];
    typeOfSanctityPlural = json['type_of_sanctity_plural'];
    churchTitlePlural = json['church_title_plural'];
    typeOfSanctityComplete = json['type_of_sanctity_complete'];
    typeOfSanctityCompleteFemale = json['type_of_sanctity_complete_female'];
    enableChurchTitle = json['enable_church_title'];
    enableTypeOfSanctity = json['enable_type_of_sanctity'];
    prefix = json['prefix'];
    suffix = json['suffix'];
    dateId = json['date_id'];
    union = json['union'];
    ideograph = json['ideograph'];
    bold = json['bold'];
    isCathedral = json['is_cathedral'];
    saintsDatesStatsFltr = json['saints_dates_stats_fltr'];
    if (json['imgs'] != null) {
      imgs = new List<Imgs>();
      json['imgs'].forEach((v) {
        imgs.add(new Imgs.fromJson(v));
      });
    }
    if (json['taks'] != null) {
      taks = new List<Taks>();
      json['taks'].forEach((v) {
        taks.add(new Taks.fromJson(v));
      });
    }
    // if (json['caa'] != null) {
    //   caa = new List<Null>();
    //   json['caa'].forEach((v) {
    //     caa.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['dates'] != null) {
    //   dates = new List<Dates>();
    //   json['dates'].forEach((v) {
    //     dates.add(new Dates.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['title_genitive'] = this.titleGenitive;
    data['sex'] = this.sex;
    data['newmartyr'] = this.newmartyr;
    data['priority'] = this.priority;
    data['description'] = this.description;
    data['uri'] = this.uri;
    data['url'] = this.url;
    data['link_to_service'] = this.linkToService;
    data['worldly_activities'] = this.worldlyActivities;
    data['number'] = this.number;
    data['group'] = this.group;
    data['split_group'] = this.splitGroup;
    data['combined_group'] = this.combinedGroup;
    data['hide_ideograph'] = this.hideIdeograph;
    data['type_of_sanctity'] = this.typeOfSanctity;
    data['church_title'] = this.churchTitle;
    data['church_title_genitive'] = this.churchTitleGenitive;
    data['type_of_sanctity_plural'] = this.typeOfSanctityPlural;
    data['church_title_plural'] = this.churchTitlePlural;
    data['type_of_sanctity_complete'] = this.typeOfSanctityComplete;
    data['type_of_sanctity_complete_female'] =
        this.typeOfSanctityCompleteFemale;
    data['enable_church_title'] = this.enableChurchTitle;
    data['enable_type_of_sanctity'] = this.enableTypeOfSanctity;
    data['prefix'] = this.prefix;
    data['suffix'] = this.suffix;
    data['date_id'] = this.dateId;
    data['union'] = this.union;
    data['ideograph'] = this.ideograph;
    data['bold'] = this.bold;
    data['is_cathedral'] = this.isCathedral;
    data['saints_dates_stats_fltr'] = this.saintsDatesStatsFltr;
    if (this.imgs != null) {
      data['imgs'] = this.imgs.map((v) => v.toJson()).toList();
    }
    if (this.taks != null) {
      data['taks'] = this.taks.map((v) => v.toJson()).toList();
    }
    // if (this.caa != null) {
    //   data['caa'] = this.caa.map((v) => v.toJson()).toList();
    // }
    // if (this.dates != null) {
    //   data['dates'] = this.dates.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Imgs {
  int id;
  String title;
  String image;
  int saintId;
  int priority;
  String description;
  int onlyMain;
  String preview;

  Imgs(
      {this.id,
      this.title,
      this.image,
      this.saintId,
      this.priority,
      this.description,
      this.onlyMain,
      this.preview});

  Imgs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    saintId = json['saint_id'];
    priority = json['priority'];
    description = json['description'];
    onlyMain = json['only_main'];
    preview = json['preview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['saint_id'] = this.saintId;
    data['priority'] = this.priority;
    data['description'] = this.description;
    data['only_main'] = this.onlyMain;
    data['preview'] = this.preview;
    return data;
  }
}

class Taks {
  int id;
  String type;
  String text;
  String title;
  String voice;
  int priority;
  String audioSource;

  Taks(
      {this.id,
      this.type,
      this.text,
      this.title,
      this.voice,
      this.priority,
      this.audioSource});

  Taks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    text = json['text'];
    title = json['title'];
    voice = json['voice'];
    priority = json['priority'];
    audioSource = json['audio_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['text'] = this.text;
    data['title'] = this.title;
    data['voice'] = this.voice;
    data['priority'] = this.priority;
    data['audio_source'] = this.audioSource;
    return data;
  }
}

class Dates {
  int id;
  int type;
  int dateId;
  int priority;
  int number;
  int group;
  int enableChurchTitle;
  int enableTypeOfSanctity;
  String suffix;
  String prefix;
  String union;
  String explanation;
  int bold;
  int splitGroup;
  int combinedGroup;
  int ideograph;
  int hideIdeograph;
  int calcDateTimestamp;
  String calcDate;
  String calcDateUrl;

  Dates(
      {this.id,
      this.type,
      this.dateId,
      this.priority,
      this.number,
      this.group,
      this.enableChurchTitle,
      this.enableTypeOfSanctity,
      this.suffix,
      this.prefix,
      this.union,
      this.explanation,
      this.bold,
      this.splitGroup,
      this.combinedGroup,
      this.ideograph,
      this.hideIdeograph,
      this.calcDateTimestamp,
      this.calcDate,
      this.calcDateUrl});

  Dates.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    dateId = json['date_id'];
    priority = json['priority'];
    number = json['number'];
    group = json['group'];
    enableChurchTitle = json['enable_church_title'];
    enableTypeOfSanctity = json['enable_type_of_sanctity'];
    suffix = json['suffix'];
    prefix = json['prefix'];
    union = json['union'];
    explanation = json['explanation'];
    bold = json['bold'];
    splitGroup = json['split_group'];
    combinedGroup = json['combined_group'];
    ideograph = json['ideograph'];
    hideIdeograph = json['hide_ideograph'];
    calcDateTimestamp = json['calc_date_timestamp'];
    calcDate = json['calc_date'];
    calcDateUrl = json['calc_date_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['date_id'] = this.dateId;
    data['priority'] = this.priority;
    data['number'] = this.number;
    data['group'] = this.group;
    data['enable_church_title'] = this.enableChurchTitle;
    data['enable_type_of_sanctity'] = this.enableTypeOfSanctity;
    data['suffix'] = this.suffix;
    data['prefix'] = this.prefix;
    data['union'] = this.union;
    data['explanation'] = this.explanation;
    data['bold'] = this.bold;
    data['split_group'] = this.splitGroup;
    data['combined_group'] = this.combinedGroup;
    data['ideograph'] = this.ideograph;
    data['hide_ideograph'] = this.hideIdeograph;
    data['calc_date_timestamp'] = this.calcDateTimestamp;
    data['calc_date'] = this.calcDate;
    data['calc_date_url'] = this.calcDateUrl;
    return data;
  }
}

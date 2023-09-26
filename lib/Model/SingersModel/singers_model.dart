class SingersModel {
  String? sId;
  String? singerName;
  String? born;
  String? died;
  String? nationality;
  List<OtherNames>? otherNames;
  List<Occupations>? occupations;
  String? yearOfActive;
  List<Spouses>? spouses;
  List<Children>? children;
  List<Awards>? awards;
  String? profileImage;
  int? iV;

  SingersModel(
      {this.sId,
        this.singerName,
        this.born,
        this.died,
        this.nationality,
        this.otherNames,
        this.occupations,
        this.yearOfActive,
        this.spouses,
        this.children,
        this.awards,
        this.profileImage,
        this.iV});

  SingersModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    singerName = json['singerName'];
    born = json['born'];
    died = json['died'];
    nationality = json['nationality'];
    if (json['otherNames'] != null) {
      otherNames = <OtherNames>[];
      json['otherNames'].forEach((v) {
        otherNames!.add(OtherNames.fromJson(v));
      });
    }
    if (json['occupations'] != null) {
      occupations = <Occupations>[];
      json['occupations'].forEach((v) {
        occupations!.add(Occupations.fromJson(v));
      });
    }
    yearOfActive = json['yearOfActive'];
    if (json['spouses'] != null) {
      spouses = <Spouses>[];
      json['spouses'].forEach((v) {
        spouses!.add(Spouses.fromJson(v));
      });
    }
    if (json['children'] != null) {
      children = <Children>[];
      json['children'].forEach((v) {
        children!.add(Children.fromJson(v));
      });
    }
    if (json['awards'] != null) {
      awards = <Awards>[];
      json['awards'].forEach((v) {
        awards!.add(Awards.fromJson(v));
      });
    }
    profileImage = json['profileImage'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['singerName'] = singerName;
    data['born'] = born;
    data['died'] = died;
    data['nationality'] = nationality;
    if (otherNames != null) {
      data['otherNames'] = otherNames!.map((v) => v.toJson()).toList();
    }
    if (occupations != null) {
      data['occupations'] = occupations!.map((v) => v.toJson()).toList();
    }
    data['yearOfActive'] = yearOfActive;
    if (spouses != null) {
      data['spouses'] = spouses!.map((v) => v.toJson()).toList();
    }
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    if (awards != null) {
      data['awards'] = awards!.map((v) => v.toJson()).toList();
    }
    data['profileImage'] = profileImage;
    data['__v'] = iV;
    return data;
  }
}

class OtherNames {
  String? name;
  String? sId;

  OtherNames({this.name, this.sId});

  OtherNames.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['_id'] = sId;
    return data;
  }
}
class Occupations {
  String? name;
  String? sId;

  Occupations({this.name, this.sId});

  Occupations.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['_id'] = sId;
    return data;
  }
}
class Spouses {
  String? name;
  String? sId;

  Spouses({this.name, this.sId});

  Spouses.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['_id'] = sId;
    return data;
  }
}
class Children {
  String? name;
  String? sId;

  Children({this.name, this.sId});

  Children.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['_id'] = sId;
    return data;
  }
}
class Awards {
  String? name;
  String? sId;

  Awards({this.name, this.sId});

  Awards.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['_id'] = sId;
    return data;
  }
}
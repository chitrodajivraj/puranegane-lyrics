class HomeCategoryModel {
  String? id;
  String? image;
  String? totalSongs;
  String? artiestName;

  HomeCategoryModel({
    this.id,
    this.image,
    this.totalSongs,
    this.artiestName,
  });

  HomeCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    totalSongs = json['totalSongs'];
    artiestName = json['artiestName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['totalSongs'] = this.totalSongs;
    data['artiestName'] = this.artiestName;
    return data;
  }
}
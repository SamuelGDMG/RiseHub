

class Startup {
  String id;
  String name;
  String description;
  String slug;
  int isVerified;
  String createdAt;
  String updatedAt;
  String employees;
  String businessPhase;
  String uf;
  String state;
  String city;
  String place;
  int isActive;
  String segments;

  Startup(
      {this.id,
        this.name,
        this.description,
        this.slug,
        this.isVerified,
        this.createdAt,
        this.updatedAt,
        this.employees,
        this.businessPhase,
        this.uf,
        this.state,
        this.city,
        this.place,
        this.isActive,
        this.segments});

  Startup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    slug = json['slug'];
    isVerified = json['is_verified'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    employees = json['employees'];
    businessPhase = json['business_phase'];
    uf = json['uf'];
    state = json['state'];
    city = json['city'];
    place = json['place'];
    isActive = json['is_active'];
    segments = json['segments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['is_verified'] = this.isVerified;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['employees'] = this.employees;
    data['business_phase'] = this.businessPhase;
    data['uf'] = this.uf;
    data['state'] = this.state;
    data['city'] = this.city;
    data['place'] = this.place;
    data['is_active'] = this.isActive;
    data['segments'] = this.segments;
    return data;
  }
}
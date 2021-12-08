
class SpeciesResponse {
  String _name;
  String _classification;
  String _designation;
  String _averageHeight;
  String _skinColors;
  String _hairColors;
  String _eyeColors;
  String _averageLifespan;
  String _homeworld;
  String _language;
  List<String> _people;
  List<String> _films;
  String _created;
  String _edited;
  String _url;

  SpeciesResponse(
      {String name,
      String classification,
      String designation,
      String averageHeight,
      String skinColors,
      String hairColors,
      String eyeColors,
      String averageLifespan,
      String homeworld,
      String language,
      List<String> people,
      List<String> films,
      String created,
      String edited,
      String url}) {
    this._name = name;
    this._classification = classification;
    this._designation = designation;
    this._averageHeight = averageHeight;
    this._skinColors = skinColors;
    this._hairColors = hairColors;
    this._eyeColors = eyeColors;
    this._averageLifespan = averageLifespan;
    this._homeworld = homeworld;
    this._language = language;
    this._people = people;
    this._films = films;
    this._created = created;
    this._edited = edited;
    this._url = url;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get classification => _classification;
  set classification(String classification) => _classification = classification;
  String get designation => _designation;
  set designation(String designation) => _designation = designation;
  String get averageHeight => _averageHeight;
  set averageHeight(String averageHeight) => _averageHeight = averageHeight;
  String get skinColors => _skinColors;
  set skinColors(String skinColors) => _skinColors = skinColors;
  String get hairColors => _hairColors;
  set hairColors(String hairColors) => _hairColors = hairColors;
  String get eyeColors => _eyeColors;
  set eyeColors(String eyeColors) => _eyeColors = eyeColors;
  String get averageLifespan => _averageLifespan;
  set averageLifespan(String averageLifespan) =>
      _averageLifespan = averageLifespan;
  String get homeworld => _homeworld;
  set homeworld(String homeworld) => _homeworld = homeworld;
  String get language => _language;
  set language(String language) => _language = language;
  List<String> get people => _people;
  set people(List<String> people) => _people = people;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get created => _created;
  set created(String created) => _created = created;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get url => _url;
  set url(String url) => _url = url;

  SpeciesResponse.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _classification = json['classification'];
    _designation = json['designation'];
    _averageHeight = json['average_height'];
    _skinColors = json['skin_colors'];
    _hairColors = json['hair_colors'];
    _eyeColors = json['eye_colors'];
    _averageLifespan = json['average_lifespan'];
    _homeworld = json['homeworld'];
    _language = json['language'];
    _people = json['people'].cast<String>();
    _films = json['films'].cast<String>();
    _created = json['created'];
    _edited = json['edited'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['classification'] = this._classification;
    data['designation'] = this._designation;
    data['average_height'] = this._averageHeight;
    data['skin_colors'] = this._skinColors;
    data['hair_colors'] = this._hairColors;
    data['eye_colors'] = this._eyeColors;
    data['average_lifespan'] = this._averageLifespan;
    data['homeworld'] = this._homeworld;
    data['language'] = this._language;
    data['people'] = this._people;
    data['films'] = this._films;
    data['created'] = this._created;
    data['edited'] = this._edited;
    data['url'] = this._url;
    return data;
  }
}

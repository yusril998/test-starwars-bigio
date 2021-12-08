class PeopleResponse {
  String _name;
  String _height;
  String _mass;
  String _hairColor;
  String _skinColor;
  String _eyeColor;
  String _birthYear;
  String _gender;
  String _homeworld;
  List<String> _films;
  List<String> _species;
  List<String> _vehicles;
  List<String> _starships;
  String _created;
  String _edited;
  String _url;

  PeopleResponse(
      {String name,
      String height,
      String mass,
      String hairColor,
      String skinColor,
      String eyeColor,
      String birthYear,
      String gender,
      String homeworld,
      List<String> films,
      List<String> species,
      List<String> vehicles,
      List<String> starships,
      String created,
      String edited,
      String url}) {
    this._name = name;
    this._height = height;
    this._mass = mass;
    this._hairColor = hairColor;
    this._skinColor = skinColor;
    this._eyeColor = eyeColor;
    this._birthYear = birthYear;
    this._gender = gender;
    this._homeworld = homeworld;
    this._films = films;
    this._species = species;
    this._vehicles = vehicles;
    this._starships = starships;
    this._created = created;
    this._edited = edited;
    this._url = url;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get height => _height;
  set height(String height) => _height = height;
  String get mass => _mass;
  set mass(String mass) => _mass = mass;
  String get hairColor => _hairColor;
  set hairColor(String hairColor) => _hairColor = hairColor;
  String get skinColor => _skinColor;
  set skinColor(String skinColor) => _skinColor = skinColor;
  String get eyeColor => _eyeColor;
  set eyeColor(String eyeColor) => _eyeColor = eyeColor;
  String get birthYear => _birthYear;
  set birthYear(String birthYear) => _birthYear = birthYear;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  String get homeworld => _homeworld;
  set homeworld(String homeworld) => _homeworld = homeworld;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  List<String> get species => _species;
  set species(List<String> species) => _species = species;
  List<String> get vehicles => _vehicles;
  set vehicles(List<String> vehicles) => _vehicles = vehicles;
  List<String> get starships => _starships;
  set starships(List<String> starships) => _starships = starships;
  String get created => _created;
  set created(String created) => _created = created;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get url => _url;
  set url(String url) => _url = url;

  PeopleResponse.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _height = json['height'];
    _mass = json['mass'];
    _hairColor = json['hair_color'];
    _skinColor = json['skin_color'];
    _eyeColor = json['eye_color'];
    _birthYear = json['birth_year'];
    _gender = json['gender'];
    _homeworld = json['homeworld'];
    _films = json['films'].cast<String>();
    _species = json['species'].cast<String>();
    _vehicles = json['vehicles'].cast<String>();
    _starships = json['starships'].cast<String>();
    _created = json['created'];
    _edited = json['edited'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['height'] = this._height;
    data['mass'] = this._mass;
    data['hair_color'] = this._hairColor;
    data['skin_color'] = this._skinColor;
    data['eye_color'] = this._eyeColor;
    data['birth_year'] = this._birthYear;
    data['gender'] = this._gender;
    data['homeworld'] = this._homeworld;
    data['films'] = this._films;
    data['species'] = this._species;
    data['vehicles'] = this._vehicles;
    data['starships'] = this._starships;
    data['created'] = this._created;
    data['edited'] = this._edited;
    data['url'] = this._url;
    return data;
  }
}

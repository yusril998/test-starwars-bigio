

class PlanetsResponse {
  String _name;
  String _rotationPeriod;
  String _orbitalPeriod;
  String _diameter;
  String _climate;
  String _gravity;
  String _terrain;
  String _surfaceWater;
  String _population;
  List<String> _residents;
  List<String> _films;
  String _created;
  String _edited;
  String _url;

  String get name => _name;
  set name(String name) => _name = name;
  String get rotationPeriod => _rotationPeriod;
  set rotationPeriod(String rotationPeriod) => _rotationPeriod = rotationPeriod;
  String get orbitalPeriod => _orbitalPeriod;
  set orbitalPeriod(String orbitalPeriod) => _orbitalPeriod = orbitalPeriod;
  String get diameter => _diameter;
  set diameter(String diameter) => _diameter = diameter;
  String get climate => _climate;
  set climate(String climate) => _climate = climate;
  String get gravity => _gravity;
  set gravity(String gravity) => _gravity = gravity;
  String get terrain => _terrain;
  set terrain(String terrain) => _terrain = terrain;
  String get surfaceWater => _surfaceWater;
  set surfaceWater(String surfaceWater) => _surfaceWater = surfaceWater;
  String get population => _population;
  set population(String population) => _population = population;
  List<String> get residents => _residents;
  set residents(List<String> residents) => _residents = residents;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get created => _created;
  set created(String created) => _created = created;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get url => _url;
  set url(String url) => _url = url;

  PlanetsResponse.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _rotationPeriod = json['rotation_period'];
    _orbitalPeriod = json['orbital_period'];
    _diameter = json['diameter'];
    _climate = json['climate'];
    _gravity = json['gravity'];
    _terrain = json['terrain'];
    _surfaceWater = json['surface_water'];
    _population = json['population'];
    _residents = json['residents'].cast<String>();
    _films = json['films'].cast<String>();
    _created = json['created'];
    _edited = json['edited'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['rotation_period'] = this._rotationPeriod;
    data['orbital_period'] = this._orbitalPeriod;
    data['diameter'] = this._diameter;
    data['climate'] = this._climate;
    data['gravity'] = this._gravity;
    data['terrain'] = this._terrain;
    data['surface_water'] = this._surfaceWater;
    data['population'] = this._population;
    data['residents'] = this._residents;
    data['films'] = this._films;
    data['created'] = this._created;
    data['edited'] = this._edited;
    data['url'] = this._url;
    return data;
  }
}


class VehiclesResponse {
  String _name;
  String _model;
  String _manufacturer;
  String _costInCredits;
  String _length;
  String _maxAtmospheringSpeed;
  String _crew;
  String _passengers;
  String _cargoCapacity;
  String _consumables;
  String _vehicleClass;
  List<String> _pilots;
  List<String> _films;
  String _created;
  String _edited;
  String _url;

  VehiclesResponse(
      {String name,
      String model,
      String manufacturer,
      String costInCredits,
      String length,
      String maxAtmospheringSpeed,
      String crew,
      String passengers,
      String cargoCapacity,
      String consumables,
      String vehicleClass,
      List<String> pilots,
      List<String> films,
      String created,
      String edited,
      String url}) {
    this._name = name;
    this._model = model;
    this._manufacturer = manufacturer;
    this._costInCredits = costInCredits;
    this._length = length;
    this._maxAtmospheringSpeed = maxAtmospheringSpeed;
    this._crew = crew;
    this._passengers = passengers;
    this._cargoCapacity = cargoCapacity;
    this._consumables = consumables;
    this._vehicleClass = vehicleClass;
    this._pilots = pilots;
    this._films = films;
    this._created = created;
    this._edited = edited;
    this._url = url;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get model => _model;
  set model(String model) => _model = model;
  String get manufacturer => _manufacturer;
  set manufacturer(String manufacturer) => _manufacturer = manufacturer;
  String get costInCredits => _costInCredits;
  set costInCredits(String costInCredits) => _costInCredits = costInCredits;
  String get length => _length;
  set length(String length) => _length = length;
  String get maxAtmospheringSpeed => _maxAtmospheringSpeed;
  set maxAtmospheringSpeed(String maxAtmospheringSpeed) =>
      _maxAtmospheringSpeed = maxAtmospheringSpeed;
  String get crew => _crew;
  set crew(String crew) => _crew = crew;
  String get passengers => _passengers;
  set passengers(String passengers) => _passengers = passengers;
  String get cargoCapacity => _cargoCapacity;
  set cargoCapacity(String cargoCapacity) => _cargoCapacity = cargoCapacity;
  String get consumables => _consumables;
  set consumables(String consumables) => _consumables = consumables;
  String get vehicleClass => _vehicleClass;
  set vehicleClass(String vehicleClass) => _vehicleClass = vehicleClass;
  List<String> get pilots => _pilots;
  set pilots(List<String> pilots) => _pilots = pilots;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get created => _created;
  set created(String created) => _created = created;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get url => _url;
  set url(String url) => _url = url;

  VehiclesResponse.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _model = json['model'];
    _manufacturer = json['manufacturer'];
    _costInCredits = json['cost_in_credits'];
    _length = json['length'];
    _maxAtmospheringSpeed = json['max_atmosphering_speed'];
    _crew = json['crew'];
    _passengers = json['passengers'];
    _cargoCapacity = json['cargo_capacity'];
    _consumables = json['consumables'];
    _vehicleClass = json['vehicle_class'];
    _pilots = json['pilots'].cast<String>();
    _films = json['films'].cast<String>();
    _created = json['created'];
    _edited = json['edited'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['model'] = this._model;
    data['manufacturer'] = this._manufacturer;
    data['cost_in_credits'] = this._costInCredits;
    data['length'] = this._length;
    data['max_atmosphering_speed'] = this._maxAtmospheringSpeed;
    data['crew'] = this._crew;
    data['passengers'] = this._passengers;
    data['cargo_capacity'] = this._cargoCapacity;
    data['consumables'] = this._consumables;
    data['vehicle_class'] = this._vehicleClass;
    data['pilots'] = this._pilots;
    data['films'] = this._films;
    data['created'] = this._created;
    data['edited'] = this._edited;
    data['url'] = this._url;
    return data;
  }
}

import 'dart:developer';

import 'package:test2/helpers/apiHelper.dart';
import 'package:test2/respons/FilmsRespons/FilmsResponse.dart';
import 'package:test2/respons/PeopleRespons/PeopleResponse.dart';
import 'package:test2/respons/PlanetsRespons/PlanetsResponse.dart';
import 'package:test2/respons/SpeciesRespons/SpeciesResponse.dart';
import 'package:test2/respons/StarshipRespons/StarshipResponse.dart';
import 'package:test2/respons/VehiclesRespons/VehiclesResponse.dart';

class GitRepository {
  ApiHelper _helper = ApiHelper();

  Future<List<FilmsResponse>> fetchFilm(String q) async {
    final response = await _helper.get("films");
    List<FilmsResponse> listData = [];
    Iterable list = response['results'];
    log(response.toString());
    listData = list.map((model) => FilmsResponse.fromJson(model)).toList();

    return listData;
  }
   Future<List<PeopleResponse>> fetchPeople(String q) async {
    final response = await _helper.get("people/?page=$q");
    List<PeopleResponse> listData = [];
    Iterable list = response['results'];
    listData = list.map((model) => PeopleResponse.fromJson(model)).toList();

    return listData;
  }
   Future<List<StarshipResponse>> fetchStarShip(String q) async {
    final response = await _helper.get("starships/?page=$q");
    List<StarshipResponse> listData = [];
    Iterable list = response['results'];
    listData = list.map((model) => StarshipResponse.fromJson(model)).toList();

    return listData;
  }
   Future<List<VehiclesResponse>> fetchVehicles(String q) async {
    final response = await _helper.get("vehicles/?page=$q");
    List<VehiclesResponse> listData = [];
    Iterable list = response['results'];
    listData = list.map((model) => VehiclesResponse.fromJson(model)).toList();

    return listData;
  }
   Future<List<SpeciesResponse>> fetchSpecies(String q) async {
    final response = await _helper.get("species/?page=$q");
    List<SpeciesResponse> listData = [];
    Iterable list = response['results'];
    listData = list.map((model) => SpeciesResponse.fromJson(model)).toList();

    return listData;
  }
   Future<List<PlanetsResponse>> fetchPlanets(String q) async {
    final response = await _helper.get("planets/?page=$q");
    List<PlanetsResponse> listData = [];
    Iterable list = response['results'];
    listData = list.map((model) => PlanetsResponse.fromJson(model)).toList();

    return listData;
  }
}

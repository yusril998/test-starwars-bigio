import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// Environment declare here
class Env {
  Env._({@required this.apiBaseUrl});

  /// Dev mode
  factory Env.dev() {
    return Env._(apiBaseUrl: 'https://swapi.dev/api/');
  }

  /// Dev mode
  factory Env.prod() {
    return Env._(
        apiBaseUrl: 'https://swapi.dev/api/');
  }

  final String apiBaseUrl;
}

/// Config env
class Config {
  factory Config({Env environment}) {
    if (environment != null) {
      instance.env = environment;
    }
    return instance;
  }

  Config._private();

  static final Config instance = Config._private();

  Env env;
}

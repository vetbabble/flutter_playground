import 'dart:async';
import 'dart:convert';

import 'package:flutter_playground/bloc/auth_bloc.dart';
import 'package:flutter_playground/helper/prefkeys.dart';
import 'package:flutter_playground/models/get_pet.dart';
import 'package:flutter_playground/models/login.dart';
import 'package:flutter_playground/models/register.dart';
import 'package:flutter_playground/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Injector {
  static SharedPreferences prefs;

  static String accessToken;
  static String refreshToken;

  static UserData userDataMain;
  static SignInResponse signInResponse;
  static PetData petData;

  static StreamController<String> streamController;

  static getInstance() async {
    prefs = await SharedPreferences.getInstance();

    streamController = StreamController.broadcast();
    getUserData();

    authBloc.restoreSession();

  }

  static updateAuthData(String accessToken) async {
    await Injector.prefs.setString(PrefKeys.accessToken, accessToken);

    accessToken = accessToken;
  }

  static getUserData() {
    if (prefs.getString(PrefKeys.petData) != null)
      petData = PetData.fromJson(jsonDecode(prefs.getString(PrefKeys.petData)));
  }
}

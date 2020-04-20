import 'dart:async';

import 'package:flutter_playground/bloc/validator.dart';
import 'package:flutter_playground/helper/constant.dart';
import 'package:flutter_playground/models/login.dart';
import 'package:flutter_playground/models/register.dart';
import 'package:flutter_playground/webapi_bp/web_api.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_bloc.dart';

class LoginBloc extends Validators {
  final BehaviorSubject _emailController = BehaviorSubject<String>();
  final BehaviorSubject _passwordController = BehaviorSubject<String>();
  final PublishSubject _loadingData = PublishSubject<bool>();

  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(validateUsernmae);

  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (email, password) => true);

  Observable<bool> get loading => _loadingData.stream;

  void submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    _loadingData.sink.add(true);
    login(validEmail, validPassword);
  }

  login(String email, String password) async {
    try {
      var data = await WebApi().callAPI(Const.post, WebApi.rqLogin,
          SignInRequest(username: email, password: password).toJson());
      _loadingData.sink.add(false);
      SignInResponse signInResponse = SignInResponse.fromJson(data);
      authBloc.openSession(signInResponse.access, signInResponse.refresh);
    } catch (e) {
      print(e);
      _loadingData.sink.add(false);
    }

    _loadingData.sink.add(false);
  }

  void dispose() {
    _emailController.close();
    _passwordController.close();
    _loadingData.close();
  }
}

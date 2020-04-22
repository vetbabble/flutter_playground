import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_playground/bloc/login_bloc.dart';
import 'package:flutter_playground/screens_bp/register.dart';
import 'package:flutter_login/flutter_login.dart';

import '../constants.dart';
import '../custom_route.dart';
import '../dashboard_screen.dart';
import '../users.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/auth';

  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc bloc = LoginBloc();
  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  @override
  Widget build(BuildContext context) {
    Future<String> _loginUser(LoginData data) {
      return Future.delayed(loginTime).then((_) {
        if (!mockUsers.containsKey(data.name)) {
          return 'Username not exists';
        }
        if (mockUsers[data.name] != data.password) {
          return 'Password does not match';
        }
        return null;
      });
    }

    Future<String> _recoverPassword(String name) {
      return Future.delayed(loginTime).then((_) {
        if (!mockUsers.containsKey(name)) {
          return 'Username not exists';
        }
        return null;
      });
    }

    final inputBorder = BorderRadius.vertical(
      bottom: Radius.circular(10.0),
      top: Radius.circular(20.0),
    );

    return FlutterLogin(
      title: Constants.appName,
      logo: 'assets/images/ecorp.png',
      logoTag: Constants.logoTag,
      titleTag: Constants.titleTag,
      emailValidator: (value) {
        if (!value.contains('@') || !value.endsWith('.com')) {
          return "Email must contain '@' and end with '.com'";
        }
        return null;
      },
      passwordValidator: (value) {
        if (value.isEmpty) {
          return 'Password is empty';
        }
        return null;
      },
      onLogin: (_) => Future(null),
      // onLogin: _loginUser,
      onSignup: (loginData) {
        print('Signup info');
        print('Name: ${loginData.name}');
        print('Password: ${loginData.password}');
        return _loginUser(loginData);
      },
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(FadePageRoute(
          builder: (context) => DashboardScreen(),
        ));
      },
      onRecoverPassword: (name) {
        print('Recover password info');
        print('Name: $name');
        return _recoverPassword(name);
        // Show new password dialog
      },
      showDebugButtons: true,
    );
  }
}
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Login"),
//     ),
//     body: Container(
//       margin: EdgeInsets.all(20.0),
// child: Column(
//   children: <Widget>[
//     emailField(bloc),
//     passwordField(bloc),
//     Container(margin: EdgeInsets.only(top: 25.0)),
//     submitButton(bloc),
//     InkResponse(
//       child: Text("Don't have account?"),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => RegisterPage()),
//         );
//       },
//     ),
//     loadingIndicator(bloc)
//   ],
//       ),
//     ),
//   );
// }

Widget loadingIndicator(LoginBloc bloc) => StreamBuilder<bool>(
      stream: bloc.loading,
      builder: (context, snap) {
        return Container(
          child:
              (snap.hasData && snap.data) ? CircularProgressIndicator() : null,
        );
      },
    );

Widget emailField(LoginBloc bloc) => StreamBuilder<String>(
      stream: bloc.email,
      builder: (context, snap) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
              labelText: "Username", hintText: "abc123", errorText: snap.error),
        );
      },
    );

Widget passwordField(LoginBloc bloc) => StreamBuilder<String>(
    stream: bloc.password,
    builder: (context, snap) {
      return TextField(
        obscureText: true,
        onChanged: bloc.changePassword,
        decoration: InputDecoration(
            labelText: "Password", hintText: "Password", errorText: snap.error),
      );
    });

Widget submitButton(LoginBloc bloc) => StreamBuilder<bool>(
      stream: bloc.submitValid,
      builder: (context, snap) {
        return RaisedButton(
          onPressed: (!snap.hasData) ? null : bloc.submit,
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        );
      },
    );

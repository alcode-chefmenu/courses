import 'package:biometric_auth/backend/bloc/bloc.dart';
import 'package:biometric_auth/backend/data/dataModel.dart';
import 'package:biometric_auth/frontend/src/pages/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final Login login;
  HomeScreen({Key key, @required this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(),
        child: HomePage(
          login: login,
        ),
      );
    
  }
}
  

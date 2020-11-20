import 'package:flutter/material.dart';
import 'package:zomato_app/BLoC/bloc_provider.dart';
import 'package:zomato_app/BLoC/favorite_bloc.dart';
import 'package:zomato_app/BLoC/location_bloc.dart';

import 'UI/screens/main_screen.dart';

void main() => runApp(RestaurantFinder());

class RestaurantFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: BlocProvider<FavoriteBloc>(
        bloc: FavoriteBloc(),
        child: MaterialApp(
          title: 'Restaurant Finder',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: MainScreen(),
        ),
      ),
    );
  }
}

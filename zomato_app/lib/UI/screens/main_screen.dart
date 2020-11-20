import 'package:flutter/material.dart';
import 'package:zomato_app/BLoC/bloc_provider.dart';
import 'package:zomato_app/BLoC/location_bloc.dart';
import 'package:zomato_app/DataLayer/location.dart';
import 'package:zomato_app/UI/screens/restaurant_screen.dart';

import 'location_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
        stream: BlocProvider.of<LocationBloc>(context).locationStream,
        builder: (context, snapshot) {
          final location = snapshot.data;

          if (location == null) {
            return LocationScreen();
          }

          return RestaurantScreen(location: location);
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quize_app/src/bloc/weather_bloc.dart';
import 'package:quize_app/src/events/weather_evetn.dart';
import 'package:quize_app/src/states/weather_state.dart';
import 'package:quize_app/src/widgets/weather_screen_wrapper.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc('Myskhako'),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoadSuccess) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      BlocProvider.of<WeatherBloc>(context)
                          .add(WeatherRequested(city: 'Moscow'));
                      // showSearch(
                      //     context: context, delegate: MySearchDelegate((query) {
                      //   BlocProvider.of<WeatherBloc>(context).add(WeatherRequested(city: query));
                      // }
                      // ));
                    },
                  )
                ],
              ),
              body: Padding(
                padding: EdgeInsets.only(top: 64),
                child: WeatherScreenWrapper(
                    weather: state.weather, hourlyWeather: state.hourlyWeather),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Flutter App"),
    //   ),
    //   body: Center(
    //     child: Text("Flutter Application"),
    //   ),
    // );
  }
}

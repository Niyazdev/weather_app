import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whetherapp/bloc/weather_list_bloc/bloc.dart';
import 'package:whetherapp/ui/landing/weather_list_view.dart';
import 'package:whetherapp/ui/landing/weather_map_view.dart';
import 'package:whetherapp/ui/widgets/bottom_navigation_widget.dart';
import 'package:whetherapp/ui/widgets/seach_city_by_name.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final WeatherListViewBloc _weatherListViewBloc = WeatherListViewBloc();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherListViewBloc>(
      create: (_) => _weatherListViewBloc,
      child: Scaffold(
        appBar: _appBar(context),
        body: BlocConsumer<WeatherListViewBloc, WeatherListState>(
          listener: (_, state) {},
          builder: (_, state) {
            if (state is WeatherListSuccessState) {
              print('response');
              return _buildWidget(context, state.response);
            }
            return Container();
          },
        ),
        bottomNavigationBar: BottomNavWidget(
          onTap: (int index) => setState(() => currentIndex = index),
          currentIndex: currentIndex,
        ),
      ),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        child: SearchCityByName(
          onChanged: (value) {
            _weatherListViewBloc.add(WeatherListEvent(searchKeyWord: value));
          },
        ),
        preferredSize: Size.fromHeight(
          6 * AppSizeConfig.heightMultiplier,
        ),
      ),
      title: Text(
        'Weather App',
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(color: AppTheme.secondaryColor),
      ),
    );
  }

  Widget _buildWidget(BuildContext context, Map<String, dynamic> response) {
    return currentIndex == 0
        ? WeatherListView(response: response)
        : WeatherMapView(response: response);
  }
}

import 'package:flutter/material.dart';
import 'package:whetherapp/ui/widgets/seach_city_by_name.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class HomePageAppBar extends StatelessWidget {
  final String name;
  final Function onDrawerTap;
  final String url;

  const HomePageAppBar(
      {@required this.name, @required this.onDrawerTap, @required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4 * AppSizeConfig.widthMultiplier,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppTheme.backgroundColor,
            AppTheme.backgroundColor.withOpacity(0.9),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 1 * AppSizeConfig.heightMultiplier,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                _contentWidget(context),
              ],
            ),
          ),
          SearchCityByName(),
        ],
      ),
    );
  }

  _contentWidget(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 1 * AppSizeConfig.heightMultiplier,
          ),
          Text(
            'Welcome to the Weather App',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: AppTheme.primaryColor, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';
import 'package:whetherapp/utils/custom_divider.dart';

class WeatherListView extends StatelessWidget {

  final response;

  const WeatherListView({@required this.response});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Text(
          response['location']['name'],
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: AppTheme.primaryColor),
        ),
        Text(
          'Country: ${response['location']['country']}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: AppTheme.primaryColor),
        ),
        CustomDivider(),
        SizedBox(height: 8 * AppSizeConfig.heightMultiplier),
        Text(
          'Local time: ${response['location']['localtime']}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: AppTheme.primaryColor)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          'Lat & Long: ${response['location']['lat']}\t '
          '${response['location']['lon']}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: AppTheme.primaryColor),
        ),
        Text(
          'Current Temperature is ${response['current']['temperature']}`C',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: AppTheme.primaryColor),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Weather: '
              '${response['current']['weather_descriptions'][0]}',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: AppTheme.primaryColor),
            ),
            Container(
                height: 8 * AppSizeConfig.heightMultiplier,
                width: 8 * AppSizeConfig.widthMultiplier,
                child: Image.network(response['current']['weather_icons'][0])),
          ],
        ),
      ],
    );
  }
}

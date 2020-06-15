import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class BottomNavWidget extends StatelessWidget {
  final int currentIndex;
  final Function onTap;

  const BottomNavWidget({@required this.onTap, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(
        size: 8 * AppSizeConfig.imageSizeMultiplier,
      ),
      unselectedIconTheme: IconThemeData(
        size: 6 * AppSizeConfig.imageSizeMultiplier,
        color: AppTheme.hintColor,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      items: bottomList
          .map(
            (bottomItem) => BottomNavigationBarItem(
              icon: Icon(bottomItem['icon']),
              title: Padding(
                padding: EdgeInsets.only(
                  top: 0.5 * AppSizeConfig.heightMultiplier,
                ),
                child: Text(bottomItem['name']),
              ),
              backgroundColor: AppTheme.backgroundColor,
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}

final List<dynamic> bottomList = [
  {'name': 'Home', 'icon': Icons.home},
  {'name': 'Map', 'icon': Icons.location_on},
];

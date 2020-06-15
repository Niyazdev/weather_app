import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whetherapp/ui/landing/landing_page.dart';
import 'package:whetherapp/utils/app_navigation_service.dart';
import 'package:whetherapp/utils/app_size_config.dart';
import 'package:whetherapp/utils/app_theme.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    print(error);
    super.onError(bloc, error, stacktrace);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            AppSizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: AppNavigationService.navigationKey,
              title: 'Memee',
              theme: AppTheme.appTheme,
              home: LandingPage(),
            );
          },
        );
      },
    );
  }
}

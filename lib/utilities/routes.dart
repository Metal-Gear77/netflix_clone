import 'package:netflix_clone/pages/main/main_view.dart';
import 'package:netflix_clone/pages/profile/profile_view.dart';

class MyRoutes {
  final initialRoutes = '/main';
  final routes = {
    '/profiles': (context) => ProfilePage(),
    '/main': (context) => MainPage(),
  };
}

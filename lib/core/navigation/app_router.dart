import 'package:finwise/features/onboarding/presentation/screens/login_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter route = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", name: "/", builder: (context, state) => Onboarding()),
      GoRoute(
        path: "/login",
        name: "/login",
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}

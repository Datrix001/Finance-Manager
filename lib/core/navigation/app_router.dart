import 'package:finwise/features/login/presentation/screens/onboarding.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter route = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", name: "/", builder: (context, state) => Onboarding()),
    ],
  );
}

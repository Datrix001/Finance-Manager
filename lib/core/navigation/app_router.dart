import 'package:finwise/features/onboarding/presentation/screens/changed_password_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/forgot_password_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/login_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/new_password.dart';
import 'package:finwise/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/otp_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/sign_up_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter route = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: "/",
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: "/Onboarding",
        name: "/Onboarding",
        builder: (context, state) => Onboarding(),
      ),

      GoRoute(
        path: "/login",
        name: "/login",
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: "/signup",
        name: "/signup",
        builder: (context, state) => SignUpScreen(),
      ),
      GoRoute(
        path: "/forgot",
        name: "/forgit",
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        path: "/otp",
        name: "/otp",
        builder: (context, state) => OtpScreen(),
      ),
      GoRoute(
        path: "/new-password",
        name: "/new-password",
        builder: (context, state) => NewPassword(),
      ),
      GoRoute(
        path: "/changed-password",
        name: "/changed-password",
        builder: (context, state) => ChangedPasswordScreen(),
      ),
    ],
  );
}

import 'package:finwise/features/auth/presentation/screens/changed_password_screen.dart';
import 'package:finwise/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:finwise/features/auth/presentation/screens/login_screen.dart';
import 'package:finwise/features/auth/presentation/screens/new_password.dart';
import 'package:finwise/features/home/presentation/screens/home.dart';
import 'package:finwise/features/home/presentation/screens/home_screen.dart';
import 'package:finwise/features/notifications/presentation/screens/notification_screen.dart';
import 'package:finwise/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:finwise/features/auth/presentation/screens/otp_screen.dart';
import 'package:finwise/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:finwise/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:finwise/features/profile/presentation/screens/profile_screen.dart';
import 'package:finwise/features/splash/presentation/screens/splash_screen.dart';
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
      GoRoute(
        path: "/home",
        name: "/home",
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: "/notification",
        name: "/notification",
        builder: (context, state) => NotificationScreen(),
      ),
      GoRoute(
        path: "/homeScreen",
        name: "/homeScreen",
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: "/profileScreen",
        name: "/profileScreen",
        builder: (context, state) => ProfileScreen(),
      ),
      GoRoute(
        path: "/editProfile",
        name: "/editProfile",
        builder: (context, state) => EditProfileScreen(),
      ),
    ],
  );
}

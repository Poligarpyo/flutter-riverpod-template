// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/presentation/login/login_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/reports/family/presentation/screens/family_screen.dart';
import '../features/reports/household/presentation/screens/household_screen.dart';
import '../features/reports/individual/presentation/screens/individual_screen.dart';
import '../features/reports/report_screen.dart';
import '../features/trails/audit/domain/entities/Audit.dart';
import '../features/trails/audit/presentation/screens/audit_screen.dart';
import '../features/trails/trails_screen.dart';
import 'fade_extension.dart';

part 'app_router.g.dart';

enum SGRoute {
  home,
  login,
  register,
  forgotPassword,
  profile,
  editProfile, 
  household,  
  family,
  indiv,
  reports,
  trails,
  audit
  ;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: SGRoute.login.route,
      routes: <GoRoute>[
        GoRoute(
            path: SGRoute.login.route,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            }).fade(),
        GoRoute(
          path: SGRoute.home.route,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ).fade(),
         GoRoute(
          path: SGRoute.household.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const HouseholdScreen(),
        ).fade(),
         GoRoute(
          path: SGRoute.family.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const FamilyScreen(),
        ).fade(),
         GoRoute(
          path: SGRoute.indiv.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const IndividualScreen(),
        ).fade(),
         GoRoute(
          path: SGRoute.reports.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const ReportScreen(),
        ).fade(),




        // Trails Route
         GoRoute(
          path: SGRoute.trails.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const TrailsScreen(),
        ).fade(),
         GoRoute(
          path: SGRoute.audit.route, // ✅ new route
          builder: (BuildContext context, GoRouterState state) =>
              const AuditScreen(),
        ).fade(),
      ],
    );

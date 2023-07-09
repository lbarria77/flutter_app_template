import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart';

final appRoutes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);

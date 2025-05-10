import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/request_id.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_cubit.dart';
import 'package:kagi_news/details_screen/details_screen.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

void navigateToDetailsScreen(
  BuildContext context, {
  required RequestId id,
  required int index,
}) async {
  final cluster =
      RepositoryProvider.of<CachedApiRepository>(
        context,
      ).getCategoryFromCache(id)!.clusters[index];
  final cubit = DetailsCubit.fromCluster(cluster);
  final nav = Navigator.of(context);
  await Future.delayed(const Duration());
  nav.push(
    MaterialPageRoute(
      builder:
          (context) => BlocProvider(
            create: (context) => cubit,
            child: const DetailsPage(),
          ),
    ),
  );
}

const list = [
  Offset(0, 1),
  Offset(1, 1),
  Offset(0, -1),
  Offset(1, -1),
  Offset(1, 0),
];

Route createRoute(DetailsCubit cubit) {
  final selection = Random().nextInt(5);
  return PageRouteBuilder(
    pageBuilder:
        (context, animation, secondaryAnimation) => BlocProvider(
          create: (context) => cubit,
          child: const DetailsPage(),
        ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final Offset begin = list[selection];

      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}

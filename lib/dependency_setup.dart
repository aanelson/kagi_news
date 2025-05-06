import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:kagi_news/api/news_http_client.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

Widget setupDependencyInjection({required Widget child}) {
  final client = Client();
  return MultiBlocProvider(
    providers: [
      RepositoryProvider(create: (context) => NewsHttpClient(client)),
      RepositoryProvider(
        create:
            (context) => CachedApiRepository(RepositoryProvider.of(context)),
      ),
      BlocProvider(
        create: (context) {
          final cubit = HomeScreenCubit(RepositoryProvider.of(context));
          return cubit;
        },
      ),
    ],
    child: child,
  );
}

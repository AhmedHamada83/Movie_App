import 'package:booklyapp/Features/Home/date/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/utls/api_service.dart';
import 'core/utls/routes.dart';
import 'core/utls/service_locator.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBookCubit(HomeRepoImpl(ApiService(Dio())))
            ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouterApp.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

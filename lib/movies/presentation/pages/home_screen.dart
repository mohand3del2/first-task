import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/movies/presentation/controller/movies_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context){
        return MoviesBloc(sl())..add(GetNowPlayingMoviesEvent());
      },
      child:  BlocBuilder<MoviesBloc,MoviesState>(
        builder: (context,state){
          return const Scaffold(

          );
        },
      ),
    );
  }
}

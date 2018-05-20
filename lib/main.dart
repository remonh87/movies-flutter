import 'package:flutter/material.dart';
import 'package:moviesflutter/redux/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:moviesflutter/redux/reducers/movie_reducers.dart';
import 'package:moviesflutter/popular_movies_page.dart';


void main() => runApp(MoviesApp());

class MoviesApp extends StatelessWidget {
  final Store<AppState> store = Store<AppState>(
    appStateReducers,
    initialState: AppState.initial()
  );

  @override
  Widget build(BuildContext context) => StoreProvider(
    store: this.store,
    child: MaterialApp(
      title: 'Movies app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularMoviesPage(),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:moviesflutter/domain/Movie.dart';
import 'package:moviesflutter/redux/state.dart';
import 'package:redux/redux.dart';

class PopularMoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _ViewModel>(
    converter: (Store<AppState> store) => _ViewModel.create(store),
    builder: (BuildContext context, _ViewModel viewModel) => Scaffold(
      appBar: AppBar(
        title: Text('Popular movies'),
      ),
      body: ListView(children: viewModel.movies.map((_MovieViewModel item) => _createWidget(item)).toList()),
    ),
  );

  Widget _createWidget(_MovieViewModel item)=> _createToDoItemWidget(item);


  Widget _createToDoItemWidget(_MovieItemViewModel item) => Row(
    children: [
      Text(item.title),
    ],
  );
}

class _ViewModel {

  final List<_MovieViewModel> movies;

  _ViewModel(this.movies);

  factory _ViewModel.create(Store<AppState> store) {
    List<_MovieViewModel> movies = store.state.movies
        .map((Movie movie) => _MovieItemViewModel(movie.title))
        .toList();

    return _ViewModel(movies);
  }
}

abstract class _MovieViewModel {}

@immutable
class _MovieItemViewModel extends _MovieViewModel {
  final String title;

  _MovieItemViewModel(this.title);
}
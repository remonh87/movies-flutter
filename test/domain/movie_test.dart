import 'package:flutter_test/flutter_test.dart';
import 'package:moviesflutter/domain/Movie.dart';

void main() {

  String title = 'Spiderman';

  test('Should be able to create movie with title', () {
    Movie movie = new Movie(title);
    expect(movie.title, title);
  });
}
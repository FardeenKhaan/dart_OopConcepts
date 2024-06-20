import '3.Movie.dart';
import '3.Person_movie.dart';

void main() {
  // Movie objects
  Action actionMovie = Action(1, 'Action Movie', 5);
  Comedy comedyMovie = Comedy(2, 'Comedy Movie', 3);
  Drama dramaMovie = Drama(3, 'Drama Movie', 7);

  // Polymorphic call to calcLateFees
  List<Movie> movies = [actionMovie, comedyMovie, dramaMovie];
  for (var movie in movies) {
    print(
        'Late fees for ${movie.title} for 4 days late: \$${movie.calcLateFees(4)}');
  }

  // Downcasting and ID reset
  actionMovie.idNumber = 10;
  print('Action movie new ID: ${actionMovie.idNumber}');

  // Type compatibility check using equals method
  print('Action movie equals comedy movie: ${actionMovie == comedyMovie}');

  // Person objects
  Student student = Student('Alice', 3.8);
  Professor professor = Professor('Dr. Smith', 100);

  List<Person> people = [student, professor];

  for (var person in people) {
    print('${person.name} is outstanding: ${person.isOutstanding()}');
  }
}

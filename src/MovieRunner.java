
public class MovieRunner {
public static void main(String[] args) {
	Movie movie1 = new Movie("twilight", 1);
	Movie movie2 = new Movie("movie2", 3);
	Movie movie3 = new Movie("movie3", 5);
	Movie movie4 = new Movie("movie4", 8);
	Movie movie5 = new Movie("movie5", 2147483647);
	System.out.println(movie1.getTicketPrice());
	System.out.println(movie2.getTicketPrice());
	System.out.println(movie3.getTicketPrice());
	System.out.println(movie4.getTicketPrice());
	System.out.println(movie5.getTicketPrice());
	NetflixQueue netflix = new NetflixQueue();
	netflix.addMovie(movie1);
	netflix.addMovie(movie2);
	netflix.addMovie(movie3);
	netflix.addMovie(movie4);
	netflix.addMovie(movie5);
	netflix.printMovies();
	System.out.println("the best movie is "+netflix.getBestMovie());
	netflix.sortMoviesByRating();
	System.out.println("the second best movie is "+netflix.getMovie(1));
}
}

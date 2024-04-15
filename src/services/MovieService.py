# Database
from src.database.db import get_connection
# Errors
from src.utils.errors.CustomException import CustomException
# Models
from src.services.models.Movie import Movie


class MovieService():

    @classmethod
    def get_movies(cls):
        try:
            connection = get_connection()
            movies = []
            with connection.cursor() as cursor:
                cursor.execute('SELECT * FROM sp_listMovies()')
                resultset = cursor.fetchall()
                for row in resultset:
                    movie = Movie(int(row[0]), row[1])
                    movies.append(movie.to_json())
            connection.close()
            return movies
        except CustomException as ex:
            raise CustomException(ex)
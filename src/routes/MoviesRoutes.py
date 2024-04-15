from flask import Blueprint, jsonify, request
import uuid

# Errors
from src.utils.errors.CustomException import CustomException

# Security
from src.utils.Security import Security

# services
from src.services.MovieService import MovieService


main = Blueprint('movie_blueprint', __name__)


@main.route('/')
def get_movies():
    has_acces = Security.verify_token(request.headers)
    
    if has_acces:
        try:
             movies = MovieService.get_movies()
             if (len(movies) > 0):
                 return jsonify({'movies' : movies, 'message' : "SUCCESS", 'success': True})
             else:
                 return jsonify({'message': "NOTFOUND", 'sussess': False})
        except CustomException:
            return jsonify({'message': "ERROR", 'success': False})
    else:
        response = jsonify({'message': 'Unauthorized'})
        return response, 401



#@main.route('/<id>')
#def get_movie(id):
#    try:
#        movie = MovieModel.get_movie(id)
#        if movie != None:
#            return jsonify(movie)
#        else:
#            return jsonify({}), 404
#    except Exception as ex:
#        return jsonify({'message': str(ex)}), 500


#@main.route('/add', methods=['POST'])
#def add_movie():
#    try:
#        title = request.json['title']
#        duration = int(request.json['duration'])
#        released = request.json['released']
#        id = uuid.uuid4()
#        movie = Movie(str(id), title, duration, released)
#
#        affected_rows = MovieModel.add_movie(movie)
#
#        if affected_rows == 1:
#            return jsonify(movie.id)
#        else:
#            return jsonify({'message': "Error on insert"}), 500
#
#   except Exception as ex:
#        return jsonify({'message': str(ex)}), 500


#@main.route('/update/<id>', methods=['PUT'])
#def update_movie(id):
#    try:
#        title = request.json['title']
#        duration = int(request.json['duration'])
#        released = request.json['released']
#        movie = Movie(id, title, duration, released)

#        affected_rows = MovieModel.update_movie(movie)

#       if affected_rows == 1:
#            return jsonify(movie.id)
#        else:
#            return jsonify({'message': "No movie updated"}), 404

#    except Exception as ex:
#        return jsonify({'message': str(ex)}), 500


#@main.route('/delete/<id>', methods=['DELETE'])
#def delete_movie(id):
#    try:
#        movie = Movie(id)

#        affected_rows = MovieModel.delete_movie(movie)

#        if affected_rows == 1:
#            return jsonify(movie.id)
#        else:
#            return jsonify({'message': "No movie deleted"}), 404

#    except Exception as ex:
#        return jsonify({'message': str(ex)}), 500

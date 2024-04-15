from flask import Flask

# Routes
from src.routes import AuthRoutes
from src.routes import MoviesRoutes

app = Flask(__name__)


def init_app(config):
    # Configuration
    app.config.from_object(config)

    # Blueprints
    app.register_blueprint(AuthRoutes.main, url_prefix='/auth')
    app.register_blueprint(MoviesRoutes.main, url_prefix='/movies')

    return app
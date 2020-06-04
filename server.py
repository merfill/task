
import sys
import connexion


main_app = connexion.FlaskApp(__name__, specification_dir='.')
main_app.add_api('swagger.yaml', validate_responses=True)

application = main_app.app

if __name__ == '__main__':
    main_app.run(port=5000)

from eve import Eve
from flask_env import MetaFlaskEnv

app = Eve()

class Configuration(metaclass=MetaFlaskEnv):
    DEBUG = False
    PORT = 5000

app.config.from_object(Configuration)

print('CTMS-REST-API starting up...')

if __name__ == '__main__':
    app.run()

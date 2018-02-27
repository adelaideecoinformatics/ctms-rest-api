from eve import Eve
from flask_env import MetaFlaskEnv

app = Eve()

class Configuration(metaclass=MetaFlaskEnv):
    ENV_PREFIX = 'CRA_'
    DEBUG = False
    PORT = 5000 # has no effect when running behind uwsgi

app.config.from_object(Configuration)

using_port = app.config['PORT']
print('CTMS-REST-API starting up on port {}...'.format(using_port))

if __name__ == '__main__':
    app.run(port=using_port)

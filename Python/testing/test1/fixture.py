from configparser import ConfigParser


def is_verbose(config_path):
    config = ConfigParser()
    config.read(config_path)
    try:
        return config.getboolean('main', 'verbose')
    except Exception:
        return True

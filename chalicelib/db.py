from chalicelib import settings
from peewee import MySQLDatabase


db = MySQLDatabase(
    settings.DATABASE['NAME'], user=settings.DATABASE['USER'], password=settings.DATABASE['PASSWORD'], host=settings.DATABASE['HOST'], port=int(settings.DATABASE['PORT'])
)

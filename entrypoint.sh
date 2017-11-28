export DJANGO_SETTINGS_MODULE=openduty.settings
python manage.py syncdb
python manage.py migrate
python manage.py collectstatic
python manage.py runserver 0.0.0.0:8000


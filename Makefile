STATIC = djangoproject/static
SCSS = djangoproject/scss
APP_LIST ?= admin_ui blog rest_framework frontend conf mustache mobile api legacy

.PHONY: collectstatics compile-scss compile-scss-debug watch-scss run install test ci

collectstatics: compile-scss
	./manage.py collectstatic --noinput

run:
	python manage.py runserver 0.0.0.0:8000

install:
	pip install -r requirements/dev.txt

test:
	@coverage run --source=. manage.py test -v2 $(APP_LIST)

ci: test
	@coverage report

isort:
	isort -rc $(APP_LIST)

isort-check:
	isort -c -rc $(APP_LIST)
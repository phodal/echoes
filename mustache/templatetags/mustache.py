""" Templatetags for including pystash templates """
import os
import sys

from django import template
from django.conf import settings
from django.core.exceptions import ImproperlyConfigured
from django.utils._os import safe_join
from importlib import import_module

import pystache

register = template.Library()


class PystacheTemplateDoesNotExist(Exception):
    pass


def get_app_template_dirs():
    fs_encoding = sys.getfilesystemencoding() or sys.getdefaultencoding()
    app_template_dirs = []
    for app in settings.INSTALLED_APPS:
        try:
            mod = import_module(app)
        except ImportError, e:
            raise ImproperlyConfigured('ImportError %s: %s' % (app, e.args[0]))
        attr = getattr(settings, 'PYSTACHE_APP_TEMPLATE_DIR', 'mustaches')
        template_dir = os.path.join(os.path.dirname(mod.__file__),
                                    attr)
        if os.path.isdir(template_dir):
            app_template_dirs.append(template_dir.decode(fs_encoding))
    return app_template_dirs


def get_template_sources(template_name):
    for template_dir in get_app_template_dirs():
        try:
            yield safe_join(template_dir, template_name)
        except UnicodeDecodeError:
            # The template dir name was a bytestring that wasn't valid UTF-8.
            raise
        except ValueError:
            # The joined path was located outside of template_dir.
            pass


def load_template_source(template_name):
    for filepath in get_template_sources(template_name):
        try:
            file = open(filepath)
            try:
                return file.read().decode(settings.FILE_CHARSET), filepath
            finally:
                file.close()
        except IOError:
            pass
    raise PystacheTemplateDoesNotExist(template_name)


@register.simple_tag(takes_context=True)
def mustache(context, template_name):
    template, source = load_template_source(template_name)
    return pystache.render(template, context.dicts[0])

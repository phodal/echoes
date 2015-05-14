from __future__ import unicode_literals

from django.core.urlresolvers import (reverse)

try:
    from django.utils.encoding import smart_text
except ImportError:
    # Backward compatibility for Py2 and Django < 1.5
    from django.utils.encoding import smart_unicode as smart_text


def admin_url(model, url, object_id=None):
    """
    Returns the URL for the given model and admin url name.
    """
    opts = model._meta
    url = "admin:%s_%s_%s" % (opts.app_label, opts.object_name.lower(), url)
    args = ()
    if object_id is not None:
        args = (object_id,)
    return reverse(url, args=args)

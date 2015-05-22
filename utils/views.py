from __future__ import division, unicode_literals

from datetime import datetime, timedelta

try:
    from urllib.parse import urlencode
except ImportError:     # Python 2
    from urllib import urlencode
try:
    from urllib.request import Request, urlopen
except ImportError:     # Python 2
    from urllib2 import Request, urlopen


def set_cookie(response, name, value, expiry_seconds=None, secure=False):
    """
    Set cookie wrapper that allows number of seconds to be given as the
    expiry time, and ensures values are correctly encoded.
    """
    if expiry_seconds is None:
        expiry_seconds = 90 * 24 * 60 * 60  # Default to 90 days.
    expires = datetime.strftime(datetime.utcnow() +
                                timedelta(seconds=expiry_seconds),
                                "%a, %d-%b-%Y %H:%M:%S GMT")
    # Django doesn't seem to support unicode cookie keys correctly on
    # Python 2. Work around by encoding it. See
    # https://code.djangoproject.com/ticket/19802
    try:
        response.set_cookie(name, value, expires=expires, secure=secure)
    except (KeyError, TypeError):
        response.set_cookie(name.encode('utf-8'), value, expires=expires,
                            secure=secure)

import datetime
from django.shortcuts import render, redirect
from utils.cache import add_cache_bypass
from utils.urls import next_url


def set_device(request, device=""):
    """
    Sets a device name in a cookie when a user explicitly wants to go
    to the site for a particular device (eg mobile).
    """
    response = redirect(add_cache_bypass(next_url(request) or "/"))
    set_cookie(response, "mezzanine-device", device, 60 * 60 * 24 * 365)
    return response

def direct_to_template(request, template, extra_context=None, **kwargs):
    """
    Replacement for Django's ``direct_to_template`` that uses
    ``TemplateResponse`` via ``mezzanine.utils.views.render``.
    """
    context = extra_context or {}
    context["params"] = kwargs
    for (key, value) in context.items():
        if callable(value):
            context[key] = value()
    return render(request, template, context)

def set_cookie(response, name, value, expiry_seconds=None, secure=False):
    """
    Set cookie wrapper that allows number of seconds to be given as the
    expiry time, and ensures values are correctly encoded.
    """
    if expiry_seconds is None:
        expiry_seconds = 90 * 24 * 60 * 60  # Default to 90 days.
    expires = datetime.strftime(datetime.utcnow() +
                                datetime.timedelta(seconds=expiry_seconds),
                                "%a, %d-%b-%Y %H:%M:%S GMT")
    # Django doesn't seem to support unicode cookie keys correctly on
    # Python 2. Work around by encoding it. See
    # https://code.djangoproject.com/ticket/19802
    try:
        response.set_cookie(name, value, expires=expires, secure=secure)
    except (KeyError, TypeError):
        response.set_cookie(name.encode('utf-8'), value, expires=expires,
                            secure=secure)

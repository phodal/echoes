from django.template import RequestContext
from django.template.response import TemplateResponse


def render(request, templates, dictionary=None, context_instance=None,
           **kwargs):
    """
    Mimics ``django.shortcuts.render`` but uses a TemplateResponse for
    ``mezzanine.core.middleware.TemplateForDeviceMiddleware``
    """
    dictionary = dictionary or {}
    if context_instance:
        context_instance.update(dictionary)
    else:
        context_instance = RequestContext(request, dictionary)
    return TemplateResponse(request, templates, context_instance, **kwargs)


def homepage(request, **kwargs):
    context = {"params": kwargs}
    for (key, value) in context.items():
        if callable(value):
            context[key] = value()
    return render(request, 'index.html', context)
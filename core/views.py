from django.shortcuts import render


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

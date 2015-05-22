from django.template import Template
from utils.device import templates_for_device


class TemplateForDeviceMiddleware(object):
    """
    Inserts device-specific templates to the template list.
    """
    def process_template_response(self, request, response):
        if hasattr(response, "template_name"):
            if not isinstance(response.template_name, Template):
                templates = templates_for_device(request,
                    response.template_name)
                response.template_name = templates
        return response


"""
Default settings for the ``mezzanine.core`` app. Each of these can be
overridden in your project's settings module, just like regular
Django settings. The ``editable`` argument for each controls whether
the setting is editable via Django's admin.

Thought should be given to how a setting is actually used before
making it editable, as it may be inappropriate - for example settings
that are only read during startup shouldn't be editable, since changing
them would require an application reload.
"""
from __future__ import unicode_literals

from django.utils.translation import ugettext_lazy as _

from conf import register_setting

register_setting(
    name="DEVICE_DEFAULT",
    description=_("Device specific template sub-directory to use as the default device."),
    editable=False,
    default="",
)

register_setting(
    name="GOOGLE_ANALYTICS_ID",
    label=_("Google Analytics ID"),
    description=_("Google Analytics ID (http://www.google.com/analytics/)"),
    editable=True,
    default="",
)

register_setting(
    name="SITE_TITLE",
    label=_("Site Title"),
    description=_(" ---------- "),
    editable=True,
    default="Echoes CMS",
)

register_setting(
    name="SITE_TAGLINE",
    label=_("Tagline"),
    description=_("A tag line that will appear at the top of all pages."),
    editable=True,
    default=_("Another open source content management platform."),
)
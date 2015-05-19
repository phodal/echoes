#-*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.utils.translation import ugettext_lazy as _

from conf import register_setting

register_setting(
    name="GOOGLE_ANALYTICS_ID",
    label=_("Google Analytics ID"),
    description=_("Google Analytics ID (http://www.google.com/analytics/)"),
    editable=True,
    default="",
)

register_setting(
    name="SITE_TITLE",
    label=_("站点标题"),
    description=_(" ---------- "),
    editable=True,
    default="Echoes CMS",
)

register_setting(
    name="SITE_TAGLINE",
    label=_("标语"),
    description=_("标语将显示在所有页面的最上方"),
    editable=True,
    default=_("另外一个开源内容管理平台"),
)

register_setting(
    name="TEMPLATE_ACCESSIBLE_SETTINGS",
    description=_("Sequence of setting names available within templates."),
    editable=False,
    default=(
        "ACCOUNTS_APPROVAL_REQUIRED", "ACCOUNTS_VERIFICATION_REQUIRED",
        "ADMIN_MENU_COLLAPSED",
        "BITLY_ACCESS_TOKEN", "BLOG_USE_FEATURED_IMAGE",
        "COMMENTS_DISQUS_SHORTNAME", "COMMENTS_NUM_LATEST",
        "COMMENTS_DISQUS_API_PUBLIC_KEY", "COMMENTS_DISQUS_API_SECRET_KEY",
        "COMMENTS_USE_RATINGS", "DEV_SERVER", "FORMS_USE_HTML5",
        "GRAPPELLI_INSTALLED", "GOOGLE_ANALYTICS_ID", "JQUERY_FILENAME",
        "LOGIN_URL", "LOGOUT_URL", "SITE_TITLE", "SITE_TAGLINE", "USE_L10N",
    ),
)
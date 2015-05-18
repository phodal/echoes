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
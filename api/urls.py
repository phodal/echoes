# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url
from rest_framework import routers
from api.views import BlogPostListSet

router = routers.DefaultRouter()
router.register(r'blog_list', BlogPostListSet)

urlpatterns = patterns('api.views',
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
)
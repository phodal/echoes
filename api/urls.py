# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url
from rest_framework import routers
from api.blog_api import BlogPostListSet, BlogPostDetailSet

router = routers.DefaultRouter()
router.register(r'blog_list', BlogPostListSet)
router.register(r'blog_detail', BlogPostDetailSet)

urlpatterns = patterns('api.views',
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
)
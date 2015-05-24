from django.conf.urls import include, url, patterns
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.views.decorators.cache import cache_page
from blog.feeds import WeblogEntryFeed
from blog.sitemaps import WeblogSitemap
from django.contrib.sitemaps import FlatPageSitemap, views as sitemap_views

from conf import settings
from django.contrib.flatpages import views as flat_views

sitemaps = {
    'weblog': WeblogSitemap,
}

urlpatterns = patterns("frontend.views",
   url("^$", "homepage", name="home"),
)

urlpatterns += patterns("core.views",
   url("^set_device/(?P<device>.*)/$", "set_device", name="set_device"),
   url(r'^rss/weblog/$', WeblogEntryFeed(), name='weblog-feed'),
   url(r'^weblog/', include('blog.urls', namespace='weblog')),
)

urlpatterns += [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^api/', include('api.urls')),
    url(r'^sitemap\.xml$', cache_page(60 * 60 * 6)(sitemap_views.sitemap), {'sitemaps': sitemaps}),
    url(r'^(?P<url>.*/)$', flat_views.flatpage),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += staticfiles_urlpatterns()
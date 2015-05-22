from django.conf.urls import include, url, patterns
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from conf import settings


urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^api/', include('api.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += patterns("frontend.views",
   url("^$", "homepage", name="home"),
)

urlpatterns += patterns("core.views",
   url("^set_device/(?P<device>.*)/$", "set_device", name="set_device"),
)

urlpatterns += staticfiles_urlpatterns()
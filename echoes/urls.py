from django.conf.urls import include, url, patterns
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.admin.sites import NotRegistered
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from conf import settings

# Remove unwanted models from the admin that are installed by default with
# third-party apps.
for model in settings.ADMIN_REMOVAL:
    try:
        model = tuple(model.rsplit(".", 1))
        exec("from %s import %s" % model)
    except ImportError:
        pass
    else:
        try:
            admin.site.unregister(eval(model[1]))
        except NotRegistered:
            pass

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += patterns("frontend.views",
   url("^$", "homepage", name="home"),
)

urlpatterns += staticfiles_urlpatterns()
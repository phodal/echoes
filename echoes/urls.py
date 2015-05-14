from django.conf.urls import include, url
from django.contrib import admin
from core.views import direct_to_template

urlpatterns = [
    # Examples:
    # url(r'^$', 'echoes.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url("^$", direct_to_template, {"template": "index.html"}, name="home"),
]

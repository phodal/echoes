from rest_framework import filters
from rest_framework import serializers, viewsets
from rest_framework.decorators import detail_route
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.response import Response
from rest_framework import renderers
from blog.models import Entry


class BlogpostDetailSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Entry
        fields = ('headline', 'slug', 'author', 'body')


class BlogPostDetailSet(viewsets.ReadOnlyModelViewSet):
    queryset = Entry.objects.filter(is_active=True)
    serializer_class = BlogpostDetailSerializer
    permission_classes = (IsAuthenticatedOrReadOnly,)
    filter_backends = (filters.SearchFilter,)
    search_fields = ('headline', 'slug', 'author', 'body')

    @detail_route(renderer_classes=(renderers.StaticHTMLRenderer,))
    def highlight(self, request, *args, **kwargs):
        snippet = self.get_object()
        return Response(snippet.highlighted)


class BlogpostListSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Entry
        fields = ('headline', 'slug', 'author')


class BlogPostListSet(viewsets.ReadOnlyModelViewSet):
    queryset = Entry.objects.filter(is_active=True)
    serializer_class = BlogpostListSerializer
    permission_classes = (IsAuthenticatedOrReadOnly,)
    filter_backends = (filters.SearchFilter,)
    search_fields = ('headline', 'slug', 'author')

    @detail_route(renderer_classes=(renderers.StaticHTMLRenderer,))
    def highlight(self, request, *args, **kwargs):
        snippet = self.get_object()
        return Response(snippet.highlighted)
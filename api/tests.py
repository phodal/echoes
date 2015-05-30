from django.test import TestCase


class ApiTests(TestCase):
    """
    Tests for views that are instances of TemplateView.
    """

    def test_blog_list_api(self):
        response = self.client.get('/api/blog_list/')
        self.assertEqual(response.status_code, 200)

    def test_blog_detail_api(self):
        response = self.client.get('/api/blog_detail/')
        self.assertEqual(response.status_code, 200)
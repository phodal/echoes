from django.test import TestCase

class TemplateViewTests(TestCase):
    """
    Tests for views that are instances of TemplateView.
    """
    def test_homepage(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)
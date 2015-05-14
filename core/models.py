from django.contrib.sites.managers import CurrentSiteManager
from django.db import models
from utils.sites import current_site_id


class SiteRelated(models.Model):
    """
    Abstract model for all things site-related. Adds a foreignkey to
    Django's ``Site`` model, and filters by site with all querysets.
    See ``mezzanine.utils.sites.current_site_id`` for implementation
    details.
    """

    objects = CurrentSiteManager()

    class Meta:
        abstract = True

    site = models.ForeignKey("sites.Site", editable=False)

    def save(self, update_site=False, *args, **kwargs):
        """
        Set the site to the current site when the record is first
        created, or the ``update_site`` argument is explicitly set
        to ``True``.
        """
        if update_site or not self.id:
            self.site_id = current_site_id()
        super(SiteRelated, self).save(*args, **kwargs)

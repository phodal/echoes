# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_event'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='entry',
            options={'ordering': ('-pub_date',), 'get_latest_by': 'pub_date', 'verbose_name_plural': 'Blog'},
        ),
        migrations.AlterField(
            model_name='entry',
            name='content_format',
            field=models.CharField(max_length=50, choices=[(b'reST', b'reStructuredText'), (b'html', b'Raw HTML'), (b'md', b'Markdown')]),
        ),
        migrations.AlterField(
            model_name='event',
            name='date',
            field=models.DateTimeField(),
        ),
    ]

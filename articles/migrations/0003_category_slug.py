# Generated by Django 3.2.8 on 2021-10-16 02:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0002_alter_category_subcategory'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='slug',
            field=models.SlugField(default=1, max_length=400),
            preserve_default=False,
        ),
    ]

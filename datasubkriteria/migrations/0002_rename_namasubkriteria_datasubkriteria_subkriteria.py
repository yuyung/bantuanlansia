# Generated by Django 3.2.8 on 2022-08-12 05:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('datasubkriteria', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='datasubkriteria',
            old_name='namasubkriteria',
            new_name='subkriteria',
        ),
    ]

# Generated by Django 3.2.8 on 2022-08-12 05:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('datasubkriteria', '0002_rename_namasubkriteria_datasubkriteria_subkriteria'),
    ]

    operations = [
        migrations.RenameField(
            model_name='datasubkriteria',
            old_name='namakriteria',
            new_name='namasubkriteria',
        ),
        migrations.RemoveField(
            model_name='datasubkriteria',
            name='subkriteria',
        ),
    ]

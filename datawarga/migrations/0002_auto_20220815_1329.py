# Generated by Django 3.2.8 on 2022-08-15 06:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('datawarga', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='datawarga',
            name='fasilitasrumah',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='datawarga',
            name='kendaraan',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='datawarga',
            name='pekerjaan',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='datawarga',
            name='penghasilan',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='datawarga',
            name='statusrumah',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='datawarga',
            name='tanggungan',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
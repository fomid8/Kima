# Generated by Django 3.1.2 on 2020-11-29 20:09

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('kyma', '0001_initial'),
        ('quickstart', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='MyBook',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state', models.IntegerField()),
                ('account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('book1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kyma.book')),
            ],
        ),
    ]

# Generated by Django 3.1.2 on 2020-12-16 11:39

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('kyma', '0001_initial'),
        ('quickstart', '0002_auto_20201216_1137'),
    ]

    operations = [
        migrations.CreateModel(
            name='Ratinguser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('userrate', models.IntegerField(validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(5)])),
                ('account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('current_book', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kyma.book')),
            ],
        ),
        migrations.CreateModel(
            name='MyQuote',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quote_text', models.TextField()),
                ('sendtime', models.DateTimeField(default=django.utils.timezone.now, editable=False)),
                ('Likes', models.IntegerField(default=0)),
                ('account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('current_book', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='kyma.book')),
            ],
        ),
        migrations.CreateModel(
            name='LikeQuote',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('quote', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='quickstart.myquote')),
            ],
        ),
    ]

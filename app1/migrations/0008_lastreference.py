# Generated by Django 4.1.7 on 2023-11-20 05:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0007_alter_purchasepayment_pymntid'),
    ]

    operations = [
        migrations.CreateModel(
            name='LastReference',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('last_reference', models.IntegerField(default=0)),
                ('cid', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='app1.company')),
            ],
        ),
    ]

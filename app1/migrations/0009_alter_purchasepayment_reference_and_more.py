# Generated by Django 4.1.7 on 2023-11-20 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0008_lastreference'),
    ]

    operations = [
        migrations.AlterField(
            model_name='purchasepayment',
            name='reference',
            field=models.IntegerField(blank=True, null=True, unique=True),
        ),
        migrations.AlterModelTable(
            name='purchasepayment',
            table='purchasepayment',
        ),
    ]

# Generated by Django 4.1.7 on 2023-12-18 09:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0023_paymentreference'),
    ]

    operations = [
        migrations.AlterField(
            model_name='purchasebill',
            name='status',
            field=models.CharField(choices=[('Draft', 'Draft'), ('Billed', 'Billed'), ('Save', 'Save')], default='Draft', max_length=150),
        ),
    ]

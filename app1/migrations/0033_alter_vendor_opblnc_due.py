# Generated by Django 4.1.7 on 2024-01-19 07:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0032_alter_purchasepayment_amtcredit_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vendor',
            name='opblnc_due',
            field=models.FloatField(max_length=100, null=True),
        ),
    ]
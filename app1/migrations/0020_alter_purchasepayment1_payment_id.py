# Generated by Django 4.1.7 on 2023-12-05 09:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0019_purchasepayment1_payment_id_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='purchasepayment1',
            name='payment_id',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
# Generated by Django 4.1.7 on 2023-10-31 07:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0006_alter_purchasepayment_paymentmethod'),
    ]

    operations = [
        migrations.AddField(
            model_name='payrollemployee',
            name='status',
            field=models.CharField(default='Active', max_length=100),
        ),
    ]
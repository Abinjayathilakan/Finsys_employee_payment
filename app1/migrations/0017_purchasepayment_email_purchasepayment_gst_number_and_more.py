# Generated by Django 4.1.7 on 2023-10-17 06:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0016_purchasepayment_account_number_purchasepayment_cash_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='purchasepayment',
            name='email',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasepayment',
            name='gst_number',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasepayment',
            name='gst_treatment',
            field=models.CharField(max_length=100, null=True),
        ),
    ]

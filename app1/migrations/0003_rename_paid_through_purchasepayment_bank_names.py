# Generated by Django 4.1.7 on 2023-11-06 05:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0002_alter_payrollemployee_employeeid'),
    ]

    operations = [
        migrations.RenameField(
            model_name='purchasepayment',
            old_name='paid_through',
            new_name='bank_names',
        ),
    ]
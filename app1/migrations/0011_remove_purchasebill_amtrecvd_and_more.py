# Generated by Django 4.1.7 on 2023-11-25 08:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0010_alter_purchasepayment_reference_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='purchasebill',
            name='amtrecvd',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='balance_due',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='branch',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='cgst',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='contact_name',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='credit_period',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='date',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='deliver_date',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='deliverto',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='destiofsupply',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='discount',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='due_date',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='file',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='grand_total',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='igst',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='note',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='reference',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='round_off',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='sgst',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='ship_charge',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='sourceofsupply',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='sub_total',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='tax_amount',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='tcs',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='tcs_amount',
        ),
        migrations.RemoveField(
            model_name='purchasebill',
            name='total_discount',
        ),
        migrations.AddField(
            model_name='vendor',
            name='creditlimit',
            field=models.CharField(max_length=100, null=True),
        ),
    ]

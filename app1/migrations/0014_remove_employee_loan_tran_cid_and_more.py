# Generated by Django 4.1.7 on 2023-11-29 10:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0013_remove_purchasebill_account_number_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='employee_loan_tran',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='employee_loan_tran',
            name='emploee_loan',
        ),
        migrations.RemoveField(
            model_name='employee_loan_tran',
            name='employee',
        ),
        migrations.RemoveField(
            model_name='loan_duration',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='paymentterms',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='paymnt_made_comments',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='paymnt_made_comments',
            name='empid',
        ),
        migrations.RemoveField(
            model_name='recterm',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='repeatevry',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='salary_duration',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='salary_duration',
            name='empid',
        ),
        migrations.RemoveField(
            model_name='bankings_g',
            name='account_number',
        ),
        migrations.RemoveField(
            model_name='bankings_g',
            name='bank_status',
        ),
        migrations.RemoveField(
            model_name='bankings_g',
            name='term',
        ),
        migrations.RemoveField(
            model_name='challan',
            name='is_converted',
        ),
        migrations.RemoveField(
            model_name='customer',
            name='credit_limit',
        ),
        migrations.RemoveField(
            model_name='employeeloan',
            name='balance_loan',
        ),
        migrations.RemoveField(
            model_name='employeeloan',
            name='loan_term',
        ),
        migrations.RemoveField(
            model_name='employeeloan',
            name='loan_value',
        ),
        migrations.RemoveField(
            model_name='loan_transaction',
            name='total',
        ),
        migrations.RemoveField(
            model_name='payment',
            name='status',
        ),
        migrations.RemoveField(
            model_name='payrollemployee',
            name='age',
        ),
        migrations.RemoveField(
            model_name='payrollemployee',
            name='is_active',
        ),
        migrations.RemoveField(
            model_name='purchasedebit',
            name='adjustment',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='account_number',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='bank_names',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='cash',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='cheque_number',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='email',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='gst_number',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='gst_treatment',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='status',
        ),
        migrations.RemoveField(
            model_name='purchasepayment',
            name='upi_id',
        ),
        migrations.RemoveField(
            model_name='recinvoice',
            name='discount',
        ),
        migrations.RemoveField(
            model_name='recinvoice',
            name='email',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='adjust',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='balance',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='cheque_no',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='inv_status',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='paidoff',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='pay_method',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='salcrd_status',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='term_days',
        ),
        migrations.RemoveField(
            model_name='salesorder',
            name='upi_no',
        ),
        migrations.RemoveField(
            model_name='vendor',
            name='creditlimit',
        ),
        migrations.AddField(
            model_name='payrollemployee',
            name='status',
            field=models.CharField(default='Active', max_length=100),
        ),
        migrations.AddField(
            model_name='recinvoice_item',
            name='description',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AlterField(
            model_name='attendance',
            name='status',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='challan',
            name='status',
            field=models.CharField(choices=[('Draft', 'Draft'), ('Invoiced', 'Invoiced')], default='Draft', max_length=150),
        ),
        migrations.AlterField(
            model_name='invoice',
            name='invoiceno',
            field=models.IntegerField(default=1000),
        ),
        migrations.AlterField(
            model_name='payrollemployee',
            name='employeeid',
            field=models.AutoField(primary_key=True, serialize=False, verbose_name='EMPLOYEEID'),
        ),
        migrations.AlterField(
            model_name='purchasedebit',
            name='debit_no',
            field=models.IntegerField(default=1000),
        ),
        migrations.AlterField(
            model_name='purchasepayment',
            name='pymntid',
            field=models.AutoField(primary_key=True, serialize=False, verbose_name='pyid'),
        ),
        migrations.AlterField(
            model_name='purchasepayment',
            name='reference',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='recinvoice',
            name='recinvoiceno',
            field=models.IntegerField(default=1000),
        ),
        migrations.DeleteModel(
            name='DeletedPurchasePayments',
        ),
        migrations.DeleteModel(
            name='employee_loan_tran',
        ),
        migrations.DeleteModel(
            name='loan_duration',
        ),
        migrations.DeleteModel(
            name='PaymentTerms',
        ),
        migrations.DeleteModel(
            name='paymnt_made_comments',
        ),
        migrations.DeleteModel(
            name='recterm',
        ),
        migrations.DeleteModel(
            name='repeatevry',
        ),
        migrations.DeleteModel(
            name='salary_duration',
        ),
    ]

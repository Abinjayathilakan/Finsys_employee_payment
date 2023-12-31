# Generated by Django 4.1.7 on 2023-12-18 09:15

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('app1', '0024_alter_purchasebill_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='ConvertBill',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='DeletedChallan',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ref', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='deletedcreditnotes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('reference_number', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='DeletedPaymentReceived',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('referno', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='PurchaseBillComment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_text', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='PurchaseOrderComment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_text', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='VendorComment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_text', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('vendor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='app1.vendor')),
            ],
        ),
        migrations.RemoveField(
            model_name='latestreference',
            name='cid',
        ),
        migrations.RemoveField(
            model_name='paymentreference',
            name='company',
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
            model_name='invoice',
            name='gsttype',
        ),
        migrations.AddField(
            model_name='bank_transactions',
            name='balance',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
        migrations.AddField(
            model_name='company',
            name='prfile',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='customer',
            name='placesupply',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='employee_loan_tran',
            name='cheque_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='employee_loan_tran',
            name='payment_method',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='employee_loan_tran',
            name='upi_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='employeeloan',
            name='cheque_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='employeeloan',
            name='payment_method',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='employeeloan',
            name='upi_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='adjust',
            field=models.CharField(default=0, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='balance',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='bank_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='cheque_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='paidoff',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='pay_method',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='tot_inv_no',
            field=models.IntegerField(default=0, null=True),
        ),
        migrations.AddField(
            model_name='invoice',
            name='upi_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='itemtable',
            name='min_stock',
            field=models.CharField(default='0', max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='payment',
            name='bankacc',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='payment',
            name='cheq_id',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='payment',
            name='creditcard',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='payment',
            name='upi',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='paymentitems',
            name='invid',
            field=models.BigIntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='paymentitems',
            name='invtype',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='account_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='cheque_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='customer_gstin',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='customer_gsttype',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='is_from_purchase_order',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='purchase_order',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.purchaseorder'),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='purchase_order_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='upi_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='vendor_balance',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='vendor_gstin',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='purchasebill',
            name='vendor_gsttype',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasedebit',
            name='file',
            field=models.FileField(default='default.jpg', upload_to='sales'),
        ),
        migrations.AddField(
            model_name='purchasedebit',
            name='gstnumber',
            field=models.CharField(default='NULL', max_length=150),
        ),
        migrations.AddField(
            model_name='purchasedebit',
            name='gsttype',
            field=models.CharField(default='NULL', max_length=150),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='account_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='cheque_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='customer_gstin',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='customer_gsttype',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='is_from_purchase_order',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='upi_number',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='vendor_balance',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='vendor_gstin',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AddField(
            model_name='purchaseorder',
            name='vendor_gsttype',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='purchasepayment',
            name='paid_through',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='adjust',
            field=models.FloatField(default=0, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='balance',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='bank_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='cheque_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='entity_type',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='paidoff',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='pay_method',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='shipping_charge',
            field=models.FloatField(default=0, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='tot_inv_no',
            field=models.IntegerField(default=0, null=True),
        ),
        migrations.AddField(
            model_name='recinvoice',
            name='upi_no',
            field=models.CharField(default='', max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='cheque_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='place_supply',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='purchase_order',
            field=models.CharField(blank=True, default=0, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='refference',
            field=models.IntegerField(default=1),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='upi_no',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='recurring_bill',
            name='vendor_mail',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='retainerinvoices',
            name='balance',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='acc_no',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='adjustment',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='balance',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='bank_id',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='cgst',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='cheque_no',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='file',
            field=models.FileField(blank=True, default='default.png', null=True, upload_to='crdit_note/'),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='igst',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='payment_method',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='reference_number',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='sgst',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='status',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote',
            name='upi_id',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote1',
            name='billno',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote1',
            name='rem_qty',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='salescreditnote1',
            name='stock',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='invoice',
            name='duedate',
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name='loan_account',
            name='desc',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='loan_account',
            name='intrest',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='loan_account',
            name='paid',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='loan_account',
            name='processing',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='loan_transaction',
            name='loan_intrest',
            field=models.TextField(blank=True, default=0, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='payrollemployee',
            name='employeeid',
            field=models.AutoField(primary_key=True, serialize=False, verbose_name='EMPLOYEEID'),
        ),
        migrations.AlterField(
            model_name='purchasebill',
            name='reference',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='purchaseorder',
            name='status',
            field=models.CharField(choices=[('Draft', 'Draft'), ('Approved', 'Approved'), ('Save', 'Save'), ('Billed', 'Billed')], default='Draft', max_length=150),
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
            name='enddate',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='recinvoice',
            name='startdate',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='recinvoice',
            name='subtotal',
            field=models.FloatField(default=0, null=True),
        ),
        migrations.AlterField(
            model_name='recinvoice',
            name='taxamount',
            field=models.FloatField(default=0, null=True),
        ),
        migrations.AlterField(
            model_name='recinvoice_item',
            name='product',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='recurring_bill',
            name='profile_name',
            field=models.CharField(blank=True, default=0, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='recurring_bill',
            name='status',
            field=models.CharField(choices=[('Draft', 'Draft'), ('Save', 'Save')], default='Draft', max_length=150),
        ),
        migrations.AlterField(
            model_name='salescreditnote',
            name='credit_no',
            field=models.TextField(blank=True, max_length=100, null=True),
        ),
        migrations.DeleteModel(
            name='DeletedPurchasePayments',
        ),
        migrations.DeleteModel(
            name='LatestReference',
        ),
        migrations.DeleteModel(
            name='PaymentReference',
        ),
        migrations.DeleteModel(
            name='salary_duration',
        ),
        migrations.AddField(
            model_name='purchaseordercomment',
            name='order',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='order_comments', to='app1.purchaseorder'),
        ),
        migrations.AddField(
            model_name='purchasebillcomment',
            name='bill',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bill_comments', to='app1.purchasebill'),
        ),
        migrations.AddField(
            model_name='purchasebillcomment',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='deletedpaymentreceived',
            name='cid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.company'),
        ),
        migrations.AddField(
            model_name='deletedcreditnotes',
            name='cid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.company'),
        ),
        migrations.AddField(
            model_name='deletedchallan',
            name='cid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.company'),
        ),
        migrations.AddField(
            model_name='convertbill',
            name='purchase_bill',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app1.purchasebill'),
        ),
        migrations.AddField(
            model_name='convertbill',
            name='purchase_order',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app1.purchaseorder'),
        ),
    ]

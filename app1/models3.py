import datetime
from distutils.command.upload import upload
from email.policy import default
from xml.parsers.expat import model
from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django_countries.fields import CountryField


class sign(models.Model):
    sid = models.AutoField(('SID'), primary_key=True)
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    password = models.CharField(max_length=100)
    conformpassword = models.CharField(max_length=100)

    def __str__(self):
        return self.email + " " + self.password

    class meta:
        db_table = "sign"


class company(models.Model):
    cid = models.AutoField(('CID'), primary_key=True)
    id = models.ForeignKey(User, on_delete=models.CASCADE)
    cname = models.CharField(max_length=100)
    caddress = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    pincode = models.CharField(max_length=100)
    cemail = models.EmailField(max_length=100)
    phone = models.CharField(max_length=100)
    cimg = models.ImageField(upload_to='images/', default='/images/default.png')
    bname = models.CharField(max_length=100)
    industry = models.CharField(max_length=100)
    ctype = models.CharField(max_length=100)
    abt = models.CharField(max_length=100)
    paid = models.CharField(max_length=100)
    gst_number =models.CharField(max_length=100, null=True,blank=True)
    gst_type= models.CharField(max_length=100, null=True,blank=True)
    pan_number=models.CharField(max_length=100, null=True,blank=True)
    cash=models.IntegerField(default=0)
    prfile = models.IntegerField(default=0)

class customer(models.Model):
    customerid = models.AutoField(('CUSTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    title= models.CharField(max_length=10)
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    company = models.CharField(max_length=100)
    location = models.CharField(max_length=100)
    placesupply = models.CharField(max_length=100,null=True,blank=True)
    gsttype = models.CharField(max_length=100, null=True)
    gstin = models.CharField(max_length=100, default='')
    panno = models.CharField(max_length=100, null=True)
    email = models.CharField(max_length=100)
    website = models.CharField(max_length=100, default='')
    mobile = models.CharField(max_length=10)
    street = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    pincode = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    shipstreet = models.CharField(max_length=100, null=True)
    shipcity = models.CharField(max_length=100, null=True)
    shipstate = models.CharField(max_length=100, null=True)
    shippincode = models.CharField(max_length=100, null=True)
    shipcountry = models.CharField(max_length=100, null=True)
    opening_balance = models.FloatField(null=True)
    opening_balance_due = models.FloatField(null=True)
    credit_limit = models.FloatField(null=True)
    date = models.DateField(null=True)
    opnbalance_status = models.CharField(max_length=100,default='Default')
    customer_status = (
        ('Active','Active'),
        ('Inactive','Inactive'),
    )
    status =models.CharField(max_length=150,choices=customer_status,default='Active')
    receivables  = models.FloatField(null=True)
    file = models.FileField(upload_to='Customer',default="default.jpg")
    pay_method = models.CharField(max_length=100,null=True)
    price_list = models.IntegerField(null=True)

    class meta:
        db_table = "customer"


class supplier(models.Model):
    supplierid = models.AutoField(('SUPPLIERID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    title = models.CharField(max_length=100)
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    company = models.CharField(max_length=100)
    mobile = models.CharField(max_length=10)
    email = models.CharField(max_length=100)
    website = models.CharField(max_length=100)
    billingrate = models.CharField(max_length=100)
    terms = models.CharField(max_length=100)
    addterms = models.CharField(max_length=100)
    openingbalance = models.CharField(max_length=100)
    accountno = models.CharField(max_length=100)
    gsttype = models.CharField(max_length=100)
    gstin = models.CharField(max_length=100)
    taxregistrationno = models.CharField(max_length=100)
    effectivedate = models.CharField(max_length=100)
    defaultexpenceaccount = models.CharField(max_length=100)
    tds = models.CharField(max_length=200)
    street = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    pincode = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    notes = models.CharField(max_length=100)


class advancepayment(models.Model):
    advancepaymentid = models.AutoField(('ADVANCEPAYMENTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    payee = models.CharField(max_length=100)
    account = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)
    paymentdate = models.CharField(max_length=100)
    refno = models.CharField(max_length=100)
    memo = models.CharField(max_length=100)


class paydowncreditcard(models.Model):
    paycreditcardid = models.AutoField(('PAYCREDITCARDID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    ccno = models.CharField(max_length=100)
    payee = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)
    dateofpayment = models.CharField(max_length=100)
    discription = models.CharField(max_length=100)


class salesrecpts(models.Model):
    salesrecptsid = models.AutoField(('SALESRECPTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    salename = models.CharField(max_length=100)
    saleemail = models.EmailField()
    saleaddress = models.CharField(max_length=150)
    saledate = models.CharField(max_length=10)
    saleno = models.CharField(max_length=20)
    salesplace = models.CharField(max_length=100)
    salepay = models.CharField(max_length=10)
    salerefno = models.CharField(max_length=10)
    saledeposit = models.CharField(max_length=150)
    salepro = models.CharField(max_length=100)
    salehsn = models.CharField(max_length=100)
    saledescription = models.CharField(max_length=100)
    saleqty = models.CharField(max_length=100)
    saleprice = models.CharField(max_length=100)
    saaletotal = models.CharField(max_length=100)
    salesubtotal = models.CharField(max_length=100)
    tax = models.IntegerField(default=0, null=True)
    saletaxamount = models.CharField(max_length=100)
    salegrandtotal = models.CharField(max_length=100)

    category2 = models.CharField(max_length=100)
    categoryhsn2 = models.CharField(max_length=100)
    descrptin2 = models.CharField(max_length=100)
    catqty2 = models.CharField(max_length=100)
    catprice2 = models.CharField(max_length=100)
    cattotal2 = models.CharField(max_length=100)
    tax1 = models.IntegerField(default=0, null=True)

    category3 = models.CharField(max_length=100)
    categoryhsn3 = models.CharField(max_length=100)
    descrptin3 = models.CharField(max_length=100)
    catqty3 = models.CharField(max_length=100)
    catprice3 = models.CharField(max_length=100)
    cattotal3 = models.CharField(max_length=100)
    tax2 = models.IntegerField(default=0, null=True)

    category4 = models.CharField(max_length=100)
    categoryhsn4 = models.CharField(max_length=100)
    descrptin4 = models.CharField(max_length=100)
    catqty4 = models.CharField(max_length=100)
    catprice4 = models.CharField(max_length=100)
    cattotal4 = models.CharField(max_length=100)
    tax3 = models.IntegerField(default=0, null=True)
    offline = models.CharField(max_length=100, default='', null=True)

    def __str__(self):
        return self.saleno


class timeact(models.Model):
    timeactid = models.AutoField(('TIMEACTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    timdate = models.CharField(max_length=10)
    timename = models.CharField(max_length=20)
    timecust = models.CharField(max_length=20)
    timecheck = models.CharField(max_length=10)
    timebill = models.CharField(max_length=20)
    timecheckk = models.CharField(max_length=10)
    timestart = models.CharField(max_length=6)
    timeend = models.CharField(max_length=6)
    tyme = models.CharField(max_length=6)
    timedes = models.CharField(max_length=50)


class timeactsale(models.Model):
    timeactsaleid = models.AutoField(('TIMEACTSALEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    timdatesale = models.CharField(max_length=10)
    timenamesale = models.CharField(max_length=20)
    timecustsale = models.CharField(max_length=20)
    timechecksale = models.CharField(max_length=10)
    timebillsale = models.CharField(max_length=20)
    timecheckksale = models.CharField(max_length=10)
    timestartsale = models.CharField(max_length=6)
    timeendsale = models.CharField(max_length=6)
    tymesale = models.CharField(max_length=6)
    timedessale = models.CharField(max_length=50)


class Cheqs(models.Model):
    chequeid = models.AutoField(('CHEQUEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    payee = models.CharField(max_length=100)
    bankacc = models.CharField(max_length=100)
    mailaddr = models.CharField(max_length=100)
    paydate = models.CharField(max_length=100)
    chequeno = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)

    category1 = models.CharField(max_length=100)
    descrptin1 = models.CharField(max_length=100)
    catqty1 = models.CharField(max_length=100)
    catprice1 = models.CharField(max_length=100)
    cattotal1 = models.CharField(max_length=100)

    category2 = models.CharField(max_length=100)
    descrptin2 = models.CharField(max_length=100)
    catqty2 = models.CharField(max_length=100)
    catprice2 = models.CharField(max_length=100)
    cattotal2 = models.CharField(max_length=100)

    category3 = models.CharField(max_length=100)
    descrptin3 = models.CharField(max_length=100)
    catqty3 = models.CharField(max_length=100)
    catprice3 = models.CharField(max_length=100)
    cattotal3 = models.CharField(max_length=100)

    category4 = models.CharField(max_length=100)
    descrptin4 = models.CharField(max_length=100)
    catqty4 = models.CharField(max_length=100)
    catprice4 = models.CharField(max_length=100)
    cattotal4 = models.CharField(max_length=100)

    product = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    description = models.CharField(max_length=100, default='')
    qty = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    total = models.CharField(max_length=100)
    product2 = models.CharField(max_length=100)
    hsn2 = models.CharField(max_length=100)
    description2 = models.CharField(max_length=100)
    qty2 = models.CharField(max_length=100)
    price2 = models.CharField(max_length=100)
    total2 = models.CharField(max_length=100)
    product3 = models.CharField(max_length=100)
    hsn3 = models.CharField(max_length=100)
    description3 = models.CharField(max_length=100)
    qty3 = models.CharField(max_length=100)
    price3 = models.CharField(max_length=100)
    total3 = models.CharField(max_length=100)
    product4 = models.CharField(max_length=100)
    hsn4 = models.CharField(max_length=100)
    description4 = models.CharField(max_length=100)
    qty4 = models.CharField(max_length=100)
    price4 = models.CharField(max_length=100)
    total4 = models.CharField(max_length=100)

    subtotal = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    tax2 = models.CharField(max_length=100, default='')
    tax3 = models.CharField(max_length=100, default='')
    tax4 = models.CharField(max_length=100, default='')
    taxamount = models.CharField(max_length=100)
    grandtotal = models.CharField(max_length=100)


class invoice(models.Model):
    invoiceid = models.AutoField(('INVOICEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customername = models.CharField(max_length=100)
    email = models.CharField(max_length=100, default='')
    invoiceno = models.CharField(max_length=100)
    terms = models.CharField(max_length=100, default='')
    invoicedate = models.DateField()
    duedate = models.DateField()
    bname = models.CharField(max_length=255, default='')
    placosupply = models.CharField(max_length=100, default='')

    # product = models.CharField(max_length=100)
    # hsn = models.CharField(max_length=100)
    # description = models.CharField(max_length=100, default='')
    # qty = models.IntegerField(default=0, null=True)
    # price = models.CharField(max_length=100)
    # total = models.IntegerField(default=0, null=True)
    # tax = models.CharField(max_length=100)
    

    # product2 = models.CharField(max_length=100, default='')
    # hsn2 = models.CharField(max_length=100, default='')
    # description2 = models.CharField(max_length=100, default='')
    # qty2 = models.IntegerField(default=0, null=True)
    # price2 = models.CharField(max_length=100, default='')
    # total2 = models.IntegerField(default=0, null=True)
    # tax2 = models.CharField(max_length=100, default='')

    # product3 = models.CharField(max_length=100, default='')
    # hsn3 = models.CharField(max_length=100, default='')
    # description3 = models.CharField(max_length=100, default='')
    # qty3 = models.IntegerField(default=0, null=True)
    # price3 = models.CharField(max_length=100, default='')
    # total3 = models.IntegerField(default=0, null=True)
    # tax3 = models.CharField(max_length=100, default='')

    # product4 = models.CharField(max_length=100, default='')
    # hsn4 = models.CharField(max_length=100, default='')
    # description4 = models.CharField(max_length=100, default='')
    # qty4 = models.IntegerField(default=0, null=True)
    # price4 = models.CharField(max_length=100, default='')
    # total4 = models.IntegerField(default=0, null=True)
    # tax4 = models.CharField(max_length=100, default='')

    amtrecvd = models.IntegerField(default=0, null=True)
    # taxamount = models.IntegerField(default=0, null=True)
    baldue = models.FloatField(default=0, null=True)
    subtotal = models.IntegerField(default=0, null=True)
    grandtotal = models.FloatField(default=0, null=True)
    invoice_orderno = models.CharField(max_length=255, default='', null=True)

    pay_method = models.CharField(max_length=255, default='', null=True)
    cheque_no = models.CharField(max_length=255, default='', null=True)
    upi_no = models.CharField(max_length=255, default='', null=True)
    bank_no = models.CharField(max_length=255, default='', null=True)

    paidoff=models.CharField(null=True,blank=True,max_length=255)
    balance=models.CharField(null=True,blank=True,max_length=255)
    
    invoice_status = (
        ('Draft','Draft'),
        
        ('Invoiced','Invoiced'),

    )
    
    status =models.CharField(max_length=150,default='Draft')

    note = models.CharField(max_length=255,default='', null=True)
    file = models.FileField(upload_to='invoice',default="default.jpg")

    IGST = models.CharField(max_length=100,default=0, null=True)
    CGST = models.CharField(max_length=100,default=0, null=True)
    SGST = models.CharField(max_length=100,default=0, null=True)
    # TCS = models.CharField(max_length=100,default=0, null=True)
    taxamount = models.CharField(max_length=100,default=0, null=True)
    adjust = models.CharField(max_length=100,default=0, null=True)
    shipping_charge = models.CharField(max_length=100,default=0, null=True)
    tot_inv_no = models.IntegerField(default=0, null=True)

class invoice_item(models.Model):
    invoice = models.ForeignKey(invoice,on_delete=models.CASCADE)
    cid = models.ForeignKey(company,on_delete=models.CASCADE)
    product = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    # description = models.CharField(max_length=100, default='')
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100)
    total = models.IntegerField(default=0, null=True)
    tax = models.CharField(max_length=100)
    discount = models.CharField(max_length=100,default=0, null=True)

class bills(models.Model):
    billid = models.AutoField(('BILLID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    payee = models.CharField(max_length=100)
    paymacnt = models.CharField(max_length=100)
    paymdate = models.CharField(max_length=100)
    paymmethod = models.CharField(max_length=100)
    refno = models.CharField(max_length=100)
    totamt = models.CharField(max_length=100)

    category1 = models.CharField(max_length=100)
    descrptin1 = models.CharField(max_length=100)
    catqty1 = models.CharField(max_length=100)
    catprice1 = models.CharField(max_length=100)
    cattotal1 = models.CharField(max_length=100)

    category2 = models.CharField(max_length=100)
    descrptin2 = models.CharField(max_length=100)
    catqty2 = models.CharField(max_length=100)
    catprice2 = models.CharField(max_length=100)
    cattotal2 = models.CharField(max_length=100)

    category3 = models.CharField(max_length=100)
    descrptin3 = models.CharField(max_length=100)
    catqty3 = models.CharField(max_length=100)
    catprice3 = models.CharField(max_length=100)
    cattotal3 = models.CharField(max_length=100)

    category4 = models.CharField(max_length=100)
    descrptin4 = models.CharField(max_length=100)
    catqty4 = models.CharField(max_length=100)
    catprice4 = models.CharField(max_length=100)
    cattotal4 = models.CharField(max_length=100)

    product = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    qty = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    total = models.CharField(max_length=100)
    product2 = models.CharField(max_length=100)
    hsn2 = models.CharField(max_length=100)
    description2 = models.CharField(max_length=100)
    qty2 = models.CharField(max_length=100)
    price2 = models.CharField(max_length=100)
    total2 = models.CharField(max_length=100)
    product3 = models.CharField(max_length=100)
    hsn3 = models.CharField(max_length=100)
    description3 = models.CharField(max_length=100)
    qty3 = models.CharField(max_length=100)
    price3 = models.CharField(max_length=100)
    total3 = models.CharField(max_length=100)
    product4 = models.CharField(max_length=100)
    hsn4 = models.CharField(max_length=100)
    description4 = models.CharField(max_length=100)
    qty4 = models.CharField(max_length=100)
    price4 = models.CharField(max_length=100)
    total4 = models.CharField(max_length=100)

    subtotal = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    tax2 = models.CharField(max_length=100, default='')
    tax3 = models.CharField(max_length=100, default='')
    tax4 = models.CharField(max_length=100, default='')
    taxamount = models.CharField(max_length=100)
    grandtotal = models.CharField(max_length=100)
    payornot = models.CharField(max_length=100, default='', null=True)


class addac(models.Model):
    acname = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    usertype = models.CharField(max_length=100)
    dateadded = models.DateField(max_length=100, default='')
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)


class suplrcredit(models.Model):
    suppliercreditid = models.AutoField(('SUPCREDITID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    supplier = models.CharField(max_length=100)
    mailaddr = models.CharField(max_length=100)
    paymdate = models.CharField(max_length=100)
    refno = models.CharField(max_length=100)
    ccatego = models.CharField(max_length=100)
    cdescrip = models.CharField(max_length=100)
    cqty = models.CharField(max_length=100)
    cprice = models.CharField(max_length=100)
    ctotal = models.CharField(max_length=100)
    ccatego2 = models.CharField(max_length=100)
    cdescrip2 = models.CharField(max_length=100)
    cqty2 = models.CharField(max_length=100)
    cprice2 = models.CharField(max_length=100)
    ctotal2 = models.CharField(max_length=100)
    ccatego3 = models.CharField(max_length=100)
    cdescrip3 = models.CharField(max_length=100)
    cqty3 = models.CharField(max_length=100)
    cprice3 = models.CharField(max_length=100)
    ctotal3 = models.CharField(max_length=100)
    ccatego4 = models.CharField(max_length=100)
    cdescrip4 = models.CharField(max_length=100)
    cqty4 = models.CharField(max_length=100)
    cprice4 = models.CharField(max_length=100)
    ctotal4 = models.CharField(max_length=100)
    product = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    description = models.CharField(max_length=100, default='')
    qty = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    total = models.CharField(max_length=100)
    product2 = models.CharField(max_length=100)
    hsn2 = models.CharField(max_length=100)
    description2 = models.CharField(max_length=100)
    qty2 = models.CharField(max_length=100)
    price2 = models.CharField(max_length=100)
    total2 = models.CharField(max_length=100)
    product3 = models.CharField(max_length=100)
    hsn3 = models.CharField(max_length=100)
    description3 = models.CharField(max_length=100)
    qty3 = models.CharField(max_length=100)
    price3 = models.CharField(max_length=100)
    total3 = models.CharField(max_length=100)
    product4 = models.CharField(max_length=100)
    hsn4 = models.CharField(max_length=100)
    description4 = models.CharField(max_length=100)
    qty4 = models.CharField(max_length=100)
    price4 = models.CharField(max_length=100)
    total4 = models.CharField(max_length=100)

    subtotal = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    tax2 = models.CharField(max_length=100, default='')
    tax3 = models.CharField(max_length=100, default='')
    tax4 = models.CharField(max_length=100, default='')
    taxamount = models.CharField(max_length=100)
    grandtotal = models.CharField(max_length=100)
    creditamount = models.CharField(max_length=100)


class credit(models.Model):
    creditnoteid = models.AutoField(('CREDITNOTEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customer = models.CharField(max_length=100)
    mail = models.CharField(max_length=100)
    biladdr = models.CharField(max_length=100)
    creditdate = models.CharField(max_length=100)
    creditno = models.CharField(max_length=100, default='')
    place = models.CharField(max_length=100)
    invnum = models.CharField(max_length=100)
    invperiod = models.CharField(max_length=100)
    product = models.CharField(max_length=100)
    descrip = models.CharField(max_length=100)
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100)
    tax = models.CharField(max_length=100, default='0')
    subtot = models.IntegerField(default=0, null=True)
    total = models.IntegerField(default=0, null=True)
    grndtot = models.IntegerField(default=0, null=True)
    taxamnt = models.IntegerField(default=0, null=True)
    product1 = models.CharField(max_length=100, default='')
    descrip1 = models.CharField(max_length=100, default='')
    qty1 = models.IntegerField(default=0, null=True)
    price1 = models.CharField(max_length=100, default='')
    tax1 = models.CharField(max_length=100, default='0')
    total1 = models.IntegerField(default=0, null=True)
    product2 = models.CharField(max_length=100, default='')
    descrip2 = models.CharField(max_length=100, default='')
    qty2 = models.IntegerField(default=0, null=True)
    price2 = models.CharField(max_length=100, default='')
    tax2 = models.CharField(max_length=100, default='0')
    total2 = models.IntegerField(default=0, null=True)
    product3 = models.CharField(max_length=100, default='')
    descrip3 = models.CharField(max_length=100, default='')
    qty3 = models.IntegerField(default=0, null=True)
    price3 = models.CharField(max_length=100, default='')
    total3 = models.IntegerField(default=0, null=True)
    tax3 = models.CharField(max_length=100, default='0')

    class meta:
        db_table = "credit"




class expences(models.Model):
    expencesid = models.AutoField(('EXPENCEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    payee = models.CharField(max_length=100)
    paymdate = models.CharField(max_length=100)
    paymmethod = models.CharField(max_length=100)
    refno = models.CharField(max_length=100)
    totamt = models.CharField(max_length=100)

    category1 = models.CharField(max_length=100)
    descrptin1 = models.CharField(max_length=100)
    catqty1 = models.CharField(max_length=100)
    catprice1 = models.CharField(max_length=100)
    cattotal1 = models.CharField(max_length=100)

    category2 = models.CharField(max_length=100)
    descrptin2 = models.CharField(max_length=100)
    catqty2 = models.CharField(max_length=100)
    catprice2 = models.CharField(max_length=100)
    cattotal2 = models.CharField(max_length=100)

    category3 = models.CharField(max_length=100)
    descrptin3 = models.CharField(max_length=100)
    catqty3 = models.CharField(max_length=100)
    catprice3 = models.CharField(max_length=100)
    cattotal3 = models.CharField(max_length=100)

    category4 = models.CharField(max_length=100)
    descrptin4 = models.CharField(max_length=100)
    catqty4 = models.CharField(max_length=100)
    catprice4 = models.CharField(max_length=100)
    cattotal4 = models.CharField(max_length=100)

    product = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    qty = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    total = models.CharField(max_length=100)
    product2 = models.CharField(max_length=100, default=' ')
    hsn2 = models.CharField(max_length=100, default=' ')
    description2 = models.CharField(max_length=100, default=' ')
    qty2 = models.CharField(max_length=100, default=' ')
    price2 = models.CharField(max_length=100, default=' ')
    total2 = models.CharField(max_length=100, default=' ')
    product3 = models.CharField(max_length=100, default=' ')
    hsn3 = models.CharField(max_length=100, default=' ')
    description3 = models.CharField(max_length=100, default=' ')
    qty3 = models.CharField(max_length=100, default=' ')
    price3 = models.CharField(max_length=100, default=' ')
    total3 = models.CharField(max_length=100, default=' ')
    product4 = models.CharField(max_length=100, default=' ')
    hsn4 = models.CharField(max_length=100, default=' ')
    description4 = models.CharField(max_length=100, default=' ')
    qty4 = models.CharField(max_length=100, default=' ')
    price4 = models.CharField(max_length=100, default=' ')
    total4 = models.CharField(max_length=100, default=' ')

    subtotal = models.CharField(max_length=100, default=' ')
    tax = models.CharField(max_length=100, default=' ')
    tax2 = models.CharField(max_length=100, default=' ')
    tax3 = models.CharField(max_length=100, default=' ')
    tax4 = models.CharField(max_length=100, default=' ')
    taxamount = models.CharField(max_length=100, default=' ')
    grandtotal = models.CharField(max_length=100, default=' ')

    class meta:
        db_table = "expences"






class delayedcharge(models.Model):
    delayedchargeid = models.AutoField(('DELAYEDCHARGEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customer = models.CharField(max_length=100)
    delayedchargedate = models.CharField(max_length=100)
    delayedchargeno = models.CharField(max_length=100)
    prodorser = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    qty = models.CharField(max_length=100)
    rate = models.CharField(max_length=100)
    tax = models.CharField(max_length=100, default='0')
    total = models.CharField(max_length=100)
    subtotal = models.CharField(max_length=100, default='')
    grandtotal = models.CharField(max_length=100, default='')
    prodorser1 = models.CharField(max_length=100, default='')
    description1 = models.CharField(max_length=100, default='')
    qty1 = models.CharField(max_length=100, default='')
    rate1 = models.CharField(max_length=100, default='')
    total1 = models.CharField(max_length=100, default='')
    tax1 = models.CharField(max_length=100, default='0')
    prodorser2 = models.CharField(max_length=100, default='')
    description2 = models.CharField(max_length=100, default='')
    qty2 = models.CharField(max_length=100, default='')
    rate2 = models.CharField(max_length=100, default='')
    total2 = models.CharField(max_length=100, default='')
    tax2 = models.CharField(max_length=100, default='0')
    prodorser3 = models.CharField(max_length=100, default='')
    description3 = models.CharField(max_length=100, default='')
    qty3 = models.CharField(max_length=100, default='')
    rate3 = models.CharField(max_length=100, default='')
    total3 = models.CharField(max_length=100, default='')
    tax3 = models.CharField(max_length=100, default='0')
    taxamount = models.CharField(max_length=100, default='')


class service(models.Model):
    serviceid = models.AutoField(('SERVICEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    img = models.ImageField(upload_to="img/%y")
    name = models.CharField(max_length=100)
    sku = models.CharField(max_length=100)
    sac = models.CharField(max_length=100)
    unit = models.CharField(max_length=100)
    categ = models.CharField(max_length=100)
    descr = models.CharField(max_length=100)
    saleprice = models.CharField(max_length=100)
    income = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    abatement = models.CharField(max_length=100)
    sertype = models.CharField(max_length=100)
    purchasedescr = models.CharField(max_length=100)
    cost = models.CharField(max_length=100)
    expenseaccount = models.CharField(max_length=100)
    purchasetax = models.CharField(max_length=100)
    revcharge = models.CharField(max_length=100)
    presupplier = models.CharField(max_length=100)

    def _str_(self):
        return self.name


class noninventory(models.Model):
    noninventoryid = models.AutoField(('NONINVENTORYID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    image = models.ImageField(upload_to="img/%y")
    name = models.CharField(max_length=100, null=True)
    sku = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    unit = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    descr = models.CharField(max_length=100)
    saleprice = models.CharField(max_length=100)
    income = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    purchasedescr = models.CharField(max_length=100)
    cost = models.CharField(max_length=100)
    expenseaccount = models.CharField(max_length=100)
    purchasetax = models.CharField(max_length=100)
    revcharge = models.CharField(max_length=100)
    presupplier = models.CharField(max_length=100)
    qty = models.CharField(max_length=100, default='0')


def _str_(self):
    return self.name


class bundle(models.Model):
    bundleid = models.AutoField(('BUNDLEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    image = models.ImageField(upload_to="img/%y")
    # image = models.ImageField(upload_to='images/')
    name = models.CharField(max_length=100)
    sku = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    product1 = models.CharField(max_length=100, default="", null=True)
    product2 = models.CharField(max_length=100, default="", null=True)
    product3 = models.CharField(max_length=100, default="", null=True)
    product4 = models.CharField(max_length=100, default="", null=True)
    hsn1 = models.CharField(max_length=100, default="", null=True)
    hsn2 = models.CharField(max_length=100, default="", null=True)
    hsn3 = models.CharField(max_length=100, default="", null=True)
    hsn4 = models.CharField(max_length=100, default="", null=True)
    description1 = models.CharField(max_length=255, default="", null=True)
    description2 = models.CharField(max_length=255, default="", null=True)
    description3 = models.CharField(max_length=255, default="", null=True)
    description4 = models.CharField(max_length=255, default="", null=True)
    qty1 = models.IntegerField(default=0, null=True)
    qty2 = models.IntegerField(default=0, null=True)
    qty3 = models.IntegerField(default=0, null=True)
    qty4 = models.IntegerField(default=0, null=True)
    price1 = models.FloatField(default=0.0, null=True)
    price2 = models.FloatField(default=0.0, null=True)
    price3 = models.FloatField(default=0.0, null=True)
    price4 = models.FloatField(default=0.0, null=True)
    total1 = models.FloatField(default=0.0, null=True)
    total2 = models.FloatField(default=0.0, null=True)
    total3 = models.FloatField(default=0.0, null=True)
    total4 = models.FloatField(default=0.0, null=True)
    tax1 = models.FloatField(default=0.0, null=True)
    tax2 = models.FloatField(default=0.0, null=True)
    tax3 = models.FloatField(default=0.0, null=True)
    tax4 = models.FloatField(default=0.0, null=True)
    grandtotal = models.FloatField(default=0.0, null=True)

    def _str_(self):
        return self.name


class inventory(models.Model):
    inventoryid = models.AutoField(('INVENTORYID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='img/%y', default='/images/default.png')
    name = models.CharField(max_length=100)
    sku = models.CharField(max_length=100)
    hsn = models.CharField(max_length=100)
    unit = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    initialqty = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    stockalrt = models.CharField(max_length=100)
    invacnt = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    salesprice = models.CharField(max_length=10)
    incomeacnt = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    purchaseinfo = models.CharField(max_length=100)
    cost = models.CharField(max_length=100)
    expacnt = models.CharField(max_length=100)
    purtax = models.CharField(max_length=100)
    revcharge = models.CharField(max_length=100)
    presupplier = models.CharField(max_length=100)
    cxq = models.FloatField(default=0.0, null=True)

    def __str__(self):
        return self.name


# extra

class ProductModel(models.Model):
    Pid = models.IntegerField(primary_key=True)
    Pname = models.CharField(max_length=100)

    class Meta:
        db_table = "producttable"

    def __str__(self):
        return self.Pname


class ItemModel(models.Model):
    Itemid = models.IntegerField(primary_key=True)
    Itemname = models.CharField(max_length=100)
    Pid = models.IntegerField()

    class Meta:
        db_table = "itemstable"

    def __str__(self):
        return self.Itemname


class accountype(models.Model):
    accountypeid = models.AutoField(('ACCOUNTYPEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    accountname = models.CharField(max_length=100)
    accountbal = models.CharField(max_length=100, default='')


class bankstatement(models.Model):
    bankstatementid = models.AutoField(('BANKSTATEMENTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    debit = models.FloatField(default=0.0, null=True)
    credit = models.FloatField(default=0.0, null=True)


class accounts(models.Model):
    accountsid = models.AutoField(('ACCOUNTSID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
   
    
    acctype = models.CharField(max_length=100)
   
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    gst = models.CharField(max_length=100, default='', null=True)
    deftaxcode = models.CharField(max_length=100)
    balance = models.FloatField(default=0.0, null=True)
    asof = models.DateField()


class accounts1(models.Model):
    accounts1id = models.AutoField(('ACCOUNTSID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    acctype = models.CharField(max_length=100,null=True)
    detype = models.CharField(max_length=100,null=True)
    name = models.CharField(max_length=100,null=True)
    description = models.CharField(max_length=250,null=True)
    gst = models.CharField(max_length=100, default='', null=True)
    deftaxcode = models.CharField(max_length=100,null=True)
    balance = models.FloatField(default=0.0, null=True)
    dbbalance=models.FloatField(default=0.0, null=True)
    asof = models.DateField(null=True)
    status = models.CharField(max_length=100,default='Active')


class expenseaccount(models.Model):
    expenseid = models.AutoField(('EXPENSEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    expaccountypid = models.ForeignKey(accountype, on_delete=models.CASCADE)
    account = models.CharField(max_length=100)
    begbal = models.CharField(max_length=100, default='0')
    endbal = models.CharField(max_length=100, default='0')
    enddate = models.CharField(default=timezone.now, max_length=100, null=True)
    dat = models.CharField(default=timezone.now, max_length=100, null=True)
    serchar = models.CharField(max_length=100, default='0')
    expacc = models.CharField(max_length=100, null=True)
    type1 = models.CharField(max_length=100, null=True, default='Journal')
    memo1 = models.CharField(max_length=100, null=True, default='Service Charge')


class incomeaccount(models.Model):
    incomeid = models.AutoField(('INCOMEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    expenceincomeid = models.ForeignKey(expenseaccount, on_delete=models.CASCADE)
    dat1 = models.CharField(default=timezone.now, max_length=100, null=True)
    intear = models.CharField(max_length=100, default='0')
    incacc = models.CharField(max_length=100, null=True)
    type2 = models.CharField(max_length=100, null=True, default='Deposit')
    memo2 = models.CharField(max_length=100, null=True, default='Interest Earned')


class employee(models.Model):
    employeeid = models.AutoField(('EMPLOYEEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    joiningdate = models.CharField(max_length=100)
    employeenumber = models.CharField(max_length=100)
    designation = models.CharField(max_length=100)
    department = models.CharField(max_length=100)
    branch = models.CharField(max_length=100)
    location = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    age = models.CharField(max_length=100)
    mobile = models.CharField(max_length=100)
    gmail = models.CharField(max_length=100)
    address = models.CharField(max_length=100)

    providebankdetails = models.CharField(max_length=20)
    bankaccountnumber = models.CharField(max_length=100)
    ifsccode = models.CharField(max_length=100)

    hrareceived = models.CharField(max_length=20)
    totalrentpaid = models.CharField(max_length=100)
    livein = models.CharField(max_length=100)

    applicabletaxregime = models.CharField(max_length=100)
    pannumber = models.CharField(max_length=100)
    aadhaarnumber = models.CharField(max_length=100)
    universalaccountnumber = models.CharField(max_length=100)
    pfaccountnumber = models.CharField(max_length=100)
    epsaccountnumber = models.CharField(max_length=100)
    praccountnumber = models.CharField(max_length=100)
    esinumber = models.CharField(max_length=100)
    esidispensaryname = models.CharField(max_length=100)

    basic = models.CharField(max_length=100, default='')
    da = models.CharField(max_length=100, default='')

    othincome1 = models.CharField(max_length=100, default='')
    othincome2 = models.CharField(max_length=100, default='')
    othincome3 = models.CharField(max_length=100, default='')
    othincome4 = models.CharField(max_length=100, default='')
    othincome5 = models.CharField(max_length=100, default='')

    othamount1 = models.CharField(max_length=100, default='')
    othamount2 = models.CharField(max_length=100, default='')
    othamount3 = models.CharField(max_length=100, default='')
    othamount4 = models.CharField(max_length=100, default='')
    othamount5 = models.CharField(max_length=100, default='')

    provifund = models.CharField(max_length=100, default='')
    proftax = models.CharField(max_length=100, default='')
    esi = models.CharField(max_length=100, default='')
    deduc1 = models.CharField(max_length=100, default='')
    deduc2 = models.CharField(max_length=100, default='')
    deduc3 = models.CharField(max_length=100, default='')
    deduc4 = models.CharField(max_length=100, default='')
    deducamt1 = models.CharField(max_length=100, default='')
    deducamt2 = models.CharField(max_length=100, default='')
    deducamt3 = models.CharField(max_length=100, default='')
    deducamt4 = models.CharField(max_length=100, default='')


class payslip(models.Model):
    payslipid = models.AutoField(('PAYSLIPID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    empname = models.CharField(max_length=100)
    employeenumber = models.CharField(max_length=100)
    desig = models.CharField(max_length=100)
    fper = models.CharField(max_length=100)
    tper = models.CharField(max_length=100)
    paydate = models.CharField(max_length=100)
    basic = models.CharField(max_length=100)
    da = models.CharField(max_length=100)
    ear1 = models.CharField(max_length=100)
    earr1 = models.CharField(max_length=100)
    ear2 = models.CharField(max_length=100)
    earr2 = models.CharField(max_length=100)
    ear3 = models.CharField(max_length=100)
    earr3 = models.CharField(max_length=100)
    ear4 = models.CharField(max_length=100)
    earr4 = models.CharField(max_length=100)
    ear5 = models.CharField(max_length=100)
    earr5 = models.CharField(max_length=100)
    ear6 = models.CharField(max_length=100)
    earr6 = models.CharField(max_length=100)
    ear7 = models.CharField(max_length=100)
    earr7 = models.CharField(max_length=100)

    provi = models.CharField(max_length=100)
    prof = models.CharField(max_length=100)
    esi = models.CharField(max_length=100)

    ded1 = models.CharField(max_length=100)
    dedu1 = models.CharField(max_length=100)
    ded2 = models.CharField(max_length=100)
    dedu2 = models.CharField(max_length=100)
    ded3 = models.CharField(max_length=100)
    dedu3 = models.CharField(max_length=100)
    ded4 = models.CharField(max_length=100)
    dedu4 = models.CharField(max_length=100)
    ded5 = models.CharField(max_length=100)
    dedu5 = models.CharField(max_length=100)
    ded6 = models.CharField(max_length=100)
    dedu6 = models.CharField(max_length=100)

    gros = models.CharField(max_length=100)
    tded = models.CharField(max_length=100)
    netsal = models.CharField(max_length=100)


class recon1(models.Model):
    recon1id = models.AutoField(('RECON1ID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    accounttype = models.CharField(max_length=100)
    beginningbalance = models.CharField(max_length=100)
    endingbalance = models.CharField(max_length=100)
    endingdate = models.CharField(max_length=100)

    edat = models.CharField(default=timezone.now, max_length=100, null=True)
    serchar = models.CharField(max_length=100)
    expacc = models.CharField(max_length=100)
    idat1 = models.CharField(default=timezone.now, max_length=100, null=True)
    intear = models.CharField(max_length=100)
    incacc = models.CharField(max_length=100)


class addtax1(models.Model):
    addtax1id = models.AutoField(('ADDTAX1ID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    taxname = models.CharField(max_length=100)
    description = models.CharField(max_length=100)


class recordpay(models.Model):
    recordpayid = models.AutoField(('RECORDPAYID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    textname = models.CharField(max_length=100)
    paymentdate = models.CharField(max_length=100)
    recordamount = models.CharField(max_length=100)
    recordmemo = models.CharField(max_length=100)


class customize(models.Model):
    customizeid = models.AutoField(("CUSTOMIZEID"), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    name = models.CharField(max_length=255, default='', blank=True)
    template = models.CharField(max_length=255, default='', blank=True)
    pcolour = models.CharField(max_length=255, default='', blank=True)
    scolour = models.CharField(max_length=255, default='', blank=True)
    fonts = models.CharField(max_length=255, default='', blank=True)
    lastedited = models.CharField(default=timezone.now, max_length=255, blank=True)
    selected = models.CharField(max_length=255, default='', blank=True)


# Ananthakrishnan
class estimate(models.Model):
    estimateid = models.AutoField(('ESTIMATEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    customer = models.CharField(max_length=100,null=True)
    email = models.EmailField(max_length=100,null=True)
    billingaddress = models.CharField(max_length=100,null=True)
    estimatedate = models.DateField(null=True)
    expirationdate = models.DateField(null=True)
    estimateno = models.CharField(max_length=100,null=True)
    placeofsupply = models.CharField(max_length=100,null=True)

    
   

    taxamount = models.CharField(max_length=100, default='')
    reference_number = models.CharField(max_length=100, default='')
    note = models.TextField(null=True)
    IGST = models.CharField(max_length=100,null=True)
    CGST  =  models.CharField(max_length=100,null=True)
    SGST =  models.CharField(max_length=100,null=True)
    TCS =  models.CharField(max_length=100,null=True)
    shipping_charge = models.CharField(max_length=100,null=True,default=0)
    subtotal = models.CharField(max_length=100,null=True)
    estimatetotal = models.CharField(max_length=100,null=True)
    file = models.FileField(upload_to='estimate',default="default.jpg")
    file_share = models.FileField(upload_to='estimate', default='')

    estimate_status = (
        ('Draft','Draft'),
        ('Approved','Approved'),
        ('Invoice','Invoice'),

    )
    
    status =models.CharField(max_length=150,choices=estimate_status,default='Draft')



    def __str__(self):
        return self.customer

class estimate_item(models.Model):
    estimate = models.ForeignKey(estimate, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    item = models.CharField(max_length=255,default='')
    hsn =  models.CharField(max_length=255,default='')
    description = models.CharField(max_length=255,default='')
    quantity = models.CharField(max_length=100,null=True,default=0)
    rate = models.CharField(max_length=100,null=True,default=0)
    tax = models.CharField(max_length=100,null=True,default=0)
    discount = models.CharField(max_length=100,null=True,default=0)
    total = models.CharField(max_length=100,null=True,default=0)


class salesorder(models.Model):

    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    
    salename = models.CharField(max_length=100,null=True)
    saleemail = models.EmailField(null=True)
    saleaddress = models.CharField(max_length=150,null=True)
    saledate = models.DateField(null=True)
    shipmentdate =  models.DateField(null=True)
    saleno = models.CharField(max_length=20,null=True)
    placeofsupply = models.CharField(max_length=100,null=True)

    term_days = models.IntegerField(null=True)
    

    reference_number = models.CharField(max_length=100, default='')
    note = models.TextField(null=True)

    subtotal = models.CharField(max_length=100,null=True)
    IGST = models.CharField(max_length=100,null=True)
    CGST  =  models.CharField(max_length=100,null=True)
    SGST =  models.CharField(max_length=100,null=True)
    # TCS =  models.CharField(max_length=100,null=True)
    taxamount = models.CharField(max_length=100,null=True)
    shipping_charge = models.CharField(max_length=100,null=True)
    salestotal = models.CharField(max_length=100,null=True)
    
    file = models.FileField(upload_to='sales',default="default.jpg")

    pay_method=models.CharField(null=True,blank=True,max_length=255)
    cheque_no=models.CharField(null=True,blank=True,max_length=255)
    upi_no=models.CharField(null=True,blank=True,max_length=255)
    paidoff=models.CharField(null=True,blank=True,max_length=255)
    balance=models.CharField(null=True,blank=True,max_length=255)
    adjust = models.CharField(null=True,blank=True,max_length=255)
    salcrd_status = models.IntegerField(default=0)
    inv_status = models.IntegerField(default=0)

    sale_status = (
        ('Draft','Draft'),
        ('Approved','Approved'),
        ('Invoiced','Invoiced'),
    )
    
    status =models.CharField(max_length=150,choices=sale_status,default='Draft')


class sales_item(models.Model):
    salesorder= models.ForeignKey(salesorder,on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,default='')
    product = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    # description = models.CharField(max_length=100, default='')
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100,null=True)
    total = models.IntegerField(default=0, null=True)
    discount = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)


class payment(models.Model):
    paymentid = models.AutoField(('PAYMENTID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    customer = models.CharField(max_length=100,null=True)
    email = models.CharField(max_length=100,null=True)
    paymdate = models.DateField(null=True)
    pmethod = models.CharField(max_length=100,null=True)
    refno = models.CharField(max_length=100,null=True)
    depto = models.CharField(max_length=100,null=True)
    amtreceived = models.FloatField()
    amtapply = models.FloatField(null=True)
    amtcredit = models.FloatField(null=True)
    referno = models.CharField(max_length=255, )
    balance= models.FloatField(default='0')
    
    #added -shemeem
    bankacc = models.CharField(max_length=100, null=True, blank = True)
    cheq_id = models.CharField(max_length=100, null=True, blank = True)
    creditcard = models.CharField(max_length=100, null=True, blank = True)
    upi = models.CharField(max_length=100, null=True, blank = True)
    py_status = (
        ('Draft','Draft'),
        ('Saved','Saved')
    )
    
    status =models.CharField(max_length=150,choices=py_status,default='Draft',null=True)
  
    class meta:
        db_table = "payment"

class paymentitems(models.Model):
    payment = models.ForeignKey(payment,on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    # inv = models.ForeignKey(invoice, on_delete=models.CASCADE,null=True)
    invdate = models.CharField(max_length=100, default='')
    invtype = models.CharField(max_length=100, null=True, blank = True) #added shemeem
    invid = models.BigIntegerField(null=True, blank = True) #added shemeem
    invno = models.CharField(max_length=100, default='')
    duedate = models.CharField(max_length=100, default='')
    invamount = models.CharField(max_length=100, default='')
    balamount = models.FloatField(null=True)
    paymentamount = models.CharField(max_length=100, default='0')
    

class cust_statment(models.Model):
    customer = models.CharField(max_length=255, default='')
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    inv = models.ForeignKey(invoice,on_delete=models.CASCADE,null=True)
    pay=models.ForeignKey(payment,on_delete=models.CASCADE,null=True)
    Date = models.DateField(null=True)
    Transactions = models.CharField(max_length=255,blank=True,null=True)
    Details	= models.CharField(max_length=255,blank=True,null=True)
    Details2= models.CharField(max_length=255,blank=True,null=True)
    Amount	= models.FloatField(blank=True,null=True)
    Payments=models.FloatField(blank=True,null=True)	
    Balance=models.FloatField(blank=True,null=True)



# Rahanas -------------

class itemtable(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=100,null=True)
    item_type = models.CharField(max_length=100,null=True)
    unit = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    tax_reference = models.CharField(max_length=100,null=True)
    purchase_cost = models.IntegerField(default='0',null=True,blank=True)
    sales_cost = models.CharField(max_length=100,null=True)
    itmdate = models.DateField(null=True)
    acount_pur = models.CharField(max_length=100,null=True)
    account_sal = models.CharField(max_length=100,null=True)
    pur_desc = models.CharField(max_length=100,null=True)
    sale_desc = models.CharField(max_length=100,null=True)
    intra_st = models.CharField(max_length=100,null=True)
    inter_st = models.CharField(max_length=100,null=True)
    inventry = models.CharField(max_length=100, default='',null=True,blank=True)
    stock = models.IntegerField(blank=True,null=True,default='')
    stockin = models.IntegerField(default='0',blank=True,null=True)
    stockout = models.IntegerField(default='0',blank=True,null=True)
    amount = models.IntegerField(default='0',blank=True,null=True)
    stock_rate= models.FloatField(default='0.0',blank=True,null=True)#reshna added
    status = models.CharField(max_length=100,null=True)
    min_stock=models.CharField(max_length=100,null=True,default='0')

class unittable(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    unit_symbol = models.CharField(max_length=100,null=True)
    name = models.CharField(max_length=100,null=True)

class mjournal(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    date = models.CharField(max_length=100, default='')
    mj_no = models.CharField(max_length=100, default='')
    ref_no = models.CharField(max_length=100, default='')
    notes = models.CharField(max_length=100, default='')
    j_type = models.CharField(max_length=100,null=True,blank=True)
    currency = models.CharField(max_length=100, default='')
    attach = models.FileField(upload_to="", default='') 
    s_totaldeb = models.CharField(max_length=100, default='')
    s_totalcre = models.CharField(max_length=100, default='')
    total_deb = models.CharField(max_length=100, default='')
    total_cre = models.CharField(max_length=100, default='')
    difference = models.CharField(max_length=100, default='')
    comments = models.CharField(max_length=100,null=True,default='')
    status = models.CharField(max_length=100,default="Draft")

class mjournal1(models.Model):
    mjrnl = models.ForeignKey(mjournal, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    account = models.CharField(max_length=100, default='',null=True,blank=True)
    desc = models.TextField(null=True)
    contact = models.CharField(max_length=100,null=True)
    debit = models.FloatField(default='0.0',blank=True,null=True)
    credit = models.FloatField(default='0.0',blank=True,null=True)


class currencies(models.Model):
    currencyid = models.AutoField(("CURRENCYID"), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    code = models.CharField(max_length=255, default='', blank=True)
    name = models.CharField(max_length=255, default='', blank=True)
    symbol = models.CharField(max_length=255, default='', blank=True)
    decimal_places = models.CharField(max_length=255, default='', blank=True)
    format = models.CharField(max_length=255, default='', blank=True)


class stockreason(models.Model):
    reasonid = models.AutoField(("REASONID"), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    reason = models.CharField(max_length=255, default='', blank=True)


class stockadjust(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    mode = models.CharField(max_length=100, default='')
    ref_no = models.CharField(max_length=100, default='')
    date = models.CharField(max_length=100, default='')
    account = models.CharField(max_length=100,null=True,blank=True)
    reason = models.CharField(max_length=100, default='')
    description = models.CharField(max_length=100, default='',null=True,blank=True)
    attach = models.FileField(upload_to="", default='') 
    status = models.CharField(max_length=100, default='Draft') 


    item1 = models.CharField(max_length=100,null=True)
    qty1 = models.CharField(max_length=100,null=True)
    qty_hand1 = models.CharField(max_length=100, default='')
    new_qty1 = models.CharField(max_length=100, default='')

    item2 = models.CharField(max_length=100,null=True)
    qty2 = models.CharField(max_length=100,null=True)
    qty_hand2 = models.CharField(max_length=100, default='')
    new_qty2 = models.CharField(max_length=100, default='')

    item3 = models.CharField(max_length=100,null=True)
    qty3 = models.CharField(max_length=100,null=True)
    qty_hand3 = models.CharField(max_length=100, default='')
    new_qty3 = models.CharField(max_length=100, default='')
    
    item4 = models.CharField(max_length=100,null=True)
    qty4 = models.CharField(max_length=100,null=True)
    qty_hand4 = models.CharField(max_length=100, default='')
    new_qty4 = models.CharField(max_length=100, default='')

    item5 = models.CharField(max_length=100,null=True)
    qty5 = models.CharField(max_length=100,null=True)
    qty_hand5 = models.CharField(max_length=100, default='')
    new_qty5 = models.CharField(max_length=100, default='')
    
    comment = models.CharField(max_length=500,default='')



class etransporter(models.Model):
    etransporterid = models.AutoField(("ETRANSPORTERID"), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=255, default='', blank=True)   
    tid = models.CharField(max_length=255, default='', blank=True) 


class ewayinv(models.Model):
    ewayinvid = models.AutoField(("EWAYINV"), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    transaction_stype = models.CharField(max_length=255, default='', blank=True)   
    transporter = models.CharField(max_length=255, default='', blank=True)     
    distance = models.CharField(max_length=255, default='', blank=True)   
    transport_mode = models.CharField(max_length=255, default='', blank=True)  
    vehicle_type = models.CharField(max_length=255, default='', blank=True)   
    vehicle_no = models.CharField(max_length=255, default='', blank=True)  
    transport_doc_no = models.CharField(max_length=255, default='', blank=True)   
    transport_doc_date = models.CharField(max_length=255, default='', blank=True)  
        




#Jisha

class vendor(models.Model):
    vendorid = models.AutoField(('VENID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=10,null=True)
    firstname = models.CharField(max_length=100,null=True)
    lastname = models.CharField(max_length=100,null=True)
    companyname = models.CharField(max_length=100,null=True)
    email = models.CharField(max_length=100,null=True)
    website = models.CharField(max_length=100, default='')
    mobile = models.CharField(max_length=10,null=True)
    gsttype = models.CharField(max_length=100, null=True)
    gstin = models.CharField(max_length=100, default='')
    panno = models.CharField(max_length=100, null=True)
    creditlimit = models.CharField(max_length=100, null=True)
    sourceofsupply = models.CharField(max_length=100, null=True)
    currency = models.CharField(max_length=100, null=True)
    openingbalance = models.CharField(max_length=100, null=True)
    opblnc_due = models.FloatField(max_length=100, null=True)
    date = models.DateField(null=True,blank= True)
    paymentterms = models.CharField(max_length=100, null=True)
    street = models.CharField(max_length=100,null=True)
    city = models.CharField(max_length=100,null=True)
    state = models.CharField(max_length=100,null=True)
    pincode = models.CharField(max_length=100,null=True)
    country = models.CharField(max_length=100,null=True)
    shipstreet = models.CharField(max_length=100, null=True)
    shipcity = models.CharField(max_length=100, null=True)
    shipstate = models.CharField(max_length=100, null=True)
    shippincode = models.CharField(max_length=100, null=True)
    shipcountry = models.CharField(max_length=100, null=True)
    opening_balance_type = models.CharField(max_length=10,null=True,blank=True)
    attachment = models.ImageField(upload_to="vendor-files/", null=True)
    is_active =models.BooleanField(default=True)



class purchaseorder(models.Model):
    porderid = models.AutoField(('pid'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    vendor_name = models.CharField(max_length=100,null=True)
    vendor_mail=models.CharField(max_length=100,null=True)
    billing_address = models.TextField(null=True)
    vendor_balance = models.CharField(max_length=100, null=True)
    vendor_gsttype = models.CharField(max_length=100, null=True)
    vendor_gstin = models.CharField(max_length=100, default='')
    puchaseorder_no = models.IntegerField(default=1000)
    sourceofsupply = models.CharField(max_length=100, null=True)
    destiofsupply = models.CharField(max_length=100, null=True)
    branch = models.CharField(max_length=100, null=True)
    reference = models.CharField(max_length=100, null=True)
    contact_name = models.CharField(max_length=255, null=True)
    deliverto = models.TextField(null=True)
    customer_gsttype = models.CharField(max_length=100, null=True)
    customer_gstin = models.CharField(max_length=100, default='')
    date = models.DateField(null=True)
    deliver_date = models.DateField(null=True)
    credit_period = models.CharField(max_length=100, null=True)
    due_date = models.CharField(max_length=100, null=True)
    sub_total = models.CharField(max_length=100,null=True)
    sgst = models.CharField(max_length=100,null=True)
    cgst = models.CharField(max_length=100,null=True)
    igst = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,default=0)
    tcs = models.CharField(max_length=100,null=True)
    tcs_amount = models.CharField(max_length=100,null=True)
    round_off = models.CharField(max_length=100,null=True)
    tax_amount = models.CharField(max_length=100,null=True)
    balance_due = models.CharField(max_length=100,null=True)
    grand_total = models.CharField(max_length=100,null=True)
    note = models.CharField(max_length=255,null=True)
    file = models.FileField(upload_to='purchase/purchaseorder',default="default.png")
    total_discount = models.CharField(max_length=100,null=True)
    ship_charge = models.CharField(max_length=100,null=True)
    paid_amount = models.FloatField(blank=True,null=True)
    balance_amount = models.FloatField(blank=True,null=True)
    payment_type = models.CharField(max_length=100,null=True)
    cheque_number = models.CharField(max_length=100, null=True, blank=True)
    upi_number = models.CharField(max_length=100, null=True, blank=True)
    account_number = models.CharField(max_length=100, null=True, blank=True) 
    is_from_purchase_order = models.BooleanField(default=False)

    porder_status = (
        ('Draft','Draft'),
        ('Approved','Approved'),
        ('Save','Save'),
        ('Billed','Billed'),
    )
    
    status =models.CharField(max_length=150,choices=porder_status,default='Draft')

class purchaseorder_item(models.Model):
    porder = models.ForeignKey(purchaseorder, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    items = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    quantity = models.CharField(max_length=100,null=True)
    rate = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    amount = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,null=True)

class purchasebill(models.Model):
    billid = models.AutoField(('bid'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    vendor_name = models.CharField(max_length=100,null=True)
    vendor_mail=models.CharField(max_length=100,null=True)
    billing_address = models.TextField(null=True)
    vendor_balance = models.CharField(max_length=100, null=True)
    vendor_gsttype = models.CharField(max_length=100, null=True)
    vendor_gstin = models.CharField(max_length=100, default='')
    customer_gsttype = models.CharField(max_length=100, null=True)
    customer_gstin = models.CharField(max_length=100, default='')
    bill_no = models.IntegerField(default=1000)
    sourceofsupply = models.CharField(max_length=100, null=True)
    destiofsupply = models.CharField(max_length=100, null=True)
    branch = models.CharField(max_length=100, null=True)
    reference = models.IntegerField(default=0)
    contact_name = models.CharField(max_length=255, null=True)
    deliverto = models.TextField(null=True)
    date = models.DateField(null=True)
    deliver_date = models.DateField(null=True)
    credit_period = models.CharField(max_length=100, null=True)
    due_date = models.CharField(max_length=100, null=True)
    sub_total = models.CharField(max_length=100,null=True)
    sgst = models.CharField(max_length=100,null=True)
    cgst = models.CharField(max_length=100,null=True)
    igst = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,default=0)
    tcs = models.CharField(max_length=100,null=True)
    tcs_amount = models.FloatField(blank=True,null=True)
    round_off = models.CharField(max_length=100,null=True)
    tax_amount = models.CharField(max_length=100,null=True)
    grand_total = models.FloatField(blank=True,null=True)
    balance_due = models.CharField(max_length=100,null=True)
    amtrecvd = models.CharField(max_length=100,null=True)
    note = models.CharField(max_length=255,null=True)
    file = models.FileField(upload_to='purchase/bill',default="default.png")
    total_discount = models.CharField(max_length=100,null=True)
    ship_charge = models.CharField(max_length=100,null=True)
    paid_amount = models.FloatField(blank=True,null=True)
    balance_amount = models.FloatField(blank=True,null=True)
    payment_type = models.CharField(max_length=100,null=True)
    purchase_order = models.ForeignKey('purchaseorder', on_delete=models.CASCADE, null=True, blank=True)
    cheque_number = models.CharField(max_length=100, null=True, blank=True)
    upi_number = models.CharField(max_length=100, null=True, blank=True)
    account_number = models.CharField(max_length=100, null=True, blank=True) 
    purchase_order_number = models.CharField(max_length=100, null=True, blank=True)
    is_from_purchase_order = models.BooleanField(default=False)
    bill_status = (
        ('Draft','Draft'),
        ('Billed','Billed'),
        ('Save','Save'),
    )
    status =models.CharField(max_length=150,choices=bill_status,default='Draft')

class purchasebill_item(models.Model):
    bill = models.ForeignKey(purchasebill, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    items = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    quantity = models.IntegerField(null=True)
    rate = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    amount = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,null=True)

class purchase_expense(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    expenseid = models.AutoField(('eid'), primary_key=True)
    expense_no = models.IntegerField(default=1000)
    date = models.DateField(null=True)
    expenseaccount = models.CharField(max_length=100,null=True)
    expensetype = models.CharField(max_length=100,null=True)
    hsn_sac = models.CharField(max_length=100,null=True)
    amount = models.IntegerField(null=True)
    paidthrough = models.CharField(max_length=100,null=True)
    vendor = models.CharField(max_length=100,null=True)
    # gsttype = models.CharField(max_length=100,null=True)
    sourceofsupply = models.CharField(max_length=100,null=True)
    # destinofsupply = models.CharField(max_length=100,null=True)
    customer = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    reference = models.CharField(max_length=100,null=True)
    note = models.CharField(max_length=255,null=True)
    file = models.FileField(upload_to='purchase/expense',default="default.png")

class creditperiod(models.Model):
    newperiod = models.IntegerField(null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)

class purchasepayment(models.Model):
    pymntid = models.AutoField(('pyid'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    reference = models.CharField(max_length=100,null=True)  
    vendor = models.CharField(max_length=100)
    paymentdate = models.DateField(null=True)
    paymentmethod = models.CharField(max_length=100,null=True)
    depositeto = models.CharField(max_length=100)
    amtreceived = models.FloatField(max_length=100,null=True)
    paymentamount = models.FloatField(max_length=100,null=True)
    amtcredit = models.FloatField(max_length=100, default='0')
    bank_names = models.CharField(max_length=100,null=True)
    paid_through = models.CharField(max_length=100,null=True)
    account_number = models.CharField(max_length=100,null=True)
    cheque_number = models.CharField(max_length=100,null=True)
    upi_id = models.CharField(max_length=100,null=True)
    cash = models.CharField(max_length=100,null=True)
    email = models.CharField(max_length=100,null=True)
    gst_treatment = models.CharField(max_length=100,null=True)
    gst_number = models.CharField(max_length=100,null=True)
    status = models.CharField(max_length=100,default="Draft")
    

class purchasepayment1(models.Model):
    pymnt = models.ForeignKey(purchasepayment, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    billdate = models.DateField(null=True)
    billno = models.CharField(max_length=100,null=True)
    billamount = models.CharField(max_length=100,null=True)
    duedate = models.CharField(max_length=100,null=True)
    amountdue = models.FloatField(null=True)
    payments = models.CharField(max_length=100,default='0') # Payment field
    payment_id = models.IntegerField(null=True)
    payment_type = models.CharField(max_length=100,null=True)
   
class DeletedPaymentMade(models.Model):
    cid = models.ForeignKey(company,on_delete=models.CASCADE,null=True)
    reference = models.CharField(max_length=50)
 
class paymentmethod(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    newmethod = models.CharField(max_length=100,null=True) 

class purchasedebit(models.Model):
    pdebitid = models.AutoField(('pdid'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    debit_no = models.CharField(max_length=100,null=True, default='')
    vendor = models.CharField(max_length=100,null=True)
    address = models.TextField(null=True)
    debitdate = models.DateField(null=True)
    email = models.CharField(max_length=100,null=True)
    supply = models.CharField(max_length=150,null=True)
    billno = models.CharField(max_length=100,null=True)
    subtotal = models.CharField(max_length=100,null=True)
    sgst = models.CharField(max_length=100,null=True)
    cgst = models.CharField(max_length=100,null=True)
    igst = models.CharField(max_length=100,null=True)
    taxamount = models.CharField(max_length=100,null=True)
    grandtotal = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,default=0)
    tcs = models.CharField(max_length=100,null=True)
    tcs_amount = models.FloatField(blank=True,null=True)
    round_off = models.CharField(max_length=100,null=True)
    balance_due = models.CharField(max_length=100,null=True)
    amtrecvd = models.CharField(max_length=100,null=True)
    total_discount = models.CharField(max_length=100,null=True)
    ship_charge = models.CharField(max_length=100,null=True)
    adjustment = models.FloatField(default=0,null=True,blank=True)
    paid_amount = models.FloatField(blank=True,null=True)
    balance_amount = models.FloatField(blank=True,null=True)
    payment_type = models.CharField(max_length=100,null=True)
    cheque_no=models.CharField(null=True,blank=True,max_length=255,default='')
    upi_no=models.CharField(null=True,blank=True,max_length=255,default='')
    
    file = models.FileField(upload_to='sales',default="default.jpg")
    debit_status = (
        ('Draft','Draft'),
        ('Save','Save'),
    )
    gstnumber=models.CharField(max_length=150 ,default='NULL')
    gsttype=models.CharField(max_length=150 ,default='NULL')
    status =models.CharField(max_length=150,choices=debit_status ,default='Draft')

class purchasedebit1(models.Model):
    pdebit = models.ForeignKey(purchasedebit, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    items = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    quantity = models.IntegerField(null=True)
    price = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    total = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,null=True)

class itemstock(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    debit = models.ForeignKey(purchasedebit, on_delete=models.CASCADE,null=True)
    inv = models.ForeignKey(invoice, on_delete=models.CASCADE,null=True)
    bill = models.ForeignKey(purchasebill, on_delete=models.CASCADE,null=True)
    stock = models.ForeignKey(stockadjust, on_delete=models.CASCADE,null=True)
    items = models.CharField(max_length=100,null=True)
    date = models.DateField(null=True)
    qty = models.IntegerField(null=True)
    amount = models.IntegerField(null=True)
    transactions = models.CharField(max_length=100,null=True)
    details = models.CharField(max_length=100,null=True)
    details1 = models.CharField(max_length=100,blank=True,default='')
    stocks = models.CharField(max_length=100,blank=True)

class vendor_statment(models.Model):
    vendor = models.CharField(max_length=255, default='')
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    pbill = models.ForeignKey(purchasebill,on_delete=models.CASCADE,blank=True,null=True)
    paymnt=models.ForeignKey(purchasepayment,on_delete=models.CASCADE,blank=True,null=True)
    date = models.DateField(blank=True,null=True)
    transactions = models.CharField(max_length=255,blank=True,null=True)
    details	= models.CharField(max_length=255,blank=True,null=True)
    details2= models.CharField(max_length=255,blank=True,null=True)
    amount	= models.FloatField(blank=True,null=True)
    balance	= models.FloatField(blank=True,null=True)
    payments=models.FloatField(blank=True,null=True)	

class profit_loss(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    pbill = models.ForeignKey(purchasebill,on_delete=models.CASCADE,blank=True,null=True)
    inv = models.ForeignKey(invoice,on_delete=models.CASCADE,blank=True,null=True)
    expnc = models.ForeignKey(purchase_expense,on_delete=models.CASCADE,blank=True,null=True)
    pdebit = models.ForeignKey(purchasedebit,on_delete=models.CASCADE,blank=True,null=True)
    details = models.CharField(max_length=255, null=True)
    transactions = models.CharField(max_length=255, null=True)
    acctype = models.CharField(max_length=100, null=True)
    accname = models.CharField(max_length=255, null=True)
    date = models.DateField(blank=True,null=True)
    details0 = models.CharField(max_length=255, null=True)
    details1 = models.CharField(max_length=255,blank=True,null=True)
    details2= models.CharField(max_length=255,blank=True,default='')
    payments=models.FloatField(blank=True,null=True)	
    payments1=models.FloatField(blank=True,null=True)	

class balance_sheet(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    bill = models.ForeignKey(purchasebill,on_delete=models.CASCADE,blank=True,null=True)
    invc = models.ForeignKey(invoice,on_delete=models.CASCADE,blank=True,null=True)
    expnc = models.ForeignKey(purchase_expense,on_delete=models.CASCADE,blank=True,null=True)
    debit = models.ForeignKey(purchasedebit,on_delete=models.CASCADE,blank=True,null=True)
    bill_pymnt = models.ForeignKey(purchasepayment,on_delete=models.CASCADE,blank=True,null=True)
    inv_pymnt = models.ForeignKey(payment,on_delete=models.CASCADE,blank=True,null=True)
    details = models.CharField(max_length=100, null=True)
    acctype = models.CharField(max_length=100, null=True)
    account = models.CharField(max_length=100, null=True)
    transactions = models.CharField(max_length=255, null=True)
    date = models.DateField(blank=True,null=True)
    details1 = models.CharField(max_length=255,blank=True,null=True)
    details2= models.CharField(max_length=255,blank=True,default='')
    amount=models.FloatField(blank=True,null=True)	
    payments=models.FloatField(blank=True,null=True)
    payments1=models.FloatField(blank=True,null=True)			

class item_stock(models.Model):
    item = models.CharField(max_length=255, default='')
    qtyin = models.IntegerField(blank=True,null=True)
    qtyout = models.IntegerField(blank=True,null=True)
    qty = models.IntegerField(blank=True,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    bitm = models.ForeignKey(purchasebill,on_delete=models.CASCADE,blank=True,null=True)
    ditm = models.ForeignKey(purchasedebit1,on_delete=models.CASCADE,blank=True,null=True)
    itm = models.ForeignKey(itemtable,on_delete=models.CASCADE,blank=True,null=True)
    initm = models.ForeignKey(invoice_item,on_delete=models.CASCADE,blank=True,null=True)


class banking_payment(models.Model):
    bnkpymid = models.AutoField(('BNK_PYM_ID'), primary_key=True)
    accounts1id = models.ForeignKey(accounts1,blank=True,null=True, on_delete=models.CASCADE)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customer=models.CharField(max_length=100,null=True)
    vendor=models.CharField(max_length=100,null=True)
    amount_received=models.CharField(max_length=100)
    date=models.DateField(null=True)
    received_through=models.CharField(max_length=100)
    paym_ref_no=models.CharField(max_length=100)
    bnk_ref_no=models.CharField(max_length=100)
    file = models.FileField(upload_to='Customer',default="default.jpg")
    des= models.CharField(max_length=100, null=True)
    running_bal=models.CharField(max_length=100)
    paid_through=models.CharField(max_length=100)
    ref_no=models.CharField(max_length=100,null=True)
    account=models.CharField(max_length=100,null=True)
    expenseaccount = models.CharField(max_length=100,null=True)
    reference = models.CharField(max_length=100,null=True)
    pym_type = models.CharField(max_length=100,null=True)
    status=models.CharField(max_length=100,null=True)

class salescreditnote(models.Model):
    screditid = models.AutoField(('pdid'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    credit_no = models.TextField(max_length=100,null=True,blank=True)
    customer = models.CharField(max_length=100,null=True)
    address = models.TextField(null=True)
    creditdate = models.DateField(null=True)
    reference_number=models.TextField(max_length=100,null=True,blank=True)
    email = models.CharField(max_length=100,null=True)
    supply = models.CharField(max_length=150,null=True)
    billno = models.CharField(max_length=100,null=True)
    subtotal = models.CharField(max_length=100,null=True)
    cgst=models.TextField(max_length=100,null=True,blank=True)
    sgst=models.TextField(max_length=100,null=True,blank=True)
    igst=models.TextField(max_length=100,null=True,blank=True)
    shipping_charge = models.CharField(max_length=100,null=True,blank=True)
    adjustment = models.CharField(max_length=100,null=True,blank=True)
    taxamount = models.CharField(max_length=100,null=True)
    grandtotal = models.CharField(max_length=100,null=True)
    description = models.CharField(max_length=255,null=True)
    status=models.CharField(max_length=100,null=True,blank=True)
    file=models.FileField(upload_to='crdit_note/',default="default.png",null=True,blank=True)
    balance=models.TextField(max_length=100,null=True,blank=True)
    payment_method=models.TextField(max_length=100,null=True,blank=True)
    cheque_no=models.TextField(max_length=100,null=True,blank=True)
    acc_no=models.TextField(max_length=100,null=True,blank=True)
    upi_id=models.TextField(max_length=100,null=True,blank=True)
    bank_id=models.TextField(max_length=100,null=True,blank=True)

class salescreditnote1(models.Model):
    scredit = models.ForeignKey(salescreditnote, on_delete=models.CASCADE,null=True)
    items = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    quantity = models.IntegerField(null=True)
    price = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    discount = models.CharField(max_length=100,null=True)
    total = models.CharField(max_length=100,null=True)
    billno=models.CharField(max_length=100,null=True)
    rem_qty=models.CharField(max_length=100,null=True)
    stock=models.CharField(max_length=100,null=True)



#7-1-23 Shebin Shaji ,This table for password rest
class Otp_password(models.Model):
    user_ckeck = models.ForeignKey(User,blank=True,null=True, on_delete=models.CASCADE)
    otp_psw=models.IntegerField()
    
#-------------sumayya-retainer invoices----------------------------------------------------------------------------------------------------------

class RetainerInvoices(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    customer = models.CharField(max_length=100,null=True)
    email = models.EmailField(max_length=100,null=True)
    billing_address = models.CharField(max_length=100,null=True)
    invoice_date = models.DateField(null=True)
    expiry_date = models.DateField(null=True)
    invoice_number = models.CharField(max_length=100,null=True)
    reference_number = models.IntegerField(null=True)
    place_of_supply = models.CharField(max_length=100,null=True)
    total_amount = models.FloatField(max_length=100,null=True)
    balance = models.FloatField(null = True, blank = True) #added shemeem - for payment received module work
    customer_notes = models.CharField(max_length=100,null=True)
    terms_conditions = models.CharField(max_length=100,null=True)
    comments = models.CharField(max_length=100,null=True)
    attachment = models.ImageField(upload_to="retainer_invoices/", null=True)
    status = models.CharField(max_length=100,null=True)

class RetainerInvoiceItems(models.Model):
    retainer_invoice = models.ForeignKey(RetainerInvoices, on_delete=models.CASCADE,null=True)
    description = models.CharField(max_length=200,null=True)
    amount = models.FloatField(max_length=100,null=True)
    
    
class recurring_expense(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    recur_expenseid = models.AutoField(('eid'), primary_key=True,blank=True)
    profile_name = models.CharField(max_length=100,null=True,blank=True)
    repeat_every = models.CharField(max_length=100,null=True,blank=True)
    start_date = models.DateField(null=True)
    end_date = models.DateField(null=True,blank=True)
    expenseaccount = models.CharField(max_length=100,null=True,blank=True)
    expensetype = models.CharField(max_length=100,null=True,blank=True)
    hsn = models.CharField(max_length=100,null=True,blank=True)
    amount = models.IntegerField(null=True,blank=True)
    paidthrough = models.CharField(max_length=100,null=True,blank=True)
    vendor = models.CharField(max_length=100,null=True,blank=True)
    gst_treat = models.CharField(max_length=100,null=True,blank=True)
    gstin = models.CharField(max_length=100,null=True,blank=True)
    destinofsupply = models.CharField(max_length=100,null=True,blank=True)
    customer = models.CharField(max_length=100,null=True,blank=True)
    rev_charge = models.CharField(max_length=50,null=True,blank=True)
    tax = models.CharField(max_length=100,null=True,blank=True)
    note = models.CharField(max_length=255,null=True,blank=True)
    file = models.FileField(upload_to='purchase/recurring_expense',default="default.png")
    
    
#deliver challan models.py by muhammed ashiq


class challan(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customer = models.ForeignKey(customer, on_delete=models.CASCADE)
    chal_no=models.CharField(max_length=100)
    challan_date=models.DateField()
    challan_type=models.CharField(max_length=100)
    billto=models.TextField(max_length=100)
    taxamount=models.FloatField(default=0)
    igst=models.FloatField(default=0.00)
    cgst=models.FloatField(default=0.00)
    sgst=models.FloatField(default=0.00)
    subtotal=models.FloatField()
    grand=models.FloatField()
    pl=models.CharField(max_length=100)
    note=models.TextField(max_length=100)
    file = models.FileField(upload_to='challan/',default="default.png")
    
    invoice_status = (
        ('Draft','Draft'),
        ('Saved','Saved'), #changed - Shemeem
        ('Invoiced','Invoiced'),

    )
    
    status =models.CharField(max_length=150,choices=invoice_status, default='Draft')
    is_converted = models.BooleanField(default=False, null=True)
    ref=models.TextField(max_length=100)
    shipping=models.IntegerField()
    adjustment=models.FloatField(default=0)
    converted_inv = models.CharField(max_length = 1000,null = True)
    converted_rec = models.CharField(max_length = 1000,null = True)
    


class challanitem(models.Model):
    product=models.TextField(max_length=255)
    quantity=models.IntegerField()
    hsn=models.TextField(max_length=255)
    tax=models.IntegerField(default=0)
    total=models.FloatField()
    desc=models.TextField(max_length=255)
    rate=models.FloatField()
    dl=models.ForeignKey(challan,on_delete=models.CASCADE)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    item = models.ForeignKey(itemtable,on_delete= models.CASCADE,null=True)
    discount=models.FloatField(default=0)
    
    
# Models for price list

class Pricelist(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True,blank=True)
    name=models.CharField(max_length=255,null=True,blank=True)

    TYPE_CHOICES=(
        ('Sales','Sales'),
        ('Purchase','Purchase'),
    )
    types=models.CharField(max_length=10,choices=TYPE_CHOICES,default='Sales')

    ITEM_RATE_CHOICES=(
        ('percentage','Markup or Markdown the item rates by a percentage'),
        ('individual_rate','Enter the rate individually for each item'),
    )
    item_rate=models.CharField(max_length=100,choices=ITEM_RATE_CHOICES,default='percentage')

    description=models.TextField(blank=True, null=True)
    currency=models.CharField(max_length=255,default='Indian Rupee')
    upordown=models.CharField(max_length=100,default='None')
    percentage=models.CharField(max_length=100,null=True,blank=True)
    roundoffto=models.CharField(max_length=100,default='None')
    is_active=models.BooleanField(default=True,null=True,blank=True)
    

class pricelist_individual(models.Model):
    pricelist1=models.ForeignKey(Pricelist,on_delete=models.CASCADE,null=True,blank=True)
    itemname=models.CharField(max_length=100,null=True,blank=True)
    itemrate=models.IntegerField(null=True,blank=True,default=0)
    customrate=models.CharField(max_length=100,null=True,blank=True,default=0)

class BankAccountHolder(models.Model):
    name = models.CharField(max_length=100)
    alias = models.CharField(max_length=100)
    phone_number = models.CharField(max_length=20)
    email = models.EmailField()
    ACCOUNT_TYPE_CHOICES = [
        ('CC', 'Credit Card'),
        ('BA', 'Bank Account'),
    ]
    account_type = models.CharField(
        max_length=2,
        choices=ACCOUNT_TYPE_CHOICES,
        default='BA',
    )
    
    def __str__(self):
        return self.name
    
    

class BankAccount(models.Model):
    
    holder = models.ForeignKey(BankAccountHolder, on_delete=models.CASCADE)
    
    def __str__(self):
        return f"{self.holder_name} - {self.bank_name}"
    holder_name = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    account_number = models.CharField(max_length=15)
    ifsc_code = models.CharField(max_length=11)
    swift_code = models.CharField(max_length=11)
    BANK_NAME_CHOICES = [
        ('SBI', 'State Bank of India'),
        ('BOB', 'Bank of Baroda'),
        ('BOI', 'Bank of India'),
        ('BOM', 'Bank of Maharashtra'),
        ('CAN', 'Canara Bank'),
        ('CBI', 'Central Bank of India'),
        ('IND', 'Indian Bank'),
        ('IOB', 'Indian Overseas Bank'),
        ('PSB', 'Punjab & Sind Bank'),
        ('PNB', 'Punjab National Bank'),
        ('UCO', 'UCO Bank'),
        ('UBI', 'Union Bank of India'),
        ('AXIS', 'Axis Bank Ltd.'),
        ('BANDHAN', 'Bandhan Bank Ltd.'),
        ('CSB', 'CSB Bank Limited'),
        ('CUB', 'City Union Bank Ltd.'),
        ('DCB', 'DCB Bank Ltd.'),
        ('DHANLAXMI', 'Dhanlaxmi Bank Ltd.'),
        ('FEDERAL', 'Federal Bank Ltd.'),
        ('HDFC', 'HDFC Bank Ltd.'),
        ('ICICI', 'ICICI Bank Ltd.'),
        # add more banks here
    ]
    bank_name = models.CharField(
        max_length=10,
        choices=BANK_NAME_CHOICES,
    )
    branch_name = models.CharField(max_length=100)
    def __str__(self):
        return self.holder_name
    
    
class BankConfiguration(models.Model):
    
    holder = models.ForeignKey(BankAccountHolder, related_name='bank_configurations',  on_delete=models.CASCADE)
    set_cheque_book_range = models.BooleanField(default=False)
    enable_cheque_printing = models.BooleanField(default=False)
    set_cheque_printing_configuration = models.BooleanField(default=False)
    
    
class MailingAddress(models.Model):
    holder = models.ForeignKey(BankAccountHolder, on_delete=models.CASCADE)
    mailing_name = models.CharField(max_length=100)
    address = models.TextField()
    country = CountryField()
    STATE_CHOICES = [
    ('AN', 'Andaman and Nicobar Islands'),
    ('AP', 'Andhra Pradesh'),
    ('AR', 'Arunachal Pradesh'),
    ('AS', 'Assam'),
    ('BR', 'Bihar'),
    ('CH', 'Chhattisgarh'),
    ('DL', 'National Capital Territory of Delhi'),
    ('GA', 'Goa'),
    ('GJ', 'Gujarat'),
    ('HR', 'Haryana'),
    ('HP', 'Himachal Pradesh'),
    ('JK', 'Jammu and Kashmir'),
    ('LA', 'Ladakh'),
    ('JH', 'Jharkhand'),
    ('KA', 'Karnataka'),
    ('KL', 'Kerala'),
    ('MP', 'Madhya Pradesh'),
    ('MH', 'Maharashtra'),
    ('MN', 'Manipur'),
    ('ML', 'Meghalaya'),
    ('MZ', 'Mizoram'),
    ('NL', 'Nagaland'),
    ('OR', 'Odisha'),
    ('PB', 'Punjab'),
    ('RJ', 'Rajasthan'),
    ('SK', 'Sikkim'),
    ('TN', 'Tamil Nadu'),
    ('TG', 'Telangana'),
    ('TR', 'Tripura'),
    ('UT', 'Uttarakhand'),
    ('UP', 'Uttar Pradesh'),
    ('WB', 'West Bengal')
    # add more states here
]

    state = models.CharField(
        max_length=2,
        choices=STATE_CHOICES,
    )
    pin = models.CharField(max_length=6)



class BankingDetails(models.Model):
    holder = models.ForeignKey(BankAccountHolder, on_delete=models.CASCADE)
    REGISTRATION_TYPE_CHOICES = [
        ('regular', 'Regular'),
        ('composition', 'Composition'),
        ('consumer', 'Consumer'),
        ('unregistered', 'Unregistered'),
        ('unknown', 'Unknown'),
    ]

    pan_it_number = models.CharField(max_length=10, blank=True)
    registration_type = models.CharField(max_length=20, choices=REGISTRATION_TYPE_CHOICES, default='unknown')
    gstin_un = models.CharField(max_length=15, blank=True)
    set_alter_gst_details = models.BooleanField(default=False)
    
    
class OpeningBalance(models.Model):
    holder = models.ForeignKey(BankAccountHolder, on_delete=models.CASCADE)
    date = models.DateField(default=datetime.date.today)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    
    
    
class payrollemployee(models.Model):
    employeeid = models.AutoField(('EMPLOYEEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    title = models.CharField(max_length=100,null=True)
    firstname = models.CharField(max_length=100,null=True)
    lastname = models.CharField(max_length=100,null=True)
    alias = models.CharField(max_length=100,null=True)
    location = models.CharField(max_length=100,null=True)
    email = models.CharField(max_length=100,null=True)
    age = models.CharField(max_length=100,null=True)
    mobile = models.CharField(max_length=100,null=True)
    employees = models.CharField(max_length=100,null=True)
    joindate = models.CharField(max_length=100,null=True)
    image = models.ImageField(upload_to='images/', default='/images/default.png')
    salarydetails = models.CharField(max_length=100,null=True)
    effectivefrom = models.CharField(max_length=100,null=True)
    hours = models.CharField(max_length=100,null=True)
    rate = models.CharField(max_length=100,null=True)
    amount = models.CharField(max_length=100,null=True)
    employeeno = models.CharField(max_length=100,null=True)
    designation = models.CharField(max_length=100,null=True)
    function = models.CharField(max_length=100,null=True)
    gender = models.CharField(max_length=100,null=True)
    dateofbirth = models.CharField(max_length=100,null=True)
    bloodgroup = models.CharField(max_length=100,null=True)
    fathersmothersname = models.CharField(max_length=100,null=True)
    spousename = models.CharField(max_length=100,null=True)
    
    generalphone = models.CharField(max_length=100,null=True)
    bankdetails = models.CharField(max_length=100,null=True)
    acno = models.CharField(max_length=100,null=True)
    ifsccode = models.CharField(max_length=100,null=True)
    bankname = models.CharField(max_length=100,null=True)
    branchname = models.CharField(max_length=100,null=True)
    transactiontype = models.CharField(max_length=100,null=True)
    pannumber = models.CharField(max_length=100,null=True)
    universalaccountnumber = models.CharField(max_length=100,null=True)
    pfaccountnumber = models.CharField(max_length=100,null=True)
    praccountnumber = models.CharField(max_length=100,null=True)
    esinumber = models.CharField(max_length=100,null=True)
    street = models.CharField(max_length=100,null=True)
    city = models.CharField(max_length=100,null=True)
    state = models.CharField(max_length=100,null=True)
    pincode = models.CharField(max_length=100,null=True)
    country = models.CharField(max_length=100,null=True)
    tempstreet = models.CharField(max_length=100,null=True)
    tempcity = models.CharField(max_length=100,null=True)
    tempstate = models.CharField(max_length=100,null=True)
    temppincode = models.CharField(max_length=100,null=True)
    tempcountry = models.CharField(max_length=100,null=True)
    payhead = models.CharField(max_length=100,null=True)
    # status = models.CharField(max_length=100,default='Active')
    is_active = models.BooleanField(default=True,null=True,blank=True)
    
    file = models.FileField(upload_to='payrollemployee',default="")
    adharnumber = models.CharField(max_length=250,null=True)
    istds = models.CharField(max_length=100,null=True)
    tdstype = models.CharField(max_length=100,null=True)
    tds = models.CharField(max_length=100,null=True)



class payrollcomments(models.Model):
    commentid = models.AutoField(('COMMENTID'), primary_key=True)
    empid = models.ForeignKey(payrollemployee, on_delete=models.CASCADE)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    comment = models.CharField(max_length=250,null=True)

class bankings_G(models.Model):
    bankname = models.CharField(max_length=100)
    ifsccode = models.CharField(max_length=20)
    branchname = models.CharField(max_length=100)
    account_number = models.IntegerField(default=0)
    openingbalance = models.IntegerField()
    date = models.DateField()
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    balance=models.IntegerField(default=0)
    cash_balance=models.IntegerField(default=0)
    term = models.TextField(max_length=30)
    bank_status = models.TextField(max_length=30,default='')
    
    
class bank_transactions(models.Model):
    bank_type=models.TextField(max_length=100)
    from_trans=models.TextField(max_length=100)
    to_trans=models.TextField(max_length=100)
    amount = models.IntegerField(blank=True,null=True)
    adj_date=models.DateField(blank=True,null=True)
    desc=models.TextField(max_length=100)
    type=models.TextField(max_length=100)
    cash_adjust=models.TextField(max_length=100)
    cash_cash=models.IntegerField(blank=True,null=True)
    cash_description=models.TextField(max_length=100)
    cash_date=models.DateField(blank=True,null=True)
    balance=models.IntegerField(blank=True,null=True,default=0)
    banking=models.ForeignKey(bankings_G, on_delete=models.CASCADE ,null=True,blank=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    
    
class recinvoice(models.Model):
    recinvoiceid = models.AutoField(('REC_INVOICEID'), primary_key=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    customername = models.CharField(max_length=100)
    profilename = models.CharField(max_length=100)
    recinvoiceno = models.CharField(max_length=100)
    terms = models.CharField(max_length=100, default='')
    startdate = models.DateField(null=True,blank=True)
    enddate = models.DateField(null=True,blank=True)
    bname = models.CharField(max_length=255, default='')
    placosupply = models.CharField(max_length=100, default='')
    ordernumber=models.IntegerField(default=0, null=True)
    repeate_every=models.CharField(max_length=100, default=0)
    amtrecvd = models.IntegerField(default=0, null=True)
    taxamount = models.FloatField(default=0, null=True)
    baldue = models.FloatField()
    email = models.CharField(max_length=100, default='')
    tot_inv_no = models.IntegerField(default=0, null=True)
    discount = models.IntegerField(default=0, null=True)
    subtotal = models.FloatField(default=0, null=True)
    grandtotal = models.FloatField(default=0, null=True)
    recinvoice_orderno = models.CharField(max_length=255, default='', null=True)
    recinvoice_status = (
       ('Draft','Draft'),
        ('Approved','Approved'),
        ('Billed','Billed'),
    )
    status =models.CharField(max_length=150,choices=recinvoice_status,default='Draft')
    note = models.CharField(max_length=255,default='', null=True)
    file = models.FileField(upload_to='invoice',default="default.jpg")
    IGST = models.CharField(max_length=100,default=0, null=True)
    CGST = models.CharField(max_length=100,default=0, null=True)
    SGST = models.CharField(max_length=100,default=0, null=True)
    TCS = models.CharField(max_length=100,default=0, null=True)
    gsttype = models.CharField(max_length=100,null=True)
    pay_method = models.CharField(max_length=255, default='', null=True)
    cheque_no = models.CharField(max_length=255, default='', null=True)
    upi_no = models.CharField(max_length=255, default='', null=True)
    bank_no = models.CharField(max_length=255, default='', null=True)
    paidoff=models.CharField(null=True,blank=True,max_length=255)
    balance=models.CharField(null=True,blank=True,max_length=255)
    shipping_charge = models.FloatField(default=0, null=True)
    adjust = models.FloatField(default=0, null=True)
    entity_type = models.CharField(null=True,blank=True,max_length=255)
    
    
class recinvoice_item(models.Model):
    recinvoice = models.ForeignKey(recinvoice,on_delete=models.CASCADE)
    cid = models.ForeignKey(company,on_delete=models.CASCADE)
    product = models.CharField(max_length=100,null=True)
    items = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100)
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100)
    tax = models.CharField(max_length=100)
    discount = models.IntegerField(default=0, null=True)
    total = models.IntegerField(default=0, null=True)
    
    
class EmployeeLoan(models.Model):  
    employee = models.ForeignKey(payrollemployee, on_delete=models.CASCADE)
    LoanAmount = models.IntegerField(blank=True,null=True)
    LoanDate = models.CharField(max_length=100)
    ExperyDate = models.CharField(max_length=100)
    MonthlyCut_percentage = models.IntegerField(blank=True,null=True)
    MonthlyCut_Amount = models.IntegerField(blank=True,null=True)
    Note = models.TextField(max_length=100)
    loan_term = models.CharField(max_length=100,default='')
    loan_value = models.IntegerField(blank=True,null=True)
    File = models.FileField(upload_to='loanfile',default="",blank=True, null=True)
    company = models.ForeignKey(company, on_delete=models.CASCADE)
    status = models.CharField(max_length=20,null=True)
    action= models.IntegerField(blank=True,null=True)
    balance_loan = models.IntegerField(blank=True,null=True)
    cheque_no=models.CharField(null=True,blank=True,max_length=255)
    upi_no=models.CharField(null=True,blank=True,max_length=255)
    payment_method=models.CharField(null=True,blank=True,max_length=255)
      
########################recurring bill-reshna-start#############

class recurring_bill(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    rbillid = models.AutoField(('rid'), primary_key=True)
    # bill_no = models.IntegerField(default=1000)
    billno =  models.CharField(max_length=100,null=True,blank=True)
    refference = models.IntegerField(default=1)
    profile_name =models.CharField(max_length=100,null=True,blank=True,default=0)
    purchase_order = models.CharField(max_length=100,null=True,blank=True,default=0)
    source_supply = models.CharField(max_length=100,null=True,blank=True)
    place_supply = models.CharField(max_length=100,null=True,blank=True)
    vendor_name = models.CharField(max_length=100,null=True,blank=True)###vendor table
    customer_name = models.CharField(max_length=100,null=True,blank=True)###customer table
    repeat_every = models.CharField(max_length=100,null=True,blank=True)#####newtab
    payment_method= models.CharField(max_length=100,null=True,blank=True)###use banktable
    cheque_no=models.CharField(null=True,blank=True,max_length=255)
    upi_no=models.CharField(null=True,blank=True,max_length=255)
    start_date=models.DateField(null=True,blank=True)##use this as date
    end_date=models.CharField(max_length=100,null=True,blank=True)
    payment_terms = models.CharField(max_length=100,null=True,blank=True)###newtab
    sub_total = models.FloatField(null=True,blank=True)
    igst = models.FloatField(null=True,blank=True)
    cgst = models.FloatField(null=True,blank=True)
    sgst = models.FloatField(null=True,blank=True)
    tax_amount =  models.FloatField(null=True,blank=True)
    shipping_charge = models.FloatField(null=True,blank=True)
    adjustment = models.FloatField(default=0,null=True,blank=True)
    grand_total = models.FloatField(null=True,blank=True)
    note = models.CharField(max_length=255,null=True)
    paid_amount= models.FloatField(default=0,max_length=100,null=True)
    balance = models.FloatField(max_length=100,null=True)
    file = models.FileField(upload_to='purchase/rbill',default="default.png")
    vendor_mail = models.CharField(max_length=100,null=True,blank=True)
    bill_status = (
        ('Draft','Draft'),
        ('Save','Save'),
    )
    status =models.CharField(max_length=150,choices=bill_status,default='Draft')
    
    
class recurringbill_item(models.Model):
    bill = models.ForeignKey(recurring_bill, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    item = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100,null=True)
    total = models.IntegerField(default=0, null=True)
    discount = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    
    
class repeatevery(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    repeat=models.CharField(max_length=100,null=True,blank=True)  
    

###### E-Way bills ---------shemeem------
class Transportation(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=200, null= True)
    type = models.CharField(max_length=100, null=True)


class e_waybills(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    ewbillid = models.AutoField(('ewid'), primary_key=True)
    invoice_no =  models.CharField(max_length=100,null=True,blank=True)
    bill_date = models.DateField(null=True, blank=True)
    document_type = models.CharField(max_length=200, null=True)
    cust = models.ForeignKey(customer, on_delete=models.CASCADE, null=True)
    customer_name = models.CharField(max_length=100,null=True,blank=True)
    customer_email = models.EmailField(null=True)
    gsttype = models.CharField(max_length=100, null=True)
    gstin = models.CharField(max_length=100, default='')
    trans_type = (('Goods','Goods'),('Service','Service'))
    transaction_subtype = models.CharField(max_length=200, null= True)
    transaction_type = models.CharField(max_length=150,choices=trans_type, null=True)
    transaction_hsn = models.IntegerField(null=True,blank=True,default=0)
    delivery_address = models.TextField(null=True, blank = True)
    placeof_supply = models.CharField(max_length=100,null=True,blank=True)
    transportation = models.ForeignKey(Transportation,on_delete=models.CASCADE,null= True)
    vehicle_number = models.CharField(max_length=100, null=True)
    kilometer = models.FloatField(null=True)
    sub_total = models.FloatField(null=True,blank=True)
    igst = models.FloatField(null=True,blank=True)
    cgst = models.FloatField(null=True,blank=True)
    sgst = models.FloatField(null=True,blank=True)
    tax_amount =  models.FloatField(null=True,blank=True)
    shipping_charge = models.FloatField(null=True,blank=True)
    adjustment = models.FloatField(default=0,null=True,blank=True)
    grand_total = models.FloatField(null=True,blank=True)
    # paid_amount= models.FloatField(default=0,max_length=100,null=True)
    # balance = models.FloatField(max_length=100,null=True)
    note = models.TextField(null=True)
    file = models.FileField(upload_to='purchase/ewbill',default="default.png")

    bill_status = (
        ('Draft','Draft'),
        ('Billed','Billed'),
    )
    status =models.CharField(max_length=150,choices=bill_status,default='Draft')


class e_waybill_item(models.Model):
    bill = models.ForeignKey(e_waybills, on_delete=models.CASCADE,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    item = models.CharField(max_length=100,null=True)
    hsn = models.CharField(max_length=100,null=True)
    qty = models.IntegerField(default=0, null=True)
    price = models.CharField(max_length=100,null=True)
    total = models.IntegerField(default=0, null=True)
    discount = models.CharField(max_length=100,null=True)
    tax = models.CharField(max_length=100,null=True)
    
    
class debitnotecomments(models.Model):
    commentid = models.AutoField(('COMMENTID'), primary_key=True)
    debid = models.ForeignKey(purchasedebit, on_delete=models.CASCADE)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    comment = models.CharField(max_length=250,null=True)
    
#reshna-holidays#
class holidays(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    hid = models.AutoField(('hid'), primary_key=True)
    start_date = models.DateField(null=True,blank=True)
    end_date = models.DateField(null=True,blank=True)
    name = models.CharField(max_length=100,null=True,blank=True)
    
    
# reshna attendence#
class attendance(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    atid = models.AutoField(('hid'), primary_key=True)
    date = models.DateField(null=True,blank=True)
    employee= models.CharField(max_length=100,null=True,blank=True)
    status = models.CharField(max_length=100,null=True,blank=True,default='Present')
    reason = models.CharField(max_length=100,null=True,blank=True)
    
class man_Journal_comment(models.Model):
    comment=models.CharField(max_length=300)
    proj=models.ForeignKey(mjournal,on_delete=models.CASCADE,null=True,blank=True)
    
    
class loan_account(models.Model):
    account_name=models.TextField(max_length=100)
    account_number=models.TextField(max_length=100)
    lenderbank=models.TextField(max_length=100)
    recieced_bank=models.TextField(max_length=100)
    intrest=models.TextField(max_length=100,null=True,blank=True)
    term=models.TextField(max_length=100)
    loan_amount=models.TextField(max_length=100)
    processing=models.TextField(max_length=100,null=True,blank=True)
    paid=models.TextField(max_length=100,null=True,blank=True)
    status=models.TextField(max_length=100)
    desc=models.TextField(max_length=100,null=True,blank=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    balance=models.IntegerField(default=0)    
    date=models.DateField(blank=True,null=True)
    recieved_amount=models.IntegerField(default=0)   
    
    
class loan_transaction(models.Model):
    bank_type=models.TextField(max_length=100)
    from_trans=models.TextField(max_length=100)
    to_trans=models.TextField(max_length=100)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    loan=models.ForeignKey(loan_account, on_delete=models.CASCADE ,null=True,blank=True)
    loan_amount=models.IntegerField(default=0,blank=True,null=True)
    loan_desc=models.TextField(blank=True,null=True)
    loan_date=models.DateField(blank=True,null=True)
    loan_intrest=models.TextField(max_length=100,default=0,blank=True,null=True)
    balance=models.IntegerField(default=0)   
    type=models.TextField(max_length=100)
    total = models.IntegerField(default=0)
    
    
class repeatevry(models.Model):
    name = models.CharField(max_length=100)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    
    
class recterm(models.Model):
    term_name = models.CharField(max_length=100)
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    
    
class PaymentTerms(models.Model):
    cid = models.ForeignKey(company, on_delete=models.CASCADE,null=True)
    term = models.CharField(max_length=100,null=True)
    days = models.IntegerField(null=True)
    
    
class loan_duration(models.Model):
    term = models.TextField(max_length=30)
    term_value = models.IntegerField()
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    
    
class employee_loan_tran(models.Model):
    employee = models.ForeignKey(payrollemployee, on_delete=models.CASCADE,blank=True,null=True)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    emploee_loan = models.ForeignKey(EmployeeLoan, on_delete=models.CASCADE)
    loan_trans_date = models.CharField(max_length=100)
    particular = models.CharField(max_length=100)
    amount = models.IntegerField()
    intrest = models.IntegerField()
    total_amount = models.IntegerField()
    payment_type = models.CharField(max_length=100)
    balance_loan = models.IntegerField(blank=True,null=True)
    cheque_no=models.CharField(null=True,blank=True,max_length=255)
    upi_no=models.CharField(null=True,blank=True,max_length=255)
    payment_method=models.CharField(null=True,blank=True,max_length=255)
    
    
class paymnt_made_comments(models.Model):
    commentid = models.AutoField(('COMMENTID'), primary_key=True)
    empid = models.ForeignKey(purchasepayment, on_delete=models.CASCADE)
    cid = models.ForeignKey(company, on_delete=models.CASCADE)
    comment = models.CharField(max_length=250,null=True)
    
    
class VendorComment(models.Model):
    vendor = models.ForeignKey(vendor, on_delete=models.CASCADE, related_name='comments')
    comment_text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'Comment on {self.created_at}'
        
class PurchaseOrderComment(models.Model):
    order = models.ForeignKey(purchaseorder, on_delete=models.CASCADE, related_name='order_comments')
    comment_text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'Comment on {self.created_at}'
        
class PurchaseBillComment(models.Model):
    bill = models.ForeignKey('PurchaseBill', on_delete=models.CASCADE, related_name='bill_comments')
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    comment_text = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'Comment on {self.bill.billid} by {self.user.username}'
        
class ConvertBill(models.Model):
    purchase_order = models.ForeignKey('purchaseorder', on_delete=models.CASCADE)
    purchase_bill = models.ForeignKey('purchasebill', on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.purchase_order} - {self.purchase_bill}'
        
class deletedcreditnotes(models.Model):
    cid = models.ForeignKey(company,on_delete=models.CASCADE,null=True)
    reference_number = models.CharField(max_length=50)


class DeletedPaymentReceived(models.Model):
    cid = models.ForeignKey(company,on_delete=models.CASCADE,null=True)
    referno = models.CharField(max_length=50)

class DeletedChallan(models.Model):
    cid = models.ForeignKey(company,on_delete=models.CASCADE,null=True)
    ref = models.CharField(max_length=50)
    

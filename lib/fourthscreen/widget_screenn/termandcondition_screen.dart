import 'package:flutter/material.dart';

class TermCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Term and Condition',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                  'Terms and Condition (English)',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Text(
                  '1. Cancelation Policy',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: Column(
                children: [
                  Text(
                    'Your appointments are very important to the Glitterati team; each appointment is reserved especially for you. At Glitterati we understand that circumstances may change and booking amendments may be necessary, therefore we respectfully request 24 hours notice for cancellations',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    'Strict 24 hour cancellation policy Please understand that when you forget to cancel your appointment within the 24 hour cancellation time we miss the opportunity to fill that time, therefore customers awaiting appointments miss the opportunity to receive our services. A 48 hour appointment reminder is sent via text message as we understand that appointments may have been made in advance. Since the appointments are made individually for you, a cancellation fee will apply',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    'Less than 24 hours notice will result in a £20 charge, if a multiple service or group appointment is cancelled a £20 charge per service will be made.“No Shows” will be charged at 100% of the reserved service amount',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Text(
                'Gift Voucher Terms & Conditions ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Text(
                'Once issued the value on the Glitterati Gift Card can be used as full or part payment at any Glitterati Salon.The card can be loaded with any value between £5 and £200. The maximum value stored on the card is £200.The monies on the card cannot be exchanged for cash. Any remaining balance will be stored on the card and may be used to pay for future purchase.Any additional cost exceeding the value of this voucher will be paid by the redeemer.All monies on the card must be used by the expiry date which is 12 months from the date the card was issued. Any balance left on the card after 12 months of not being used will be deducted.You should treat this card as cash - it cannot be replaced if lost.This gift voucher will be considered null and void without the Expiry Date and Authorized Signature being filled up, seal and other authentication signs or if tampered.Please be aware that if you select "Standard record" delivery and the item goes missing in the post, we will investigate for you and provide you with the relevant information but we are not liable to replace, compensate or refund any funds that may have been lost.To check the remaining balance on your card call 01932 910266 or email us at info@glitteratihairandbeauty.com referencing your unique gift card serial number. Calls are charged at local rate.The card is not a credit, debit or cheque guarantee card. Glitterati Hair Limited reserves the right to amend these terms and conditions at any time or with draw the card on reasonable notice.In the event of any dispute, the decision (Glitterati Hair Limited) is final. Your statutory rights are not affected.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Text(
                'Online Booking Terms & Conditions',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
              child: Text(
                'We would like to ensure that your appointment at the salon runs as smoothly as possible. Please read our booking rules and guidance so that you get the most from your visit to us.•    We will contact you to discuss any alterations to your appointmen•    Prices are intended as guide only. You will be charged for the services you receive, which may differ from the services you have booked.•    Prices do not include any promotions, offers or discounts that you may be entitled to eg Recommended Friend, Colour Sale, etc.•    Bookings made online may need to be slightly amended to fit in with salon time slots and stylists commitments. Please ensure that we have a current contact phone number for you (preferably a mobile!)•    For our younger guests (under16) we offer “off peak” rates Monday to Thursday 9am to 5.15pm.•    If you miss your appointment or cancel it with less than 24 hours’ notice, we may charge you.If you are unable to find the availability that you are looking for, dont worry , just give us a ring and our Reception Team will do their very best to find an appointment to suit your needs!Colours & Perms•    When booking your colour or perm, please remember to book either a Cut & finish, or a blow dry to go with it.•    If you are booking for a colour service, eyelash / eyebrow tint or eyelash perming. (Glitterati Lashes or Glitterati Brows)  you will need a skin test 48 hours before you have the full treatment.Tests are available without an appointment and are free. Failure to have a skin test may result in us being unable to carry out your treatment(s).•    Colour corrections and transformations – sometimes changing your colour is easy, other times it’s more complicated. We recommend that you contact the salon for advice before making your reservation.•    For a quotation for transformations or corrections please visit the salon for a consultation. Alternatively we will happily offer a price range by telephone.Special OccasionsBridal Hair and hair for special occassions is somthing of a specialty, and we would resuggest that these should be booked through the Salon Reception Team who can advise on the best stylist to meet your requirements.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


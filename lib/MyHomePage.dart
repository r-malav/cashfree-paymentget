/*
import 'package:cashfree/cashfree.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = new TextEditingController();
  final Cashfree _cashfree = Cashfree();

  @override
  void initState() {
    super.initState();

    _cashfree.on(Cashfree.EVENT_PAYMENT_SUCCESS, _handleCashfreePaymentSuccess);
    _cashfree.on(Cashfree.EVENT_PAYMENT_ERROR, _handleCashfreePaymentError);
    _cashfree.on(Cashfree.EVENT_ERROR, _handleCashfreeError);
  }

  @override
  void dispose() {
    super.dispose();
    _cashfree.clear();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Case free paymwnt getway"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(hintText: "amount to pay"),
            ),
            SizedBox(
              height: 12,
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "pay Now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _doPayment();
              },
            )
          ],
        ),
      ),
    );
  }

  void _doPayment() {

    var options = {
      'token': "deb5628efa73bde459b7cc5675898f801bbf60bd",
      'stage': "TEST",
      'appId': "7278461b508532480ff49209048727",
      'orderId': "Test1234",
      'orderAmount':num.parse(textEditingController.toString())*100,
      'orderNote': "TestNote",
      'orderCurrency': "INR",
      'customerName': "Test",
      'customerPhone': "9602303389",
      'customerEmail': "riteshmalav@gmail.com",
      'notifyUrl': '',
      "paymentModes": ''
    };
    _cashfree.doPayment(options);
  }

  void _handleCashfreePaymentSuccess(
      CashfreePaymentSuccessResponse response) async {
    Fluttertoast.showToast(msg: 'Success' + response.orderId);
    print("Cashfree payment success orderId:${response.orderId}");
  }

  void _handleCashfreePaymentError(
      CashfreePaymentFailureResponse response) async {
    Fluttertoast.showToast(msg: 'PaymentError' + response.toString());
    print(
        "Cashfree payment error msg:${response.txMsg}, status: ${response.txStatus}");
  }

  void _handleCashfreeError(CashfreeError cashfreeError) async {
    Fluttertoast.showToast(msg: 'Failure' + cashfreeError.toString() + " - " + cashfreeError.message);
    print("Cashfree error:${cashfreeError.message}");
  }

}
*/

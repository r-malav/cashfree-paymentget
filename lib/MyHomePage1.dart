import 'package:cashfree_pg/cashfree_pg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage1 extends StatefulWidget {
  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  TextEditingController textEditingController = new TextEditingController();
  List<dynamic> appList;
  Map<dynamic, dynamic> app;

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
                makePayment();
              },
            )
          ],
        ),
      ),
    );
  }

  makePayment() {
    //Replace with actual values
    String orderId = "ORDER_ID";
    String stage = "Test";
    int orderAmount ;
    String tokenData = "deb5628efa73bde459b7cc5675898f801bbf60bd";
    String customerName = "Customer Name";
    String orderNote = "Order_Note";
    String orderCurrency = "INR";
    String appId = "7278461b508532480ff49209048727";
    String customerPhone = "9602303389";
    String customerEmail = "ritesh.malav@gmail.com";
    String notifyUrl = "https://test.gocashfree.com/notify";

    Map<String, dynamic> inputParams = {
      "orderId": orderId,
      "orderAmount": textEditingController.text,
      "customerName": customerName,
      "orderNote": orderNote,
      "orderCurrency": orderCurrency,
      "appId": appId,
      "customerPhone": customerPhone,
      "customerEmail": customerEmail,
      "stage": stage,
      "tokenData": tokenData,
      "notifyUrl": notifyUrl
    };

    CashfreePGSDK.doPayment(inputParams)
        .then((value) => value?.forEach((key, value) {
      print("$key : $value");
      //Do something with the result
    }));
  }

}

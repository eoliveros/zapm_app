import 'package:flutter/material.dart';
import 'package:decimal/decimal.dart';
import 'package:flushbar/flushbar.dart';

import 'send_form.dart';
import 'receive_form.dart';

class SendScreen extends StatelessWidget {
  SendScreen(this._seed, this._recipientOrUri, this._max) : super();

  final String _seed;
  final String _recipientOrUri;
  final Decimal _max;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Send"),
        ),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: SendForm(_seed, _recipientOrUri, _max)
        )
    );
  }
}

class ReceiveScreen extends StatelessWidget {
  ReceiveScreen(this._address) : super();

  final String _address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Recieve"),
        ),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: ReceiveForm(() {
              Navigator.pop(context);
            }, _address)));
  }
}

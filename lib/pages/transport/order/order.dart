import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';
import 'package:yunlian/pages/transport/order/impl/dao.dart';
import 'package:yunlian/pages/transport/order/store.dart';

final store = OrderStore();

class Order extends PYIComponent {
  Order() {
    store.freightQuery(FreightQueryRequest(
      pageNum: 1,
      pageSize: 10,
    ));
  }

  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('to Carrier'),
            onPressed: () {
              Navigator.of(context).pushNamed('/transport/carrier');
            },
          ),
        ],
      ),
    );
  }
}

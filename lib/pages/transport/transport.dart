import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';
import 'package:yunlian/pages/transport/carrier/carrier.dart';
import 'package:yunlian/pages/transport/order/order.dart';

class Transport extends PYIComponent {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: double.infinity,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                alignment: Alignment.topLeft,
                child: TabBar(
                  tabs: [
                    Tab(text: '运单列表'),
                    Tab(text: '承运商列表'),
                  ],
                  indicatorWeight: 2,
                  indicatorPadding: EdgeInsets.only(left: 10, right: 10),
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Order(),
                Carrier(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';

class Goods extends PYIComponent {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: double.infinity,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                alignment: Alignment.topLeft,
                child: TabBar(
                  tabs: [
                    Tab(text: '商品列表'),
                    Tab(text: '商品分类'),
                    Tab(text: '商品属性'),
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
                Tab(text: '商品列表'),
                Tab(text: '商品分类'),
                Tab(text: '商品属性'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

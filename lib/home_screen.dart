import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:getcoaching/card_item.dart';
import 'package:getcoaching/upper_widget.dart';
import 'package:getcoaching/users_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _users = Provider.of<Users>(context).userList;
    final _appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Icon(
        Icons.model_training,
        color: Colors.green,
        size: 30.0,
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
    return Scaffold(
      appBar: _appBar,
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: (_mediaQuery.size.height -
                    _appBar.preferredSize.height -
                    _mediaQuery.padding.top) *
                0.3,
            child: UpperWidget(),
          ),
          SizedBox(
            height: (_mediaQuery.size.height -
                    _appBar.preferredSize.height -
                    _mediaQuery.padding.top) *
                0.05,
          ),
          Container(
            height: (_mediaQuery.size.height -
                    _appBar.preferredSize.height -
                    _mediaQuery.padding.top) *
                0.05,
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'MY COACHES',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'VIEW PAST SESSIONS',
                    style: const TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Conditional.single(
            context: context,
            conditionBuilder: (BuildContext context) => _users != null,
            widgetBuilder: (BuildContext context) => Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 1 / 1.4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children:
                    List.generate(6, (index) => CardItem(_users!.users[index])),
              ),
            ),
            fallbackBuilder: (BuildContext context) => Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: const LinearProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

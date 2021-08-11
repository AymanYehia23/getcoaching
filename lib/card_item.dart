import 'package:flutter/material.dart';

import 'user_model.dart';

class CardItem extends StatelessWidget {
  final UserModel _user;
  CardItem(this._user);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          children: [
            SizedBox(height: constraints.maxHeight * 0.1,),
            Container(
              height: constraints.maxHeight * 0.3,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            _user.image
                        ),
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _user.status == 'Available' ? Colors.green : Colors.redAccent,
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,            // 5
            ),
            Container(
              height: constraints.maxHeight * 0.07,           //  7
              child: Text(
                _user.name,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            Container(
              height: constraints.maxHeight * 0.15,           // 15
              child: Text(
                '${_user.status} for\nThe next ${_user.hours} hours',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.08),
            Spacer(),
            Container(
              height: constraints.maxHeight * 0.17,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Request',
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: _user.status == 'Available' ? Colors.green : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

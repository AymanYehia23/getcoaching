import 'package:flutter/material.dart';

class UpperWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          height: 100,
          width: double.infinity,
          color: Colors.white,
          child: const Text(
            'Get Coaching',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(
              top: 90.0,
              right: 25.0,
              left: 25.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'YOU HAVE',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          '206',
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Image(
                          image: const AssetImage('assets/love.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.greenAccent[100]!.withOpacity(0.5),
                  ),
                  height: 60.0,
                  width: 125.0,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Buy more',
                      style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            //width: 300.0,
          ),
        ),
      ],
    );
  }
}

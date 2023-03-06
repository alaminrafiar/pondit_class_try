import 'package:flutter/material.dart';
import 'package:jack/model/card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlackJack(),
      ),
    );
  }
}

class BlackJack extends StatefulWidget {
  const BlackJack({Key? key}) : super(key: key);

  @override
  State<BlackJack> createState() => _BlackJackState();
}

class _BlackJackState extends State<BlackJack> {
  MyCard playingCard2 = MyCard(0,0,0);

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TextButton(
            //   onPressed: () {
            //     print('pressed');
            //   },
            //   child: Text('Magic Jack'),
            // ),
            Image.asset(
              'assets/images/logo.jpeg',
              width: 100,
              height: 125,
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/card${playingCard2.getLeftNumber()}.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/card${playingCard2.getRightNumber()}.png',
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                setState(() {
                  playingCard2.changeCardNumber();
                  playingCard2.updateResult();
                });

              },
              child: Image.asset(
                'assets/images/dealbutton.png',
                width: 100,
                height: 125,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Player",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${playingCard2.getUserResult()}',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "CPU",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${playingCard2.getCpuResult()}',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "How many time played magic game = ${playingCard2.getTotalPlayed()}",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

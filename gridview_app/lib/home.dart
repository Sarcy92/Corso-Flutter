import 'package:flutter/material.dart';
import 'package:gridview_app/components/icon_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discovery HO.RE.CA MI'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home, size: 24),
                  Icon(Icons.pin_drop, size: 24),
                  Icon(Icons.favorite, size: 24),
                  Icon(Icons.person, size: 24),
                ])),
      ),
      backgroundColor: const Color(0xFFf2f2f4),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Image.asset('assets/caffe.png', titolo: 'Bars & Hotels', numeroPlaces: 42),
          IconCard(icona: icona, titolo: titolo, numeroPlaces: numeroPlaces),
          IconCard(icona: icona, titolo: titolo, numeroPlaces: numeroPlaces),
          IconCard(icona: icona, titolo: titolo, numeroPlaces: numeroPlaces),
          IconCard(icona: icona, titolo: titolo, numeroPlaces: numeroPlaces),
          IconCard(icona: icona, titolo: titolo, numeroPlaces: numeroPlaces),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  final IconData icona;
  final String titolo;
  final int numeroPlaces;
  const IconCard({
    required this.icona,
    required this.titolo,
    required this.numeroPlaces,
    Key? key
  }) : super(key: key);

  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  late bool _attiva;

  @override
  void initState() {
    super.initState();
    _attiva = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        height: 200,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _attiva = !_attiva;
            });
          },
          child: Card(
            color: Colors.black12,
            child: AspectRatio(
              aspectRatio: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/pizza.png', width: 50, height: 50),
                  const SizedBox(height: 16),
                  Text(widget.titolo,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('${widget.numeroPlaces} Place',
                    style: const TextStyle(color: Colors.white60),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

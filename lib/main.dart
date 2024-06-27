import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Pantai Menganti',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kebumen, Jawa Tengah',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.favorite,
        color: Colors.amber,
      ),
      const Text('4.8'),
    ],
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = new Padding(
      padding: EdgeInsets.fromLTRB(32, 32, 32, 10),
      child: Text(
        "Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah. Pantai ini merupakan salah satu pantai terindah di Jawa Tengah. Pasir pantainya yang berwarna putih serta terdapat panorama perbukitan juga tebing karst yang indah.",
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );

    Widget textSection2 = const Padding(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: Text(
        "Bentang alam berupa perbukitan memang sedikit menyulitkan untuk mengakses pantai ini.Sebelum mencapai pantai melalui jalan yang berlika-liku, meski demikian pemandangan tetap menakjubkan.",
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Latihan Layout Figar Sanduarga',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.home),
          title: const Text('Latihan layout Figar Sanduarga'),
        ),
        body: Column(
          children: [
            Image.asset(
              'img/menganti.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            textSection2,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

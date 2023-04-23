import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(vistaAPI());
}

class vistaAPI extends StatefulWidget {
  const vistaAPI({Key? key}) : super(key: key);

  @override
  _vistaAPIState createState() => _vistaAPIState();
}

class _vistaAPIState extends State<vistaAPI> {
  final String apiUrl = 'https://www.freetogame.com/api/games';

  late List<dynamic> games = [];

  Future<void> fetchGames() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data != null && data is List<dynamic>) {
        setState(() {
          games = data;
        });
      } else {
        throw Exception('Error ');
      }
    } else {
      throw Exception('Error en cargars: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    games = [];
    fetchGames();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreeToGame API',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: games == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: games.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(games[index]['title']),
                    subtitle: Text(games[index]['genre']),
                    leading: Image.network(games[index]['thumbnail']),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  );
                },
              ),
      ),
    );
  }
}

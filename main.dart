import 'package:flutter/material.dart';

void main() {
  runApp(MemeMyNameApp());
}

class MemeMyNameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemeMyName',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MemeHomePage(),
    );
  }
}

class MemeHomePage extends StatefulWidget {
  @override
  _MemeHomePageState createState() => _MemeHomePageState();
}

class _MemeHomePageState extends State<MemeHomePage> {
  String userName = "";
  String generatedCaption = "";

  void generateMeme() {
    if (userName.trim().isEmpty) return;
    setState(() {
      generatedCaption = ""When $userName thinks Monday is a holiday... 😂"";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MemeMyName'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Enter Your Name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TextField(
                onChanged: (val) {
                  userName = val;
                },
                decoration: InputDecoration(
                  hintText: 'e.g. Arindam',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: generateMeme,
                child: Text("Generate Meme"),
              ),
              SizedBox(height: 30),
              if (generatedCaption.isNotEmpty)
                Column(
                  children: [
                    Image.network(
                      'https://i.imgflip.com/26am.jpg',
                      height: 250,
                    ),
                    SizedBox(height: 10),
                    Text(
                      generatedCaption,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

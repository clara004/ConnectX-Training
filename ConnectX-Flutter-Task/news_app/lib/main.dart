import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News article',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsArticle(),
    );
  }
}

class NewsArticle extends StatefulWidget {
  @override
  _NewsArticleScreenState createState() => _NewsArticleScreenState();
}

class _NewsArticleScreenState extends State<NewsArticle> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://d3i6fh83elv35t.cloudfront.net/static/2024/01/2024-01-28T222938Z_1560774941_RC2AR5AK21LS_RTRMADP_3_ISRAEL-PALESTINIANS-USA-JORDAN-1024x576.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      borderRadius:
                          BorderRadius.circular(15.0), 
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2024-02-01T14:13:00Z',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          'The U.S. military plans to strike targets in Iran and Syria including Iranian personnel and facilities, in response to a drone attack that killed 3 U.S. troops.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Tucker Reals, Eleanor Watson, Alex Sundby',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'U.S. officials have confirmed to CBS News that plans have been approved for a series of strikes over a number of days against targets — including Iranian personnel and facilities — inside Iraq and Sy...',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isSaved = !isSaved;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: isSaved ? Colors.red : Colors.white,
        child: Icon(
          isSaved ? Icons.bookmark : Icons.bookmark_border,
          color: isSaved ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

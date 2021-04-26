import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';
import 'package:quotes/Card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(author: '- Rajesh',text: 'Rajesh is going to be a coder'),
    Quote(author: '- Dipali',text: 'Was i wrong to say no to dipali'),
    Quote(author: '- Rajesh',text: 'Is it my fault that i was not understanding her situation')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
          );
        }).toList(),
      ),
    );
  }
}



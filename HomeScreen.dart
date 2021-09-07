import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Categories.dart';
import 'package:newsapp/func.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:clipboard/clipboard.dart';

import 'Catogries.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _openlink(String link) async {
    var urlLink = link;
    if (await canLaunch(urlLink)) {
      await launch(urlLink);
    } else {
      await launch(urlLink);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Choose News Categories',
                  style: TextStyle(
                    fontSize: 45,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Categories(
                  textCategories: 'General',
                  colorButton: Colors.blue,
                  categories: 'general',
                ),
                Categories(
                  textCategories: 'Science',
                  colorButton: Colors.orange,
                  categories: 'science',
                ),
                Categories(
                  textCategories: 'Health',
                  colorButton: Colors.red,
                  categories: 'health',
                ),
                Categories(
                  textCategories: 'Politics',
                  colorButton: Colors.teal,
                  categories: 'politics',
                ),
                Categories(
                  textCategories: 'Sports',
                  colorButton: Colors.green,
                  categories: 'sports',
                ),
                Categories(
                  textCategories: 'Cinema',
                  colorButton: Colors.deepPurple,
                  categories: 'cinema',
                ),
                Categories(
                  textCategories: 'Business',
                  colorButton: Colors.indigo,
                  categories: 'business',
                ),
                Categories(
                  textCategories: 'Technology',
                  colorButton: Colors.brown,
                  categories: 'technology',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'The Latest News :  ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Func.openLink('https://www.msn.com/ar-eg/news/national/%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85-%D8%AA%D8%B9%D9%84%D9%86-%D8%B1%D8%A7%D8%A8%D8%B7-%D9%86%D8%AA%D9%8A%D8%AC%D8%A9-%D8%AA%D8%B8%D9%84%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%88%D9%8A%D8%A9-%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%A9-2021/ar-AAO9wOq?ocid=entnewsntp');
                      },
                      child: Card(
                        color: Colors.grey,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 70,
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.network(
                                          'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAKK72V.img?h=180&w=270&m=6&q=60&o=f&l=f&x=276&y=132',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'نتيجة الثانويه العامه ',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.center,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.grey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      color:Colors.green,
                                      padding:EdgeInsets.symmetric(vertical: 39.4),
                                      child: IconButton(
                                        onPressed: () {

                                          Func.shareLink('https://www.msn.com/ar-eg/news/national/%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85-%D8%AA%D8%B9%D9%84%D9%86-%D8%B1%D8%A7%D8%A8%D8%B7-%D9%86%D8%AA%D9%8A%D8%AC%D8%A9-%D8%AA%D8%B8%D9%84%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%88%D9%8A%D8%A9-%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%A9-2021/ar-AAO9wOq?ocid=entnewsntp');
                                        },
                                        icon: Icon(Icons.share),
                                      ),
                                    ),
                                    Container(

                                      color:Colors.orange,
                                      padding:EdgeInsets.symmetric(vertical: 39.4),
                                      child: IconButton(
                                          onPressed: () {
                                            Func.copyLink('https://www.msn.com/ar-eg/news/national/%D8%A7%D9%84%D8%AA%D8%B9%D9%84%D9%8A%D9%85-%D8%AA%D8%B9%D9%84%D9%86-%D8%B1%D8%A7%D8%A8%D8%B7-%D9%86%D8%AA%D9%8A%D8%AC%D8%A9-%D8%AA%D8%B8%D9%84%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%AB%D8%A7%D9%86%D9%88%D9%8A%D8%A9-%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%A9-2021/ar-AAO9wOq?ocid=entnewsntp')
                                                .then((value) => print('copied'));
                                            final snackBar = SnackBar(content:Text('copied!'),);
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          },
                                          icon: Icon(Icons.copy)),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

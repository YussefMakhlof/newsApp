import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:newsapp/Artiecle.dart';

class Api{

  final String apiKey='215a13ce69a4405085f88f203185f039';
 Future<List<Article>>fetchArticles() async {
List<Article>listArticle=[];
    var url = Uri.parse('https://newsapi.org/v2/top-headlines?country=eg&apikey=$apiKey');
    var response=await http.get( url);
    if(response.statusCode==200){
      var responseBody=jsonDecode(response.body)['articles'];
      print(responseBody);
      for(var u in responseBody){
        Article x=Article(u['title'], u['description'], u['url'], u['urlToImage']);
        listArticle.add(x);
      }
      print('listadd----->$listArticle');
      return listArticle;
    }
return listArticle;
  }

}
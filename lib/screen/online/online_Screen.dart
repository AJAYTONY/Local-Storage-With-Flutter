import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_offline_data_in_flutter/model/github_user_model.dart';
import 'package:online_offline_data_in_flutter/screen/online/online_detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipe_to/swipe_to.dart';

class OnlineScreen extends StatefulWidget {
  const OnlineScreen({Key? key}) : super(key: key);

  @override
  _OnlineScreenState createState() => _OnlineScreenState();
}

class _OnlineScreenState extends State<OnlineScreen> {
  List<GitHubUserModel>  gitHubUserModel = [];
  var data;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: gitHubUserModel.length,
              itemBuilder: (context, index) {
                return SwipeTo(
                    child:ListTile(
                  onTap: (){
                    debugPrint('${gitHubUserModel[index].id}');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnlineDetailScreen(gitHubUsers: gitHubUserModel[index])));
                    // toastAlert(
                    //     message: '${gitHubUserModel[index].id}');
                  },
                  leading: CircleAvatar(
                    radius: 30,
                   // backgroundImage: NetworkImage(data[index]['avatar_url']),
                    backgroundImage: NetworkImage(gitHubUserModel[index].avatarUrl.toString()),
                  ),
                  title: Text(gitHubUserModel[index].login.toString(),
                    //data[index]['login'].toString().toUpperCase(),
                    style: const TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(gitHubUserModel[index].url.toString(),
                  //  data[index]['url'],
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                    onRightSwipe: () async {
                      String values = gitHubUserModel[index].id.toString();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      List<String>? list = prefs.getStringList("id");
                      list?.add(values);
                        prefs.setStringList("id", list ?? [1.toString()]);
                        print(list);

                      String valuestwo = gitHubUserModel[index].login.toString();
                      SharedPreferences prefstwo = await SharedPreferences.getInstance();
                      List<String>? listtwo = prefstwo.getStringList("login");
                      listtwo?.add(valuestwo);
                      prefstwo.setStringList("login", listtwo ?? [gitHubUserModel[index].login.toString()]);
                      print(listtwo);

                      String valuesthree = gitHubUserModel[index].avatarUrl.toString();
                      SharedPreferences prefsthree = await SharedPreferences.getInstance();
                      List<String>? listthree = prefsthree.getStringList("avatarUrl");
                      listthree?.add(valuesthree);
                      prefsthree.setStringList("avatarUrl", listthree ?? [gitHubUserModel[index].avatarUrl.toString()]);
                      print(listthree);

                      String valuesfour = gitHubUserModel[index].url.toString();
                      SharedPreferences prefsfour = await SharedPreferences.getInstance();
                      List<String>? listfour = prefsfour.getStringList("url");
                      listfour?.add(valuesfour);
                      prefsfour.setStringList("url", listfour ?? [gitHubUserModel[index].url.toString()]);
                      print(listfour);

                      String valuesfive = gitHubUserModel[index].nodeId.toString();
                      SharedPreferences prefsfive = await SharedPreferences.getInstance();
                      List<String>? listfive = prefsfive.getStringList("nodeId");
                      listfive?.add(valuesfive);
                      prefsfive.setStringList("nodeId", listfive ?? [gitHubUserModel[index].nodeId.toString()]);
                      print(listfive);

                      String valuessix = gitHubUserModel[index].gravatarId.toString();
                      SharedPreferences prefssix = await SharedPreferences.getInstance();
                      List<String>? listsix = prefssix.getStringList("gravatarId");
                      listsix?.add(valuessix);
                      prefssix.setStringList("gravatarId", listsix ?? [gitHubUserModel[index].gravatarId.toString()]);
                      print(listsix);

                      String valuesseven = gitHubUserModel[index].htmlUrl.toString();
                      SharedPreferences prefsseven = await SharedPreferences.getInstance();
                      List<String>? listseven = prefsseven.getStringList("htmlUrl");
                      listseven?.add(valuesseven);
                      prefsseven.setStringList("htmlUrl", listseven ?? [gitHubUserModel[index].htmlUrl.toString()]);
                      print(listseven);

                      String valueseight = gitHubUserModel[index].followersUrl.toString();
                      SharedPreferences prefseight = await SharedPreferences.getInstance();
                      List<String>? listeight = prefseight.getStringList("followersUrl");
                      listeight?.add(valueseight);
                      prefseight.setStringList("followersUrl", listeight ?? [gitHubUserModel[index].followersUrl.toString()]);
                      print(listeight);

                      String valuesnine = gitHubUserModel[index].followingUrl.toString();
                      SharedPreferences prefsnine = await SharedPreferences.getInstance();
                      List<String>? listnine = prefsnine.getStringList("followingUrl");
                      listnine?.add(valuesnine);
                      prefsnine.setStringList("followingUrl", listnine ?? [gitHubUserModel[index].followingUrl.toString()]);
                      print(listnine);

                      String valuesten = gitHubUserModel[index].gistsUrl.toString();
                      SharedPreferences prefsten = await SharedPreferences.getInstance();
                      List<String>? listten = prefsten.getStringList("gistsUrl");
                      listten?.add(valuesten);
                      prefsten.setStringList("gistsUrl", listten ?? [gitHubUserModel[index].gistsUrl.toString()]);
                      print(listten);

                      String valueseleven = gitHubUserModel[index].starredUrl.toString();
                      SharedPreferences prefseleven = await SharedPreferences.getInstance();
                      List<String>? listeleven = prefseleven.getStringList("starredUrl");
                      listeleven?.add(valueseleven);
                      prefseleven.setStringList("starredUrl", listeleven ?? [gitHubUserModel[index].starredUrl.toString()]);
                      print(listeleven);

                      String valuestwelve = gitHubUserModel[index].subscriptionsUrl.toString();
                      SharedPreferences prefstwelve = await SharedPreferences.getInstance();
                      List<String>? listtwelve = prefstwelve.getStringList("subscriptionsUrl");
                      listtwelve?.add(valuestwelve);
                      prefstwelve.setStringList("subscriptionsUrl", listtwelve ?? [gitHubUserModel[index].subscriptionsUrl.toString()]);
                      print(listtwelve);

                      String valuesthirteen = gitHubUserModel[index].organizationsUrl.toString();
                      SharedPreferences prefsthirteen = await SharedPreferences.getInstance();
                      List<String>? listthirteen = prefsthirteen.getStringList("organizationsUrl");
                      listthirteen?.add(valuesthirteen);
                      prefsthirteen.setStringList("organizationsUrl", listthirteen ?? [gitHubUserModel[index].organizationsUrl.toString()]);
                      print(listthirteen);

                      String valuesfourteen = gitHubUserModel[index].reposUrl.toString();
                      SharedPreferences prefsfourteen = await SharedPreferences.getInstance();
                      List<String>? listfourteen = prefsfourteen.getStringList("reposUrl");
                      listfourteen?.add(valuesfourteen);
                      prefsfourteen.setStringList("reposUrl", listfourteen ?? [gitHubUserModel[index].reposUrl.toString()]);
                      print(listfourteen);

                      String valuesfifteen = gitHubUserModel[index].eventsUrl.toString();
                      SharedPreferences prefsfifteen = await SharedPreferences.getInstance();
                      List<String>? listfifteen = prefsfifteen.getStringList("eventsUrl");
                      listfifteen?.add(valuesfifteen);
                      prefsfifteen.setStringList("eventsUrl", listfifteen ?? [gitHubUserModel[index].eventsUrl.toString()]);
                      print(listfifteen);

                      String valuessixteen = gitHubUserModel[index].receivedEventsUrl.toString();
                      SharedPreferences prefssixteen = await SharedPreferences.getInstance();
                      List<String>? listsixteen = prefssixteen.getStringList("receivedEventsUrl");
                      listsixteen?.add(valuessixteen);
                      prefssixteen.setStringList("receivedEventsUrl", listsixteen ?? [gitHubUserModel[index].receivedEventsUrl.toString()]);
                      print(listsixteen);

                      String valuesseventeen = gitHubUserModel[index].type.toString();
                      SharedPreferences prefsseventeen = await SharedPreferences.getInstance();
                      List<String>? listseventeen = prefsseventeen.getStringList("type");
                      listseventeen?.add(valuesseventeen);
                      prefsseventeen.setStringList("type", listseventeen ?? [gitHubUserModel[index].type.toString()]);
                      print(listseventeen);

                      String valueseighteen = gitHubUserModel[index].siteAdmin.toString();
                      SharedPreferences prefseighteen = await SharedPreferences.getInstance();
                      List<String>? listeighteen = prefseighteen.getStringList("siteAdmin");
                      listeighteen?.add(valueseighteen);
                      prefseighteen.setStringList("siteAdmin", listeighteen ?? [gitHubUserModel[index].siteAdmin.toString()]);
                      print(listeighteen);
                        // _displayInputBottomSheet(true);
                },
                );
              }),
    );
  }

  Future getJsonData() async{
    var response=  await http.get(Uri.parse('https://api.github.com/users'));
    setState(() {
      isLoading = false;
      //data = json.decode(response.body);

      if(response.statusCode == 200){
         List res  = json.decode(response.body);
         gitHubUserModel = res.map((e) => GitHubUserModel.fromJson(e)).toList();
        print('DATA:::  ${gitHubUserModel.length}');
      }else{
        print('ERROR:: ${response.statusCode}');
      }


    });

  }
}

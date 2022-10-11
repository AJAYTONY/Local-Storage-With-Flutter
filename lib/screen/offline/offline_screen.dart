import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_offline_data_in_flutter/screen/offline/offline_details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipe_to/swipe_to.dart';
List<String>? id = [];
List<String>? login = [];
List<String>? avatarUrl = [];
List<String>? url = [];
List<String>? nodeId = [];
List<String>? gravatarId = [];
List<String>? htmlUrl = [];
List<String>? followersUrl = [];
List<String>? followingUrl = [];
List<String>? gistsUrl = [];
List<String>? starredUrl = [];
List<String>? subscriptionsUrl = [];
List<String>? organizationsUrl = [];
List<String>? reposUrl = [];
List<String>? eventsUrl = [];
List<String>? receivedEventsUrl = [];
List<String>? type = [];
List<String>? siteAdmin = [];


class OfflineScreen extends StatefulWidget {
  const OfflineScreen({Key? key}) : super(key: key);

  @override
  _OfflineScreenState createState() => _OfflineScreenState();
}

class _OfflineScreenState extends State<OfflineScreen> {
  @override
  void initState() {
    super.initState();
  _loadGitHubUsers();
  }
 _loadGitHubUsers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      id = prefs.getStringList("id");
    });
    SharedPreferences prefstwo = await SharedPreferences.getInstance();
    setState(() {
      login = prefstwo.getStringList("login");
    });
    SharedPreferences prefsthree = await SharedPreferences.getInstance();
    setState(() {
      avatarUrl = prefsthree.getStringList("avatarUrl");
    });
    SharedPreferences prefsfive = await SharedPreferences.getInstance();
    setState(() {
      nodeId= prefsfive.getStringList("nodeId");
    });

    SharedPreferences prefssix = await SharedPreferences.getInstance();
    setState(() {
      gravatarId = prefssix.getStringList("gravatarId");
    });

    SharedPreferences prefsseven = await SharedPreferences.getInstance();
    setState(() {
      htmlUrl= prefsseven.getStringList("htmlUrl");
    });

    SharedPreferences prefseight = await SharedPreferences.getInstance();
    setState(() {
      followersUrl= prefseight.getStringList("followersUrl");
    });

    SharedPreferences prefsnine = await SharedPreferences.getInstance();
    setState(() {
      followingUrl= prefsnine.getStringList("followingUrl");
    });

    SharedPreferences prefsten = await SharedPreferences.getInstance();
    setState(() {
      gistsUrl= prefsten.getStringList("gistsUrl");
    });

    SharedPreferences prefseleven = await SharedPreferences.getInstance();
    setState(() {
      starredUrl= prefseleven.getStringList("starredUrl");
    });

    SharedPreferences prefstwelve = await SharedPreferences.getInstance();
    setState(() {
      subscriptionsUrl= prefstwelve.getStringList("subscriptionsUrl");
    });

    SharedPreferences prefsthirteen = await SharedPreferences.getInstance();
    setState(() {
      organizationsUrl= prefsthirteen.getStringList("organizationsUrl", );
    });

    SharedPreferences prefsfourteen = await SharedPreferences.getInstance();
    setState(() {
      reposUrl= prefsfourteen.getStringList("reposUrl");
    });

    SharedPreferences prefsfifteen = await SharedPreferences.getInstance();
    setState(() {
      eventsUrl= prefsfifteen.getStringList("eventsUrl");
      });

    SharedPreferences prefssixteen = await SharedPreferences.getInstance();
    setState(() {
      receivedEventsUrl= prefssixteen.getStringList("receivedEventsUrl");
    });

    SharedPreferences prefsseventeen = await SharedPreferences.getInstance();
    setState(() {
      type= prefsseventeen.getStringList("type");
    });

    SharedPreferences prefseighteen = await SharedPreferences.getInstance();
    setState(() {
      siteAdmin= prefseighteen.getStringList("siteAdmin");
    });

    print("avurl:${avatarUrl}");
    SharedPreferences prefsfour = await SharedPreferences.getInstance();
    setState(() {
      url = prefsfour.getStringList("url");
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  Center(
        child:login!.length !=null?ListView.builder(
          itemCount:login!.length,
          itemBuilder: (context, index) {
            final items = login![index];
            return Dismissible(
              key:Key(items),
              onDismissed: (direction) async {
                // Remove the item from the data source.
                SharedPreferences prefs = await SharedPreferences.getInstance();
                id!.removeAt(index);
                prefs.setStringList("id", id!);

                SharedPreferences prefstwo = await SharedPreferences.getInstance();
                login!.removeAt(index);
                prefstwo.setStringList("login", login!);

                SharedPreferences prefsthree = await SharedPreferences.getInstance();
                avatarUrl!.removeAt(index);
                prefsthree.setStringList("avatarUrl", avatarUrl!);

                SharedPreferences prefsfour = await SharedPreferences.getInstance();
                url!.removeAt(index);
                prefsfour.setStringList("url", url!);

                SharedPreferences prefsfive = await SharedPreferences.getInstance();
                nodeId!.removeAt(index);
                prefsfive.setStringList("nodeId", nodeId!);

                SharedPreferences prefssix = await SharedPreferences.getInstance();
                gravatarId!.removeAt(index);
                prefssix.setStringList("gravatarId", gravatarId!);

                SharedPreferences prefsseven = await SharedPreferences.getInstance();
                htmlUrl!.removeAt(index);
                prefsseven.setStringList("htmlUrl", htmlUrl!);

                SharedPreferences prefseight = await SharedPreferences.getInstance();
                followersUrl!.removeAt(index);
                prefseight.setStringList("followersUrl", followersUrl!);

                SharedPreferences prefsnine = await SharedPreferences.getInstance();
                followingUrl!.removeAt(index);
                prefsnine.setStringList("followingUrl", followingUrl!);

                SharedPreferences prefsten = await SharedPreferences.getInstance();
                gistsUrl!.removeAt(index);
                prefsten.setStringList("gistsUrl", gistsUrl!);

                SharedPreferences prefseleven = await SharedPreferences.getInstance();
                starredUrl!.removeAt(index);
                prefseleven.setStringList("starredUrl", starredUrl!);

                SharedPreferences prefstwelve = await SharedPreferences.getInstance();
                subscriptionsUrl!.removeAt(index);
                prefstwelve.setStringList("subscriptionsUrl", subscriptionsUrl!);

                SharedPreferences prefsthirteen = await SharedPreferences.getInstance();
                organizationsUrl!.removeAt(index);
                prefsthirteen.setStringList("organizationsUrl", organizationsUrl!);

                SharedPreferences prefsfourteen = await SharedPreferences.getInstance();
                reposUrl!.removeAt(index);
                prefsfourteen.setStringList("reposUrl", reposUrl!);

                SharedPreferences prefsfifteen = await SharedPreferences.getInstance();
                eventsUrl!.removeAt(index);
                prefsfifteen.setStringList("eventsUrl", eventsUrl!);

                SharedPreferences prefssixteen = await SharedPreferences.getInstance();
                receivedEventsUrl!.removeAt(index);
                prefssixteen.setStringList("receivedEventsUrl", receivedEventsUrl!);

                SharedPreferences prefsseventeen = await SharedPreferences.getInstance();
                type!.removeAt(index);
                prefsseventeen.setStringList("type", type!);

                SharedPreferences prefseighteen = await SharedPreferences.getInstance();
                siteAdmin!.removeAt(index);
                prefseighteen.setStringList("siteAdmin", siteAdmin!);

                // Then show a snackbar.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('$items dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),
              child:ListTile(
                onTap: (){
                  debugPrint('${id}');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OfflineDetailsScreen(
                        idValue: id![index],loginValue:login![index],
                        avatarUrlValue:avatarUrl![index],urlValue:url![index],
                    nodeIdValue:nodeId![index], gravatarIdValue:gravatarId![index],
                    htmlUrlValue:htmlUrl![index],followersUrlValue:followersUrl![index],
                    followingUrlValue:followingUrl![index],gistsUrlValue:gistsUrl![index],
                    starredUrlValue:starredUrl![index],subscriptionsUrlValue:subscriptionsUrl![index],
                    organizationsUrlValue:organizationsUrl![index],reposUrlValue:reposUrl![index],
                    eventsUrlValue:eventsUrl![index],receivedEventsUrlValue:receivedEventsUrl![index],
                    typeValue:type![index],siteAdminValue:siteAdmin![index])));
                    // toastAlert(
                    //     message: '${gitHubUserModel[index].id}');
                  // toastAlert(
                  //     message: '${gitHubUserModel[index].id}');
                },
                leading: CircleAvatar(
                  radius: 30,
                  // backgroundImage: NetworkImage(data[index]['avatar_url']),
                  backgroundImage: NetworkImage(avatarUrl![index].toString())
                ),
                title: Text(login![index].toString(),
                  //data[index]['login'].toString().toUpperCase(),
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
                  subtitle: Text(url![index].toString(),
              //  data[index]['url'],
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300),
            ),
              ),
            );
          }):Center(child:Text("No Data")),
    ));
  }
}

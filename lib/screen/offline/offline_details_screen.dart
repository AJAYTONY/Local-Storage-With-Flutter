import 'package:flutter/material.dart';
import 'package:online_offline_data_in_flutter/model/github_user_model.dart';

class OfflineDetailsScreen extends StatelessWidget {


  // In the constructor, require a Todo.
  const OfflineDetailsScreen({super.key,  required this.idValue, required this.loginValue,
  required this.avatarUrlValue, required this.urlValue,
  required this.nodeIdValue,
  required this.gravatarIdValue,
  required this.followersUrlValue, required this.htmlUrlValue,
  required this.followingUrlValue, required this.gistsUrlValue,
  required this.starredUrlValue, required this.subscriptionsUrlValue,
  required this.organizationsUrlValue, required this.reposUrlValue,
  required this.receivedEventsUrlValue, required this.eventsUrlValue,
  required this.typeValue, required this.siteAdminValue, });

  // Declare a field that holds the Todo.
  final String idValue;
  final String loginValue;
  final String avatarUrlValue;
  final String urlValue;
  final String nodeIdValue;
  final String gravatarIdValue;
  final String followersUrlValue;
  final String htmlUrlValue;
  final String followingUrlValue;
  final String gistsUrlValue;
  final String starredUrlValue;
  final String subscriptionsUrlValue;
  final String organizationsUrlValue;
  final String reposUrlValue;
  final String receivedEventsUrlValue;
  final String eventsUrlValue;
  final String typeValue;
  final String siteAdminValue;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
      ),
      body: SingleChildScrollView(child:Column(children:[
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(avatarUrlValue),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Id:"),Flexible(child: Text(idValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Login:"),Flexible(child: Text(loginValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Node Id:"),Flexible(child: Text(nodeIdValue))]),
        ),
        gravatarIdValue != ""?Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Gravatar Id:"),Flexible(child: Text(gravatarIdValue))]),
        ):Container(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("URL:"),Flexible(child: Text(urlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Html URL:"),Flexible(child: Text(htmlUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Followers URL:"),Flexible(child: Text(followersUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Following URL:"),Flexible(child: Text(followingUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Gists URL:"),Flexible(child: Text(gistsUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Starred URL:"),Flexible(child: Text(starredUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Subscriptions URL:"),Flexible(child: Text(subscriptionsUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Organizations URL:"),Flexible(child: Text(organizationsUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Repos URL:"),Flexible(child: Text(reposUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Events URL:"),Flexible(child: Text(eventsUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Received Events URL:"),Flexible(child: Text(receivedEventsUrlValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Type:"),Flexible(child: Text(typeValue))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Site Admin:"),Flexible(child: Text(siteAdminValue))]),
          )],)),
    );
  }
}
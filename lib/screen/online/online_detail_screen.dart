import 'package:flutter/material.dart';
import 'package:online_offline_data_in_flutter/model/github_user_model.dart';

class OnlineDetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const OnlineDetailScreen({super.key,  required this.gitHubUsers});

  // Declare a field that holds the Todo.
  final GitHubUserModel gitHubUsers;

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
        backgroundImage: NetworkImage(gitHubUsers.avatarUrl.toString()),
      ),
        Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children:[Text("Id:"),Flexible(child: Text(gitHubUsers.id.toString()))]),
      ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Login:"),Flexible(child: Text(gitHubUsers.login.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Node Id:"),Flexible(child: Text(gitHubUsers.nodeId.toString()))]),
        ),
        gitHubUsers.gravatarId != ""?Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Gravatar Id:"),Flexible(child: Text(gitHubUsers.gravatarId.toString()))]),
        ):Container(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("URL:"),Flexible(child: Text(gitHubUsers.url.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Html URL:"),Flexible(child: Text(gitHubUsers.htmlUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Followers URL:"),Flexible(child: Text(gitHubUsers.followersUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Following URL:"),Flexible(child: Text(gitHubUsers.followingUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Gists URL:"),Flexible(child: Text(gitHubUsers.gistsUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Starred URL:"),Flexible(child: Text(gitHubUsers.starredUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Subscriptions URL:"),Flexible(child: Text(gitHubUsers.subscriptionsUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Organizations URL:"),Flexible(child: Text(gitHubUsers.organizationsUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Repos URL:"),Flexible(child: Text(gitHubUsers.reposUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Events URL:"),Flexible(child: Text(gitHubUsers.eventsUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Received Events URL:"),Flexible(child: Text(gitHubUsers.receivedEventsUrl.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Type:"),Flexible(child: Text(gitHubUsers.type.toString()))]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children:[Text("Site Admin:"),Flexible(child: Text(gitHubUsers.siteAdmin.toString()))]),
        )])),
    );
  }
}
import 'package:facebook_ui/utils/constants/facebook_constants.dart';
import 'package:facebook_ui/widgets/post_view.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';
import '../widgets/story_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue.shade600,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.camera_alt,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 5),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/user_5.jpeg"),
                        radius: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: "What's on your mind?",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Live",
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          width: 0,
                          indent: 0,
                          endIndent: 0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Photo",
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          width: 0,
                          indent: 0,
                          endIndent: 0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.redAccent,
                              ),
                              Text(
                                "Check in",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
            ),
            child: const StoryView(),
          ),
          const SizedBox(
            height: 5,
          ),
          for (Post post in postList) PostView(post: post),
        ],
      ),
    );
  }
}

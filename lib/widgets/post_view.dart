import 'package:flutter/material.dart';

import '../models/post.dart';

class PostView extends StatelessWidget {
  final Post post;

  const PostView({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        post.userImg,
                      ),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.username,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(post.date),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(post.text),
          ),
          Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(post.postImgs[0]),
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage(post.postImgs[1]),
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 12,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: const Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 12,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "${post.likes} K",
                      style: const TextStyle(color: Colors.blueGrey),
                    ),
                  ],
                ),
                Text(
                  "${post.comments} Comments",
                  style: const TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

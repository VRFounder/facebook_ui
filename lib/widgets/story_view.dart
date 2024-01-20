import 'package:facebook_ui/utils/constants/facebook_constants.dart';
import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  const StoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.4,
        child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(
                      storyList[index].storyImg,
                    ),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.darken),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 15,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  storyList[index].userImg),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                    ),
                    Text(
                      storyList[index].username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

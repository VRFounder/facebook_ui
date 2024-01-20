import '../../models/post.dart';
import '../../models/story.dart';

List<Story> storyList = [
  Story(
    username: "Zara",
    storyImg: "assets/images/story_1.jpeg",
    userImg: "assets/images/user_1.jpeg",
  ),
  Story(
    username: "Farhan",
    storyImg: "assets/images/story_2.jpeg",
    userImg: "assets/images/user_2.jpeg",
  ),
  Story(
    username: "Carl",
    storyImg: "assets/images/story_3.jpeg",
    userImg: "assets/images/user_3.jpeg",
  ),
  Story(
    username: "Vera",
    storyImg: "assets/images/story_4.jpeg",
    userImg: "assets/images/user_4.jpeg",
  ),
  Story(
    username: "Nika",
    storyImg: "assets/images/story_5.jpeg",
    userImg: "assets/images/user_5.jpeg",
  ),
];

List<Post> postList = [
  Post(
    username: "Zara",
    postImgs: [
      "assets/images/feed_1.jpeg",
      "assets/images/feed_5.jpeg",
    ],
    userImg: "assets/images/user_1.jpeg",
    text: "All Lorem Ipsum generators on the internet tend to repeat predefined.",
    date: "1 hr ago",
    likes: 2.5,
    comments: 100,
  ),
  Post(
    username: "Farhan",
    postImgs: [
      "assets/images/feed_2.jpeg",
      "assets/images/feed_3.jpeg",
    ],
    userImg: "assets/images/user_2.jpeg",
    text: "All Lorem Ipsum generators on the internet tend to repeat predefined.",
    date: "1 hr ago",
    likes: 3.5,
    comments: 120,
  ),
  Post(
    username: "Carl",
    postImgs: [
      "assets/images/feed_4.jpeg",
      "assets/images/feed_1.jpeg",
    ],
    userImg: "assets/images/user_3.jpeg",
    text: "All Lorem Ipsum generators on the internet tend to repeat predefined.",
    date: "4 hr ago",
    likes: 4.5,
    comments: 400,
  ),
  Post(
    username: "Vera",
    postImgs: [
      "assets/images/feed_5.jpeg",
      "assets/images/feed_4.jpeg",
    ],
    userImg: "assets/images/user_4.jpeg",
    text: "All Lorem Ipsum generators on the internet tend to repeat predefined.",
    date: "3 hr ago",
    likes: 30,
    comments: 8,
  ),
  Post(
    username: "Nika",
    postImgs: [
      "assets/images/feed_3.jpeg",
      "assets/images/feed_2.jpeg",
    ],
    userImg: "assets/images/user_5.jpeg",
    text: "All Lorem Ipsum generators on the internet tend to repeat predefined.",
    date: "2 hr ago",
    likes: 2.3,
    comments: 123,
  ),
];

import 'package:flutter/material.dart';
import 'package:instalayout/pages/components/bubble_stories.dart';
import 'package:instalayout/pages/components/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  List people = ['John', 'kelly', 'jane', 'Ann', 'Lucy', 'Marion', 'Harry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Instagram", style: TextStyle(color: Colors.black)),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
        ],
      )),
      body: Column(
        // stories
        children: [
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),
          UserPosts(
            name: "james bond",
          ),
        ],
      ),
    );
  }
}

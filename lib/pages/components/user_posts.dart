import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[500]),
              ),
              SizedBox(width: 10),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[500],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                Text("Liked by ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("and "),
                Text("Others", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            )),
        Padding(
            padding: const EdgeInsets.only(left: 16, top: 4),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "satoshinakamoto",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'i love this part, so cool man'),
            ]))),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_facebook/models/models.dart';
import 'package:flutter_application_facebook/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              // Centrar botones
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => print('live'),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red
                  ),
                  label: Text(
                    'Live',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    ),
                ),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () => print('Photo'),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green
                  ),
                  label: Text(
                    'Photo',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    ),
                ),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () => print('Room'),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent
                  ),
                  label: Text(
                    'Room',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

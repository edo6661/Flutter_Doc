import 'package:flutter/material.dart';

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 500,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8,
        runSpacing: 4,
        children: [
          Chip(
            // avatar: CircleAvatar(
            //     backgroundImage: AssetImage('assets/images/dash_chef.png')),
            label: Text('Chef Dash'),
          ),
          Chip(
            // avatar: CircleAvatar(
            //     backgroundImage:
            //         AssetImage('assets/images/dash_firefighter.png')),
            label: Text('Firefighter Dash'),
          ),
          Chip(
            // avatar: CircleAvatar(
            //     backgroundImage: AssetImage('assets/images/dash_musician.png')),
            label: Text('Musician Dash'),
          ),
          Chip(
            // avatar: CircleAvatar(
            //     backgroundImage: AssetImage('assets/images/dash_artist.png')),
            label: Text('Artist Dash'),
          ),
        ],
      ),
    );
  }
}

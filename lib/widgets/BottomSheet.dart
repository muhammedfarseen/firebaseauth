import 'package:flutter/material.dart';

abstract class BottomSheetButton extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text('Accessibility'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('Account Balance'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
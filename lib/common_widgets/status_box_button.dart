import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';

class StatusBoxButtons extends StatelessWidget {
  const StatusBoxButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      // Childerns
      children: [
        // Status Button 1
        Expanded(
          child: MyButton.statusButton(
            title: "Active Subs",
            value: "12",
            statusColor: TColor.secondary,
            onPressed: () {},
          ),
        ),

        SizedBox(width: 12),

        // Status Button 2
        Expanded(
          child: MyButton.statusButton(
            title: "Highest Subs",
            value: "\$19.99",
            statusColor: TColor.primary10,
            onPressed: () {},
          ),
        ),

        SizedBox(width: 12),

        // Status Button 3\
        Expanded(
          child: MyButton.statusButton(
            title: "Lowest Subs",
            value: "\$5.99",
            statusColor: TColor.secondaryG,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

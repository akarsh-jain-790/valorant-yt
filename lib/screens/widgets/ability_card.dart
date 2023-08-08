import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valorant_yt/helper/color_sys.dart';
import 'package:valorant_yt/helper/strings.dart';

class AbilityCard extends StatelessWidget {
  const AbilityCard(
      {super.key,
      required this.abilityImage,
      required this.abilityName,
      required this.abilityDescription});

  final String abilityImage;
  final String abilityName;
  final String abilityDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorSys.ktertiary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(abilityImage),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                abilityName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 16.0),
              ),
              Text(
                Strings.abilityDescription1,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 16.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

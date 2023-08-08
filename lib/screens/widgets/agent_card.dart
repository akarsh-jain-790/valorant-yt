import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AgentCard extends StatelessWidget {
  const AgentCard(
      {super.key,
      required this.agent,
      required this.agentBg,
      required this.agentType,
      required this.agentName});

  final String agent;
  final String agentBg;
  final String agentName;
  final String agentType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(agentBg),
        Positioned(
          top: -40,
          right: 30,
          child: Image.asset(agent),
        ),
        Positioned(
          bottom: 50,
          left: 40,
          child: Text(agentName, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Positioned(
          bottom: 30,
          left: 40,
          child: Text(agentType, style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}

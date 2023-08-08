import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:valorant_yt/helper/strings.dart';

class AgentHeader extends StatelessWidget {
  const AgentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Positioned(
          left: -80.0,
          top: -80.0,
          child: ClipRRect(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Image.asset(
                'assets/images/omen.png',
                height: 600.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(103, 105, 202, 0.5),
                Color.fromRGBO(103, 105, 202, 0.5),
              ],
            ),
          ),
        ),
        Image.asset('assets/agents/omen/omen.png'),
        Positioned(
          bottom: 50,
          left: 40,
          child: Text(Strings.agentName,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        Positioned(
          bottom: 20,
          left: 60,
          child: Container(
            color: const Color.fromRGBO(31, 32, 82, 1),
            width: 100,
            height: 30,
            child: Center(
              child: Text(Strings.agentType,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 16.0)),
            ),
          ),
        ),
      ],
    );
  }
}

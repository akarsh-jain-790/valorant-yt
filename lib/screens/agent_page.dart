import 'package:flutter/material.dart';
import 'package:valorant_yt/helper/strings.dart';
import 'package:valorant_yt/screens/widgets/ability_card.dart';
import 'package:valorant_yt/screens/widgets/agent_header.dart';

class AgentPage extends StatelessWidget {
  const AgentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 200.0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        flexibleSpace: const AgentHeader(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "● ${Strings.biographyTitleText}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    Strings.biographyText,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "● ${Strings.specialAbilitiesText}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AbilityCard(
                    abilityImage: "assets/agents/omen/shrouded.svg",
                    abilityName: Strings.ability1,
                    abilityDescription: Strings.abilityDescription1,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AbilityCard(
                    abilityImage: "assets/agents/omen/paranoia.svg",
                    abilityName: Strings.ability2,
                    abilityDescription: Strings.abilityDescription2,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AbilityCard(
                    abilityImage: "assets/agents/omen/paranio2.svg",
                    abilityName: Strings.ability3,
                    abilityDescription: Strings.abilityDescription3,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AbilityCard(
                    abilityImage: "assets/agents/omen/paranio2.svg",
                    abilityName: Strings.ability4,
                    abilityDescription: Strings.abilityDescription4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

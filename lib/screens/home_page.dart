import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valorant_yt/helper/color_sys.dart';
import 'package:valorant_yt/helper/strings.dart';
import 'package:valorant_yt/screens/agent_page.dart';
import 'package:valorant_yt/screens/widgets/agent_Card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          SvgPicture.asset(
            "assets/logo/menu.svg",
            height: 30.0,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/logo/valorant.svg',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              Strings.titleText,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            TabBar(
              indicatorColor: ColorSys.ksecondary,
              tabs: [
                Tab(
                  child: Text(Strings.tabsText1,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: ColorSys.ksecondary)),
                ),
                Tab(
                  child: Text(Strings.tabsText2,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Tab(
                  child: Text(Strings.tabsText3,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            const SizedBox(
              height: 60.0,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 40.0,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AgentPage())),
                    child: AgentCard(
                      agent: 'assets/images/omen.png',
                      agentBg: 'assets/images/omen_bg.svg',
                      agentName: Strings.agent1,
                      agentType: Strings.agentType1,
                    ),
                  ),
                  AgentCard(
                    agent: 'assets/images/phonix.png',
                    agentBg: 'assets/images/phonix_bg.svg',
                    agentName: Strings.agent2,
                    agentType: Strings.agentType2,
                  ),
                  AgentCard(
                    agent: 'assets/images/raze.png',
                    agentBg: 'assets/images/raze_bg.svg',
                    agentName: Strings.agent3,
                    agentType: Strings.agentType3,
                  ),
                  AgentCard(
                    agent: 'assets/images/viper.png',
                    agentBg: 'assets/images/viper_bg.svg',
                    agentName: Strings.agent4,
                    agentType: Strings.agentType4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

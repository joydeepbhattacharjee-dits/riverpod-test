import 'package:flutter/material.dart';

class SliverPageLayout extends StatefulWidget {
  const SliverPageLayout({super.key});

  @override
  State<SliverPageLayout> createState() => _SliverPageLayoutState();
}

class _SliverPageLayoutState extends State<SliverPageLayout> {
  // Sample data for grid items
  final List<GridItem> gridItems = [
    GridItem(title: 'Dashboard', imagePath: 'assets/images/dashboard.png'),
    GridItem(title: 'Reports', imagePath: 'assets/images/reports.png'),
    GridItem(title: 'Analytics', imagePath: 'assets/images/analytics.png'),
    GridItem(title: 'Settings', imagePath: 'assets/images/settings.png'),
    GridItem(title: 'Profile', imagePath: 'assets/images/profile.png'),
    GridItem(title: 'Support', imagePath: 'assets/images/support.png'),
  ];

  // Expandable cards data and state
  final List<ExpandableCardData> cardData = [
    ExpandableCardData(
      icon: Icons.account_balance_wallet,
      label: 'Financial Overview',
      isExpanded: false,
    ),
    ExpandableCardData(
      icon: Icons.bar_chart,
      label: 'Performance Metrics',
      isExpanded: false,
    ),
    ExpandableCardData(
      icon: Icons.notifications,
      label: 'Notifications & Alerts',
      isExpanded: false,
    ),
    ExpandableCardData(
      icon: Icons.security,
      label: 'Security Settings',
      isExpanded: false,
    ),
    ExpandableCardData(
      icon: Icons.help_outline,
      label: 'Help & Support',
      isExpanded: false,
    ),
    ExpandableCardData(
      icon: Icons.info_outline,
      label: 'About & Information',
      isExpanded: false,
    ),
  ];

  // Create list of expandable card widgets
  List<Widget> get expandableCards {
    return cardData.map((data) => ExpandableCard(
      icon: data.icon,
      label: data.label,
      isExpanded: data.isExpanded,
      onTap: () {
        setState(() {
          data.isExpanded = !data.isExpanded;
        });
      },
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Persistent Header
          const SliverPersistentHeader(
            pinned: true,
            delegate: CustomHeaderDelegate(),
          ),

          // Grid View Section
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => GridItemCard(item: gridItems[index]),
                childCount: gridItems.length,
              ),
            ),
          ),

          // Section Title
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Text(
                'Quick Actions',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),

          // Expandable Cards List
          SliverList(
            delegate: SliverChildListDelegate(expandableCards),
          ),

          // Bottom spacing
          const SliverToBoxAdapter(
            child: SizedBox(height: 80),
          ),
        ],
      ),
    );
  }
}

// Data models
class GridItem {
  final String title;
  final String imagePath;

  GridItem({required this.title, required this.imagePath});
}

class ExpandableCardData {
  final IconData icon;
  final String label;
  bool isExpanded;

  ExpandableCardData({
    required this.icon,
    required this.label,
    required this.isExpanded,
  });
}

// Custom Header Delegate
class CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  const CustomHeaderDelegate();

  @override
  double get minExtent => 80.0;

  @override
  double get maxExtent => 120.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset / maxExtent;
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue[600]!,
            Colors.blue[400]!,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 28 - (progress * 4),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24 - (progress * 4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (progress < 0.7)
                      Text(
                        'Manage your account',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

// Grid Item Card Widget
class GridItemCard extends StatelessWidget {
  final GridItem item;

  const GridItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Handle grid item tap
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image placeholder (since we can't load actual assets)
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getIconForTitle(item.title),
                    color: Colors.blue[600],
                    size: 24,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIconForTitle(String title) {
    switch (title.toLowerCase()) {
      case 'dashboard':
        return Icons.dashboard;
      case 'reports':
        return Icons.assessment;
      case 'analytics':
        return Icons.analytics;
      case 'settings':
        return Icons.settings;
      case 'profile':
        return Icons.person;
      case 'support':
        return Icons.support;
      default:
        return Icons.apps;
    }
  }
}

// Expandable Card Widget
class ExpandableCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isExpanded;
  final VoidCallback onTap;

  const ExpandableCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.grey[600],
                    size: 24,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: isExpanded ? 0.5 : 0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AutoRescuePage extends StatelessWidget {
  static const route = '/auto-rescue';

  const AutoRescuePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: cs.primary,
        title: Text("Auto-Rescue Tasks", style: TextStyle(color: cs.onPrimary)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              /// HEADER CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFB98CE3), Color(0xFF7B3FE4)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Auto-Rescue Tasks",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Manage and reschedule your tasks efficiently.",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// TASK LIST
              Expanded(
                child: ListView(
                  children: const [
                    _TaskCard(
                      title: "Task 1",
                      due: "Due: Today, 5:00 PM",
                      status: "Pending",
                    ),
                    _TaskCard(
                      title: "Task 2",
                      due: "Due: Today, 5:00 PM",
                      status: "In Progress",
                    ),
                    _TaskCard(
                      title: "Task 3",
                      due: "Due: Today, 5:00 PM",
                      status: "Completed",
                    ),
                    _TaskCard(
                      title: "Task 4",
                      due: "Due: Today, 5:00 PM",
                      status: "Pending",
                    ),
                    _TaskCard(
                      title: "Task 5",
                      due: "Due: Today, 5:00 PM",
                      status: "In Progress",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              /// BOTTOM BUTTONS
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB98CE3),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Reschedule All Pending"),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFB98CE3)),
                        foregroundColor: const Color(0xFFB98CE3),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Export Report"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// TASK CARD
class _TaskCard extends StatelessWidget {
  final String title;
  final String due;
  final String status;

  const _TaskCard({
    required this.title,
    required this.due,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// LEFT SIDE
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(due, style: const TextStyle(color: Colors.grey)),
            ],
          ),

          /// STATUS BADGE
          _StatusBadge(status: status),
        ],
      ),
    );
  }
}

/// STATUS BADGE
class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    Color bgColor;

    switch (status) {
      case "Pending":
        bgColor = const Color(0xFFB98CE3);
        break;
      case "In Progress":
        bgColor = const Color(0xFF7B3FE4);
        break;
      case "Completed":
        bgColor = const Color(0xFF4C9A7F);
        break;
      default:
        bgColor = Colors.grey;
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

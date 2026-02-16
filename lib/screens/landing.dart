import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  static const route = '/';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Icon(Icons.task_alt, size: 100, color: cs.primary),
              const SizedBox(height: 20),
              Text(
                'Stress-Free Task Management',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Organize your tasks, set reminders, and collaborate effortlessly.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              FilledButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: const Text('Get Started'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text('Login'),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _FeatureIcon(icon: Icons.checklist, label: 'Organize'),
                  _FeatureIcon(icon: Icons.notifications, label: 'Remind'),
                  _FeatureIcon(icon: Icons.group, label: 'Collaborate'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _FeatureIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 8),
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
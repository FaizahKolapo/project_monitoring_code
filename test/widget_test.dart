// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project_monitoring/main.dart';
import 'package:project_monitoring/project_mon.dart';

void main() {
  testWidgets('MyWidget has a title', (tester) async {
    //await tester.pumpWidget(const Widget('Project Monitoring App', 'M'));
    await tester.pumpWidget(MyApp());

    // Create the Finders.
    final titleFinder = find.text('Project Monitoring App');
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('Our app has specified rules', (tester) async {
    //await tester.pumpWidget(const Widget('Project Monitoring App', 'M'));
    await tester.pumpWidget(MyApp());

    // Create the Finders.
    final ruleFinder = find.text(
        'Rules: Please read all the risk assessments below and enter your votes for each bin. You should see your risk values displayed shortly after!!');
    expect(ruleFinder, findsOneWidget);
  });

  testWidgets('All the metrics descriptions and titles are intact',
      (tester) async {
    //await tester.pumpWidget(const Widget('Project Monitoring App', 'M'));
    await tester.pumpWidget(MyApp());

    // Create the Finders.
    final metrics1 = find.text('Total number of defects');
    final metrics2 = find
        .text('Minimal risk: Number of defects are well below where expected');
    final metrics3 =
        find.text('Low risk: Number of defects are about where we expect');
    final metrics4 = find.text(
        'Reasonable risk: Number of defects are slightly above what is expected');
    final metrics5 =
        find.text('High risk: Number of defects greatly exceed expectations');
    //final metrics6 = find.text('Low score');
    //final metrics7 = find.text('Med score');
    //final metrics8 = find.text('High score');
    //final metrics9 = find.text('Total votes');
    //final metrics10 = find.text('Total risk');
    final metrics11 = find.text('Schedule feasibility');
    final metrics12 = find.text(
        'Minimal risk: Project can be easily completed in scheduled time');
    final metrics13 = find.text(
        'Low risk: Project can be completed in scheduled time with strict management');
    final metrics14 = find.text(
        'Reasonable risk: Project may be completed in scheduled time, but will require crunch');
    final metrics15 = find.text(
        'High risk: Project is unlikely to be completed in scheduled time');
    final metrics16 = find.text('Design Progress');
    final metrics17 = find.text('Minimal risk: The design is complete');
    final metrics18 = find.text(
        'Low risk: Design is mostly complete and no major problems are noted');
    final metrics19 = find.text(
        'Reasonable risk: Design is incomplete and one major problem is noted with strategies to mitigate');
    final metrics20 = find.text(
        'High risk: Design is incomplete, has several major problems with no plans to mitigate');
    final metrics21 = find.text('Implementation Progress');
    final metrics22 =
        find.text('Minimal risk: The implementation is ahead of schedule');
    final metrics23 = find.text('Low risk: The implementation is on schedule');
    final metrics24 = find.text(
        'Reasonable risk: The implementation is slightly behind schedule');
    final metrics25 =
        find.text('High risk: The implementation is far behind schedule');
    final metrics26 = find.text('Integration Progress');
    final metrics27 = find
        .text('Minimal risk: No major integration problems have been detected');
    final metrics28 =
        find.text('Low risk: Minor integration problems have been detected');
    final metrics29 = find.text(
        'Reasonable risk: At least one major integration problem, with plans to remedy');
    final metrics30 =
        find.text('High risk: Multiple problems with no plans to remedy');

    expect(metrics1, findsOneWidget);
    expect(metrics2, findsOneWidget);
    expect(metrics3, findsOneWidget);
    expect(metrics4, findsOneWidget);
    expect(metrics5, findsOneWidget);
    //expect(metrics6, findsOneWidget);
    //expect(metrics7, findsOneWidget);
    //expect(metrics8, findsOneWidget);
    //expect(metrics9, findsOneWidget);
    //expect(metrics10, findsOneWidget);
    expect(metrics11, findsOneWidget);
    expect(metrics12, findsOneWidget);
    expect(metrics13, findsOneWidget);
    expect(metrics14, findsOneWidget);
    expect(metrics15, findsOneWidget);
    expect(metrics16, findsOneWidget);
    expect(metrics17, findsOneWidget);
    expect(metrics18, findsOneWidget);
    expect(metrics19, findsOneWidget);
    expect(metrics20, findsOneWidget);
    expect(metrics21, findsOneWidget);
    expect(metrics22, findsOneWidget);
    expect(metrics23, findsOneWidget);
    expect(metrics24, findsOneWidget);
    expect(metrics25, findsOneWidget);
    expect(metrics26, findsOneWidget);
    expect(metrics27, findsOneWidget);
    expect(metrics28, findsOneWidget);
    expect(metrics29, findsOneWidget);
    expect(metrics30, findsOneWidget);
  });

  testWidgets('finds the Card instance', (tester) async {
    const childWidget = Card();

    // Provide the childWidget to the Container.
    await tester.pumpWidget(Column(children: [childWidget]));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });

  testWidgets('finds a Center instance', (tester) async {
    const childWidget = Center();

    // Provide the childWidget to the Container.
    await tester.pumpWidget(Container(child: childWidget));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });

  testWidgets('finds a Padding instance that has a child container',
      (tester) async {
    const childWidget = Padding(padding: EdgeInsets.fromLTRB(35, 15, 0, 0));

    // Provide the childWidget to the Container.
    await tester.pumpWidget(Container(child: childWidget));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });

  testWidgets('finds the paddings with a padding as a child', (tester) async {
    const childWidget = Padding(padding: EdgeInsets.fromLTRB(35, 15, 0, 0));

    // Provide the childWidget to the Container.
    await tester.pumpWidget(
        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0), child: childWidget));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });

  testWidgets('finds the Single Scroll view instance', (tester) async {
    const childWidget = SingleChildScrollView();

    // Provide the childWidget to the Container.
    await tester.pumpWidget(Column(children: [childWidget]));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}

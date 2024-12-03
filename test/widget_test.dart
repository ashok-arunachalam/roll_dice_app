import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:roll_dice_app/dice_roller.dart';

void main() {
  testWidgets('Dice image changes on button press', (WidgetTester tester) async {

    //Arrange
    // Build the widget
    await tester.pumpWidget(const MaterialApp(home: DiceRoller()));

    // Find the button
    final buttonFinder = find.byType(ElevatedButton);
    expect(buttonFinder, findsOneWidget);

    //Act
    // Simulate a button press
    await tester.tap(buttonFinder);

    // Verify the dice image has changed
    final oldDiceImage = find.byType(Image);

    // Simulate a button press
    await tester.tap(buttonFinder);

    final newDiceImage = find.byType(Image);

    //Assert
    expect(oldDiceImage, isNot(newDiceImage));
  });
}
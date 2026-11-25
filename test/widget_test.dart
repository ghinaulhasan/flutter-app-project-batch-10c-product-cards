import 'package:flutter_test/flutter_test.dart';
import 'package:my_first_app/main.dart';

void main() {
  testWidgets('shows ten products with a top bar and no bottom navbar', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(products, hasLength(10));
    expect(find.text('My Shop'), findsOneWidget);
    expect(find.text('Home'), findsNothing);
    expect(find.text('Shop'), findsNothing);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Rs. 4500'), findsOneWidget);
    expect(find.text('Add to Cart'), findsWidgets);

    await tester.tap(find.text('Add to Cart').first);
    await tester.pump();

    expect(find.text('Cloud Runner Shoes added to cart'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Уменьшить фото и PDF',
debugShowCheckedModeBanner: false,
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
useMaterial3: true,
),
home: const HomePage(),
);
}
}

class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Главная'),
centerTitle: true,
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(
onPressed: () {
// هذا الأمر ينقل المستخدم إلى الشاشة الجديدة
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const CompressScreen()),
);
},
style: ElevatedButton.styleFrom(minimumSize: const Size(200, 60)),
child: const Text('Сжать фото', style: TextStyle(fontSize: 18)),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(minimumSize: const Size(200, 60)),
child: const Text('В PDF', style: TextStyle(fontSize: 18)),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(minimumSize: const Size(200, 60)),
child: const Text('Убрать фон', style: TextStyle(fontSize: 18)),
),
],
),
),
);
}
}

// --- الشاشة الجديدة لضغط الصور ---
class CompressScreen extends StatelessWidget {
const CompressScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Сжать фото'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(Icons.image, size: 100, color: Colors.grey),
const SizedBox(height: 20),
const Text('Здесь будет выбор фото', style: TextStyle(fontSize: 20)),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
// لاحقاً سنضع هنا كود اختيار الصورة
},
child: const Text('Выбрать из галереи'),
),
],
),
),
);
}
}

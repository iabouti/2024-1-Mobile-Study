import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        scaffoldBackgroundColor: Colors.white, // Set scaffold background color to white
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDSC 모바일 스터디"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Change app bar background color to white
        title: Container(
          padding: EdgeInsets.only(left: 10), // Adjust padding to align with Container 1
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Pretendard', // Specify the font family name
              fontSize: 20.0, // Example font size
              fontWeight: FontWeight.bold, // Example font weight
              color: Colors.black, // Example text color
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Left justify the text "과제"
          children: [
            Divider( // Add a Divider widget
              height: 3, // Adjust the height of the Divider as needed
              color: Colors.grey, // Set the color of the Divider
            ),
            SizedBox(height: 20), // Add space between app bar and containers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Adjust horizontal padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '과제',
                    style: TextStyle(
                      fontFamily: 'Pretendard', // Specify the font family name
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 20), // Add space between "과제" and containers
                ],
              ),
            ),
            SizedBox(height: 20), // Add space between text and containers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Adjusted padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Add space between containers
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 120) / 2, // Calculate width for each container with padding
                    height: (MediaQuery.of(context).size.width - 120) / 2, // Make container square
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Make edges rounded
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Lighten the shadow
                          spreadRadius: 3, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 2), // Offset
                        ),
                      ],
                      color: Colors.white, // Set container color to flat white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '오늘의 과제',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.class_rounded,
                          size: 50,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20), // Add space between containers
                  Container(
                    width: (MediaQuery.of(context).size.width - 120) / 2, // Calculate width for each container with padding
                    height: (MediaQuery.of(context).size.width - 120) / 2, // Make container square
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Make edges rounded
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Lighten the shadow
                          spreadRadius: 3, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 2), // Offset
                        ),
                      ],
                      color: Colors.white, // Set container color to flat white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '수행한 과제',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.collections_bookmark_rounded,
                          size: 50,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add space between '나의 수행도' and Calendar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Adjusted padding
              child: Text(
                '나의 수행도',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10), // Add space between '나의 수행도' and Calendar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Adjusted padding
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                  ),
                  daysOfWeekVisible: false, // Hide days of the week
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between '나의 수행도' and Calendar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Adjusted padding
              child: Text(
                '나의 다짐',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Adjusted padding
              child: Text(
                '시험기간 끝나고 더 열심히 해야지ㅠ',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

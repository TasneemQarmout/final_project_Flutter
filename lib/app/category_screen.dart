import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Category',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: 8,
              // تحديد عدد العناصر
              shrinkWrap: true,
              // يجبر GridView على أخذ حجم المحتوى فقط
              physics: NeverScrollableScrollPhysics(),
              // يمنع التمرير داخل GridView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2, // لضبط حجم العناصر
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage(
                        index == 0
                            ? 'images/Avocado.jpg'
                            : index == 1
                                ? 'images/Avocado.jpg'
                                : index == 2
                                    ? 'images/Avocado.jpg'
                                    : 'images/Avocado.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

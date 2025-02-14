import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text('Rafatul Islam',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Spacer(),
                  Image.asset('images/profilePicture.png')
                ],
              ),
              SizedBox(height: 23,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight:162
                ),
                child: PageView.builder(
                  itemCount: 2,
                  controller: PageController(viewportFraction: 0.85),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return
                      Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          image: AssetImage(
                            index == 0 ? 'images/p1.jpg' : 'images/p2.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child:Stack(
                        children: [
                          Positioned(
                            bottom: 20,
                            left: 15,
                            right: 15,
                            child: Text(
                              index == 0 ? "Recomended \n Recipe Today" : "Fresh \n Fruits Delivery",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black45,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },),
              ),
              SizedBox(height: 30),
              Row(children: [
                Text('Categories',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward),)
              ],),
        
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 80),
                child: GridView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 100,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(18),
        
                      ),
                      child: Center( // توسيط الصورة داخل الحاوية
                        child: SizedBox(
                          width: 40, // تصغير عرض الصورة
                          height: 40, // تصغير ارتفاع الصورة
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              index == 0 ? 'images/category1.png' :
                              index == 1 ? 'images/category2.png' :
                              index == 2 ? 'images/category3.png' :
                              'images/category4.png',
                              fit: BoxFit.cover, // ضبط مظهر الصورة داخل الحجم المحدد
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
        
              Row(children: [
                Text('Trending Deals',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward),)
              ],),
        
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 440),
                child: GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(18),
        
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 150,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              index == 0 ? 'images/Avocado.jpg' :
                              index == 1 ? 'images/Avocado.jpg' :
                              index == 2 ? 'images/Avocado.jpg' :
                              'images/Avocado.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {
                    //TODO
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                    minimumSize: Size(double.infinity,62),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'More',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

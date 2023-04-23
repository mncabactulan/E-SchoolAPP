import 'package:flutter/material.dart';


// ignore: camel_case_types
class homePage extends StatelessWidget {
  homePage({super.key});
 List catNames =[
   "Category",
   'Classes',
   'Course',
   'Activities',
   'Assignment',
   'Announcement',
 ];

 List<Color> catColors = [
   const Color(0x66E7AF8A),
   const Color(0x9956DCDC),
   const Color(0xccac8bec),
   const Color(0xfff8f465),
   const Color(0xccd75454),
   const Color(0xff57f6d5),
 ];

 List<Icon> catIcons = [
   const Icon(Icons.category, color: Colors.white, size: 30),
   const Icon(Icons.book, color: Colors.white, size: 30),
   const Icon(color: Colors.white, Icons.pending_actions, size: 30),
   const Icon(Icons.login, color: Colors.white, size: 30),
   const Icon(Icons.assignment, color: Colors.white, size: 30),
   const Icon(Icons.announcement, color: Colors.white, size: 30),
 ];
 List imgList =[
   'Mobile Programming',
   'Advanced Java',
   'Social Professional Issues',
   'System Architecture',
   'Business Process Outsourcing',
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color(0x99099aed),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Student",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "    Search here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
            GridView.builder(
              itemCount: catNames.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: catColors[index],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: catIcons[index],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      catNames[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    )
                  ],
                );
              },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height -50 -25)/ (4 *240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return  InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                    ),
                  );
                },

                ),
          ],
          ),
          )
        ],
      ),
    );
  }
}
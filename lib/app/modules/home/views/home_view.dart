import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<String> imageList = [
    "assets/images/iklan.jpg",
    "assets/images/iklan2.jpg",
    "assets/images/iklan3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF3C8629),
          toolbarHeight: 70,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextField(
              onTap: ()=> Get.toNamed(Routes.ALL_PRODUCT),
              enabled: false,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                  label: Text(
                    "Cari layanan, makanan, & tujuan",
                    overflow: TextOverflow.ellipsis,
                  )),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  width: 55,
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/uzi.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: Get.width,
                  height: Get.height * 0.13,
                  decoration: BoxDecoration(
                      color: Color(0xFF37809E),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Get.height * 0.1,
                                width: Get.width * 0.4,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "gopay",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "coins",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Rp 0",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Saldo Sebelumnya",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_upward_outlined,
                                          color: Color(0xFF37809E),
                                        )),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Bayar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          color: Color(0xFF37809E),
                                        )),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Top Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.explore,
                                          color: Color(0xFF37809E),
                                        )),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Eksplor",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFE5F9D4),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/motor.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "KuyRide",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFE5F9D4),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/car.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuyCar", style: TextStyle(fontSize: 13))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFFAE3E2),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/food.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuyFood", style: TextStyle(fontSize: 13))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFE5F9D4),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/box.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuySend", style: TextStyle(fontSize: 13))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFFAE3E2),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/cart.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuyMart", style: TextStyle(fontSize: 13))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFD8F2F9),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/phone.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuyTagihan", style: TextStyle(fontSize: 13))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFFAE3E2),
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/club.svg",
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("KuyClub", style: TextStyle(fontSize: 13))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.grid_view_rounded,
                                size: 30,
                              )),
                        ),
                        SizedBox(height: 8),
                        Text("Lainnya", style: TextStyle(fontSize: 13))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: Get.width,
                  height: Get.height * 0.08,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [Colors.white, Color(0xFFEFF5F7)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/svg/star.svg"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("121 XP to your next treasure"),
                                SizedBox(height: 8),
                                Container(
                                  width: Get.width * 0.60,
                                  height: 4,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: Get.width * 0.60,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFBBBBBB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: Get.width * 0.3,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF3B862B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Center(child: Icon(Icons.arrow_forward_ios))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: Get.height * 0.1,
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Container(
                        width: Get.width * 0.50,
                        height: Get.height * 0.09,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "KuyFood Terdekat",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset("assets/svg/food.svg")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: Get.width * 0.50,
                        height: Get.height * 0.09,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Terlaris daerah mu",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.check_box,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: Get.width * 0.50,
                        height: Get.height * 0.09,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
                            const BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Rating Terburuk",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Cek yang menarik di KuyFood",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: imageList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rekomendasi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        onTap: ()=> Get.toNamed(Routes.ALL_PRODUCT),
                        child: Container(
                          height: 35,
                          width: 90,
                          color: Color(0xFFE5F9D4),
                          child: Center(
                              child: Text(
                            "Lihat semua",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3C8629),
                                fontSize: 13),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: StreamBuilder(
                      stream: controller.streamProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.active) {
                          var listrProduct = snapshot.data!.docs;
                          return LimitedBox(
                            maxHeight: Get.height * 0.35,
                            child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: listrProduct.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(
                                    left: 4, top: 12, right: 12, bottom: 12),
                                child: Container(
                                  width: Get.width * 0.5,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            child: Container(
                                                height: Get.height * 0.2,
                                                width: Get.width,
                                                child: Image.network(
                                                  "${(listrProduct[index].data() as Map<String, dynamic>)["image_food"]}",
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          "1.3km",
                                          style:
                                              TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, bottom: 8),
                                        child: Text(
                                          "${(listrProduct[index].data() as Map<String, dynamic>)["product_name"]}",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.deepOrangeAccent),
                                            SizedBox(width: 5),
                                            Text("4.8")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return CupertinoActivityIndicator();
                        }
                      })),
              const Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Belanja makin hemat 🤑",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    "Dapetin diskon dan harga spesialnya di KuyPedia\nsekarang sebelum kehabisan!"),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/iklan.jpg"),
                        ],
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 15, right: 15, bottom: 10),
                        child: Text("Pesen KuyFood lagi yuk!",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Text(
                            "Pakai Mode Hemat, ongkirnya PASTI cuma Rp5rb. Cobain disini 🎉"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/iklan3.jpg"),
                        ],
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 15, right: 15, bottom: 10),
                        child: Text("Diskon 75% kirim pakai KuySend Car",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Text(
                            "Makin irit kirim barang besar, pakai kode\nKUYSENDHEMAT, Klik disini!"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/iklan2.jpg"),
                        ],
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 15, right: 15, bottom: 10),
                        child: Text("Kenyang tapi tetap cuan!",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Text(
                            "Jangan lewatkan kesempatan dapetin promo\nspesial buat makan hemat seharian!"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

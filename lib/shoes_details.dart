import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:fast_color_picker/fast_color_picker.dart';
import 'package:flutter/material.dart';
import 'shoes_model.dart';
import 'package:lottie/lottie.dart';

class shoesDetails extends StatefulWidget {
  final ShoesModel shoesModel;
  const shoesDetails({Key? key, required this.shoesModel}) : super(key: key);

  @override
  State<shoesDetails> createState() => _shoesDetailsState();
}

class _shoesDetailsState extends State<shoesDetails> {
  final List<String> sizes = ["M", "L", "XL", "XXL"];
  String? selected_items = "M";

  Color _color = Colors.white;
  Color btncolor = Colors.brown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6E7D8),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          btncolor = Colors.red;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        size: 40,
                        color: btncolor,
                      ))),
              Hero(
                  tag: "${widget.shoesModel.id}",
                  child: Image(image: AssetImage(widget.shoesModel.image!))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                        iconEnabledColor: Colors.brown,
                        dropdownColor: Colors.brown,
                        value: selected_items,
                        items: sizes
                            .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        ))
                            .toList(),
                        onChanged: (item) => setState(() {
                          selected_items = item;
                        })),
                  ),
                  ElevatedButton(onPressed: (){
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false,
                      // false = user must tap button, true = tap outside dialog
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: Text("Your order will be delivered soon"),
                          content:Lottie.asset("lotti_file/rocket.json"),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Thank'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }, child:Text("Buy Now"),style: ElevatedButton.styleFrom(primary: Colors.brown),)


                ],
              ),
              FastColorPicker(
                selectedColor: _color,
                onColorSelected: (color) {
                  setState(() {
                    _color = color;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Description:",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            )),
                        Text(
                          widget.shoesModel.Description!,
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontFamily: "LobsterTwo"),
                        ),
                        Divider(
                          color: Colors.brown,
                          height: 10,
                          thickness: 4,
                          indent: 10,
                          endIndent: 5,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text("Price :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.shoesModel.price,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.brown),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.brown,
                                  )),
                              Text(widget.shoesModel.Rating.toString())
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RatingBar(
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star_border,
                          onRatingChanged: (value) => debugPrint('$value'),
                          filledColor: Colors.brown,
                          initialRating: 2.5,
                          maxRating: 5,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

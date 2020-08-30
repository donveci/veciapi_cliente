import 'package:flutter/material.dart';
import 'package:veciapi/src/models/categoriesModel.dart';
import 'package:veciapi/src/providers/categories_provider.dart';

String selectedStore = "Farmacias";

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final categoryProvider = new CategoriesProvider();
  List<CategoriesModel> categoriesM;
  List<String> tiendas = ["Farmacias", "Fruvers", "Miscelaneas", "Mens"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Tiendas",
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFFFCDD2),
                  borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categorias",
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                  itemCount: tiendas.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategorieTile(
                      tienda: tiendas[index],
                      isSelected: selectedStore == tiendas[index],
                      // context: this,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              /* child: ListView.builder(
                itemCount: categoriesM.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SpecialistTile(
                    nameCategory: categoriesM[index].nameCategory,
                    imageUrl: categoriesM[index].imageUrl,
                    noOfStore: categoriesM[index].noOfStore,
                    backColor: categoriesM[index].backgroundColor,
                  );
                },
              ),*/
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tenderos",
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            DoctorsTile()
          ],
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {
  final String nameCategory;
  //bool status;
  final String imageUrl;
  // final String description;
  final int noOfStore;
  final Color backColor;

  SpecialistTile(
      {@required this.nameCategory,
      @required this.imageUrl,
      @required this.noOfStore,
      @required this.backColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            nameCategory,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "$noOfStore Tenderos",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Image.asset(
            imageUrl,
            height: 160,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}

class CategorieTile extends StatefulWidget {
  final String tienda;
  final bool isSelected;
  _BodyState context;
  CategorieTile({
    this.tienda,
    this.isSelected, // this.context
  });

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

//infomracion basica del tendero
class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /* Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorsInfo()));*/
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFEEE0), borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/tienda.png",
              height: 50,
            ),
            SizedBox(
              width: 17,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefeni Albert",
                  style: TextStyle(color: Color(0xffFC9535), fontSize: 19),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Heart Speailist",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                  color: Color(0xFFE57373),
                  borderRadius: BorderRadius.circular(13)),
              child: Text(
                "Chat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//diseño circular de las tiendas
class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context.setState(() {
          selectedStore = widget.tienda;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
            color: widget.isSelected ? Color(0xFFEF9A9A) : Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          widget.tienda,
          style: TextStyle(
              color: widget.isSelected ? Color(0XFFFFEBEE) : Color(0xffA1A1A1)),
        ),
      ),
    );
  }
}

Widget _crearItem(CategoriesModel category) {
  return ListTile(
    title: Text('${category.description}'),
    subtitle: Text(category.id),
  );
}

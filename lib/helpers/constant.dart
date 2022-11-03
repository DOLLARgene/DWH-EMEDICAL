import 'package:emedical/models/slider_item.dart';

const montserratFamily = "Montserrat";

enum InputType { text, password }

const imgSlider1 = "assets/imgs/diagnotic.jpg";
const imgSlider2 = "assets/imgs/delivery.jpg";
const imgSlider3 = "assets/imgs/resultat.jpg";
const deliveryIll = "assets/imgs/deliveryLocation.svg";
const diagnostic2 = "assets/imgs/phonendoscope.svg";
const resultat = "assets/imgs/deliveryLocation.svg";
List<SliderItem> contentSlidersItems = [
  SliderItem(
      urlImage: imgSlider1,
      textContent:
          'Obtenez un diagnostic primale sur votre état de santé afin d etre redirigé vers une clinique adequate'),
  SliderItem(
      urlImage: imgSlider2,
      textContent:
          'Faites vous livrer depuis chez vous vos médicaments sans avoir a vous deplacer vers une pharmacie'),
  SliderItem(
      urlImage: imgSlider3,
      textContent:
          'Obtenez les resultat de vos analyse medical depuis chez vous'),
];

List<SliderItem> gridCardItem = [
  SliderItem(
    urlImage: diagnostic2,
    textContent: "Pre diagnostic",
  ),
  SliderItem(urlImage: deliveryIll, textContent: "Livraison"),
  SliderItem(urlImage: resultat, textContent: "Résultats"),
];

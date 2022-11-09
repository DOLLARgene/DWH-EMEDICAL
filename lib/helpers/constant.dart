import 'package:emedical/models/Deasise_cathegory.dart';
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

List<Desease> listMaladie = [
  Desease(desease: "Paludisme", id: 1, deseaseSymptom: [
    "Cephalées",
    "fièvre",
    "frissons",
    "vomissement",
    "douleurs musculaire"
  ]),
  Desease(desease: "Covid 19", id: 2, deseaseSymptom: [
    "toux",
    "fatigue",
    "yeux rouge et irrités"
        "fièvre",
    "perte de l'odorat",
    "maux de gorge",
    "douleurs musculaire",
    "essoufflement",
    "douleur au niveau de la fatigue",
    "coubatures",
    "diarhée"
  ]),
  Desease(desease: "Cancer", id: 1, deseaseSymptom: [
    "perte de poids inexpliquée",
    "fatigue",
    "Sueurs noctune",
    "vomissement",
    "perte d'appetit",
    "douleur nouvelle prolongé",
    "nausée",
    "vomissement",
    "Sang dans l'urine",
    "Sang dans le selle",
    "ganglion lymphatique"
  ]),
];

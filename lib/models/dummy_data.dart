import 'package:english_kids_app/models/category.dart';
import 'package:english_kids_app/models/type.dart';

const CATEGORIES_DUMMY_DATA = const [
  Category(
    id:"C1",
    title: "Animals",
    description: "",
    image: "ic_animals.jpg",
  ),
  Category(
    id:"C2",
    title: "Colours",
    description: "",
    image: "ic_colours.jpg",
  ),
  Category(
    id:"C3",
    title: "Fruits",
    description: "",
    image: "ic_fruits.jpg",
  ),
  Category(
    id:"C4",
    title: "Trees",
    description: "",
    image: "ic_trees.jpg",
  ),
  Category(
    id:"C5",
    title: "Vegetables",
    description: "",
    image: "ic_vegetables.jpg",
  ),
  Category(
    id:"C6",
    title: "Vehicles",
    description: "",
    image: "ic_vehicles.jpg",
  ),
];

const ANIMALS_DUMMY_DATA  = const [
  Type(
      id: 'DA1',
      name: 'Cat',
      description: 'The cat (Felis catus) is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family. A cat can either be a house cat, a farm cat or a feral cat; the latter ranges freely and avoids human contact.[5] Domestic cats are valued by humans for companionship and their ability to hunt rodents. About 60 cat breeds are recognized by  various cat registries.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://st.depositphotos.com/1967477/3715/v/950/depositphotos_37158639-stock-illustration-cute-cat-cartoon.jpg"
  ),
  Type(
      id: 'DA2',
      name: 'Cow',
      description: 'Cattle, or cows (female) and bulls (male), are the most common type of large domesticated ungulates. They are a prominent modern member of the subfamily Bovinae, are the most widespread species of the genus Bos, and are most commonly classified collectively as Bos taurus. Cattle are commonly raised as livestock for meat (beef or veal, see beef cattle), for milk (see dairy cattle), and for hides, which are used to make leather. They are used as riding animals and draft animals (oxen or bullocks, which pull carts, plows and other implements). Another product of cattle is their dung, which can be used to create manure or fuel. In some regions, such as parts of India, cattle have significant religious meaning. Cattle, mostly small breeds such as the Miniature Zebu, are also kept as pets.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://image.freepik.com/free-vector/cow-cartoon-isolated-white_43633-7182.jpg"
  ),
  Type(
      id: 'DA3',
      name: 'Elephant',
      description: 'Elephants are mammals of the family Elephantidae and the largest existing land animals. Three species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://image.shutterstock.com/image-vector/cartoon-happy-elephant-260nw-1081567502.jpg"
  ),
  Type(
      id: 'DA4',
      name: 'Giraffe',
      description: 'The giraffe (Giraffa) is an African artiodactyl mammal, the tallest living terrestrial animal and the largest ruminant. It is traditionally considered to be one species, Giraffa camelopardalis, with nine subspecies.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://image.freepik.com/free-vector/cute-giraffe-cartoon-isolated-white-background_29190-5612.jpg"
  ),
  Type(
      id: 'DA5',
      name: 'Horse',
      description: 'The horse (Equus ferus caballus) is one of two extant subspecies of Equus ferus. It is an odd-toed ungulate mammal belonging to the taxonomic family Equidae.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://img.freepik.com/free-vector/cartoon-happy-horse-white-background_29190-5068.jpg?size=338&ext=jpg&ga=GA1.2.88838459.1593993600"
  ),
  Type(
      id: 'DA6',
      name: 'Sheep',
      description: 'Sheep (Ovis aries) are quadrupedal, ruminant mammals typically kept as livestock. Like most ruminants, sheep are members of the order Artiodactyla, the even-toed ungulates. Although the name sheep applies to many species in the genus Ovis, in everyday usage it almost always refers to Ovis aries. Numbering a little over one billion, domestic sheep are also the most numerous species of sheep. An adult female is referred to as a ewe (/juː/), an intact male as a ram, occasionally a tup, a castrated male as a wether, and a young sheep as a lamb.',
      author: 'MuhFikriH',
      category: 'C1',
      image: "https://st.depositphotos.com/1967477/1958/v/600/depositphotos_19589951-stock-illustration-smiling-sheep-cartoon.jpg"
  ),
];

const COLOURS_DUMMY_DATA  = const [
  Type(
      id: 'DC1',
      name: 'Red',
      description: 'Varieties of the color red may differ in hue, chroma (also called saturation, intensity, or colorfulness) or lightness (or value, tone, or brightness), or in two or three of these qualities. Variations in value are also called tints and shades, a tint being a red or other hue mixed with white, a shade being mixed with black. A large selection of these various colors is shown below.',
      author: 'MuhFikriH',
      category: 'C2',
      image: "https://img.favpng.com/11/13/11/watercolor-cartoon-png-favpng-e52HkTnNuDQMKPpVLeGs5t0Cn.jpg"
  ),
];

const FRUITS_DUMMY_DATA  = const [
  Type(
      id: 'DF1',
      name: 'Papaya',
      description: 'The papaya from Carib via Spanish, papaw, or pawpaw is the plant Carica papaya, one of the 22 accepted species in the genus Carica of the family Caricaceae. Its origin is in the tropics of the Americas, perhaps from Central America and southern Mexico.',
      author: 'MuhFikriH',
      category: 'C3',
      image: "https://image.shutterstock.com/image-vector/mascot-illustration-featuring-papaya-doing-260nw-117583507.jpg"
  ),
];

const TREES_DUMMY_DATA  = const [
  Type(
      id: 'DT1',
      name: 'Banana tree',
      description: 'Banana tree is pohon',
      author: 'MuhFikriH',
      category: 'C4',
      image: "https://image.shutterstock.com/image-vector/banana-tree-on-white-background-260nw-483873865.jpg"
  ),
];

const VEGETABLES_DUMMY_DATA  = const [
  Type(
      id: 'DVT1',
      name: 'Pumpkin',
      description: 'A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and is most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp. The name is most commonly used for cultivars of Cucurbita pepo, but some cultivars of Cucurbita maxima, C. argyrosperma, and C. moschata with similar appearance are also sometimes called "pumpkin".',
      author: 'MuhFikriH',
      category: 'C5',
      image: "https://comps.canstockphoto.com/cartoon-pumpkin-character-laughing-clipart-vector_csp59987554.jpg"
  ),
];

const VEHICLES_DUMMY_DATA  = const [
  Type(
      id: 'DVH1',
      name: 'Car',
      description: 'A car (or automobile) is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four tires, and mainly transport people rather than goods',
      author: 'MuhFikriH',
      category: 'C6',
      image: "https://image.shutterstock.com/image-vector/funny-red-car-vector-illustration-260nw-98309222.jpg"
  ),
];
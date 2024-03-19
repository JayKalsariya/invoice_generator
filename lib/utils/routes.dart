class Routes {
  static const splash = '/';
  static const home = 'home';
  static const cart = 'cart';
  static const detail = 'detail';
  static const pdfPage = 'pdfPage';

  static List<dynamic> products = [
    {
      "id": 1,
      "name": "Dairy Milk",
      "flavour": "Milk Chocolate",
      "weight": "50 gm",
      "price": 150,
      "qty": 1,
      "image":
          "https://www.confectionerynews.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/confectionerynews.com/article/2021/09/22/cadbury-dairy-milk-packaging-set-to-be-made-with-recycled-plastic/12844210-1-eng-GB/Cadbury-Dairy-Milk-packaging-set-to-be-made-with-recycled-plastic.jpg"
    },
    {
      "id": 2,
      "name": "Fruit & Nut",
      "flavour": "Milk Chocolate with Raisins & Nuts",
      "weight": "50 gm",
      "price": 175,
      "qty": 1,
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/p/e/k/-original-imagjfgfg67mwyxz.jpeg?q=90&crop=false"
    },
    {
      "id": 3,
      "name": "Silk",
      "flavour": "Silk Chocolate",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image":
          "https://www.jiomart.com/images/product/original/rvyhsqjvq2/cadbury-dairy-milk-silk-heart-blush-150g-pack-of-4-product-images-orvyhsqjvq2-p597645957-0-202301171653.jpg?im=Resize=(420,420)"
    },
    {
      "id": 4,
      "name": "Dark Chocolate",
      "flavour": "Dark Chocolate",
      "weight": "70 gm",
      "price": 225,
      "qty": 1,
      "image": "https://m.media-amazon.com/images/I/81EAqP0D0+L.jpg"
    },
    {
      "id": 5,
      "name": "Oreo",
      "flavour": "Milk Chocolate with Oreo Biscuits",
      "weight": "45 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://handletheheat.com/wp-content/uploads/2011/08/homemade-oreos-recipe-SQUARE.jpg"
    },
    {
      "id": 6,
      "name": "Crispello",
      "flavour": "Milk Chocolate with Crisped Rice",
      "weight": "35 gm",
      "price": 125,
      "qty": 1,
      "image":
          "https://www.celebratebigday.com/wp-content/uploads/2021/02/Dairy-Milk-Crispello-Gift-Pack-1.jpg"
    },
    {
      "id": 7,
      "name": "Bournville",
      "flavour": "Dark Chocolate",
      "weight": "80 gm",
      "price": 250,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/719nhK7q2NL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 8,
      "name": "Caramello",
      "flavour": "Milk Chocolate with Caramel",
      "weight": "50 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://coldkart.com/cdn/shop/products/IFFCO_0072_Caramello-Stickless-Pack_3D_580x.jpg?v=1529572542"
    },
    {
      "id": 9,
      "name": "Wholenut",
      "flavour": "Milk Chocolate with Whole Nuts",
      "weight": "55 gm",
      "price": 210,
      "qty": 1,
      "image":
          "https://i.etsystatic.com/18533787/r/il/07ad2d/5353657084/il_1080xN.5353657084_omwr.jpg"
    },
    {
      "id": 10,
      "name": "Marvellous Creations",
      "flavour": "Milk Chocolate with Various Fillings",
      "weight": "65 gm",
      "price": 230,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/81pptjv-RtL._AC_UF894,1000_QL80_.jpg"
    },
    {
      "id": 11,
      "name": "Dream",
      "flavour": "White Chocolate",
      "weight": "40 gm",
      "price": 175,
      "qty": 1,
      "image":
          "https://static3.webx.pk/files/18781/Images/dream-chocolate-01-18781-681821-091222021336186.jpg"
    },
    {
      "id": 12,
      "name": "Turkish Delight",
      "flavour": "Milk Chocolate with Turkish Delight Jelly",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image": "https://m.media-amazon.com/images/I/61oMpT70PWL.jpg"
    },
    {
      "id": 13,
      "name": "Flake",
      "flavour": "Flake Chocolate",
      "weight": "30 gm",
      "price": 120,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/81yQFtQ6QWL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 14,
      "name": "Picnic",
      "flavour": "Milk Chocolate with Nuts, Caramel, Rice Crisps",
      "weight": "50 gm",
      "price": 190,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/51nVWh5IOOL._AC_UF894,1000_QL80_.jpg"
    },
    {
      "id": 15,
      "name": "Boost",
      "flavour": "Milk Chocolate with Biscuit & Caramel",
      "weight": "45 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/l2z26q80/chocolate/l/r/1/136-boost-milk-chocolate-with-caramel-biscuit-energy-4-pack-1-original-image73bxjvxyd4j.jpeg?q=20&crop=false"
    },
    {
      "id": 16,
      "name": "Time Out",
      "flavour": "Wafer & Caramel Milk Chocolate",
      "weight": "40 gm",
      "price": 150,
      "qty": 1,
      "image": "https://m.media-amazon.com/images/I/81-aScLfllL.jpg"
    },
    {
      "id": 17,
      "name": "Fuse",
      "flavour": "Milk Chocolate with Nuts, Caramel, Crisped Rice",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2023/2/FI/NY/DN/144328445/cadburys-fuse.jpg"
    },
    {
      "id": 18,
      "name": "Nutties",
      "flavour": "Milk Chocolate with Nuts & Raisins",
      "weight": "50 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://neelamfoodlandmumbai.com/cdn/shop/products/IMG_0995_1024x1024.jpg?v=1651835897"
    },
    {
      "id": 19,
      "name": "5 Star",
      "flavour": "Milk Chocolate with Caramel & Nougat",
      "weight": "35 gm",
      "price": 125,
      "qty": 1,
      "image":
          "https://neelamfoodlandmumbai.com/cdn/shop/products/IMG_8921_7a94ddee-6052-4bb0-87b3-df1b846f1db7_1024x1024.jpg?v=1674557029"
    },
    {
      "id": 20,
      "name": "Gems",
      "flavour": "Milk Chocolate Coated Gems",
      "weight": "25 gm",
      "price": 100,
      "qty": 1,
      "image": "https://i.ebayimg.com/images/g/AskAAOSwoBNk~VOm/s-l1200.webp"
    },
    {
      "id": 21,
      "name": "Mini Fingers",
      "flavour": "Milk Chocolate Mini Finger Bars",
      "weight": "20 gm",
      "price": 75,
      "qty": 1,
      "image":
          "https://www.bestwaywholesale.co.uk/img/products/1000/2/7622210817532.jpg"
    },
    {
      "id": 22,
      "name": "Buttons",
      "flavour": "Milk Chocolate Buttons",
      "weight": "30 gm",
      "price": 110,
      "qty": 1,
      "image":
          "https://sweettreebybrowns.co.uk/wp-content/uploads/2018/10/Chocolate-Buttons-680x400.jpg"
    },
    {
      "id": 23,
      "name": "Caramelicious",
      "flavour": "Caramel Chocolate",
      "weight": "40 gm",
      "price": 130,
      "qty": 1,
      "image":
          "https://hips.hearstapps.com/hmg-prod/images/the-cheesecake-factory-chocolate-caramelicious-cheesecake-made-with-snickers-social-1594063833.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*"
    },
    {
      "id": 24,
      "name": "Daim",
      "flavour": "Milk Chocolate with Daim Pieces",
      "weight": "30 gm",
      "price": 120,
      "qty": 1,
      "image":
          "https://images-cdn.ubuy.ae/64eba21783522f64b1072142-cadbury-dairy-milk-daim-120g.jpg"
    },
    {
      "id": 25,
      "name": "Milk Tray",
      "flavour": "Assorted Milk Chocolates",
      "weight": "100 gm",
      "price": 350,
      "qty": 1,
      "image": "https://d3fa68hw0m2vcc.cloudfront.net/469/238040762.jpeg"
    },
    {
      "id": 26,
      "name": "Crispy Crunch",
      "flavour": "Crispy Chocolate",
      "weight": "50 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://www.shutterstock.com/image-illustration/cracked-chocolate-bar-caramel-crispy-600nw-1192417084.jpg"
    },
    {
      "id": 27,
      "name": "Bubbly",
      "flavour": "Bubbly Milk Chocolate",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image":
          "https://www.pngkey.com/png/full/98-985329_picture-of-cadbury-dairy-milk-silk-bubbly-chocolate.png"
    },
    {
      "id": 28,
      "name": "Twirl",
      "flavour": "Milk Chocolate Twirl",
      "weight": "40 gm",
      "price": 170,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/710zAn3r+VL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 29,
      "name": "Silk Bubbly",
      "flavour": "Milk Chocolate Bubbly",
      "weight": "60 gm",
      "price": 210,
      "qty": 1,
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/z/8/o/-original-imagxe8ydje2yugc.jpeg?q=20"
    },
    {
      "id": 30,
      "name": "Temptations",
      "flavour": "Assorted Flavours",
      "weight": "72 gm",
      "price": 220,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/61rl2sjBb+L._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 31,
      "name": "Choclairs Gold",
      "flavour": "Caramel Filled Chocolate Candies",
      "weight": "130 gm",
      "price": 300,
      "qty": 1,
      "image": "https://m.media-amazon.com/images/I/61isy7ImN6L.jpg"
    },
    {
      "id": 32,
      "name": "Dairy Milk Caramel",
      "flavour": "Milk Chocolate with Caramel",
      "weight": "60 gm",
      "price": 190,
      "qty": 1,
      "image":
          "https://www.shutterstock.com/image-photo/stockport-united-kingdom-january-26th-600nw-2417614861.jpg"
    },
    {
      "id": 33,
      "name": "Silk Oreo",
      "flavour": "Milk Chocolate with Oreo",
      "weight": "60 gm",
      "price": 210,
      "qty": 1,
      "image": "https://etimg.etb2bimg.com/photo/56417364.cms"
    },
    {
      "id": 34,
      "name": "Perk",
      "flavour": "Chocolate Wafer Bar",
      "weight": "25 gm",
      "price": 50,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/61C0u3zPZML._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 35,
      "name": "Bubbly Mini",
      "flavour": "Milk Chocolate Bubbly Mini",
      "weight": "20 gm",
      "price": 30,
      "qty": 1,
      "image":
          "https://www.bigbasket.com/media/uploads/p/xxl/40238472-2_4-cadbury-dairy-milk-silk-bubbly-bubblegum-chocolate-bar-with-flavoured-centre.jpg"
    },
    {
      "id": 36,
      "name": "Crunch",
      "flavour": "Chocolate Crispies",
      "weight": "35 gm",
      "price": 70,
      "qty": 1,
      "image":
          "https://upload.wikimedia.org/wikipedia/en/f/f3/Nestle-crunch-small.jpg"
    },
    {
      "id": 37,
      "name": "Cadbury Almonds",
      "flavour": "Milk Chocolate with Almonds",
      "weight": "60 gm",
      "price": 180,
      "qty": 1,
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/9/3/j/-original-imagwdhghhwtkmey.jpeg?q=90&crop=false"
    },
    {
      "id": 38,
      "name": "Eclairs",
      "flavour": "Chocolate Filled Candies",
      "weight": "5 gm",
      "price": 10,
      "qty": 1,
      "image":
          "https://thumbs.dreamstime.com/b/bangalore-karnataka-india-apr-single-campco-eclairs-milk-mellow-chocolate-candy-isolated-yellow-cloth-background-179261688.jpg"
    },
    {
      "id": 39,
      "name": "Perk Crisp",
      "flavour": "Chocolate Wafer Bar",
      "weight": "30 gm",
      "price": 60,
      "qty": 1,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7NK7crDd7pUQ0lSOyoBJ_2FI4C1oRojbWaQ&usqp=CAU"
    },
    {
      "id": 40,
      "name": "5 Star 3D",
      "flavour": "Chocolate with Caramel & Nougat",
      "weight": "40 gm",
      "price": 100,
      "qty": 1,
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2023/2/VG/HV/OS/144328445/5star3d-b-300719-500x500.jpg"
    },
    {
      "id": 41,
      "name": "Silk Oreo Red Velvet",
      "flavour": "Milk Chocolate with Oreo Red Velvet",
      "weight": "60 gm",
      "price": 220,
      "qty": 1,
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/g/a/q/-original-imagwmk9bf7rchzs.jpeg?q=90&crop=false"
    },
    {
      "id": 42,
      "name": "Silk Hazelnut",
      "flavour": "Milk Chocolate with Hazelnut",
      "weight": "60 gm",
      "price": 230,
      "qty": 1,
      "image":
          "https://i.pinimg.com/originals/cf/20/82/cf2082581af828f566bd9b3e10f8e2fe.jpg"
    },
    {
      "id": 43,
      "name": "Bournvita Biscuits",
      "flavour": "Chocolate Cream Biscuits",
      "weight": "120 gm",
      "price": 50,
      "qty": 1,
      "image":
          "https://m.media-amazon.com/images/I/61p98rpBPrL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "id": 44,
      "name": "Fuse Milkrage",
      "flavour": "Milk Chocolate with Nuts, Caramel, Crisped Rice",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image":
          "https://i.pinimg.com/originals/ae/53/fb/ae53fbc7e09be2e74e4e2604fd7a9384.png"
    },
    {
      "id": 45,
      "name": "Fuse Berrylicious",
      "flavour": "Milk Chocolate with Berry Flavoured Jellies",
      "weight": "60 gm",
      "price": 200,
      "qty": 1,
      "image":
          "https://w7.pngwing.com/pngs/976/860/png-transparent-chocolate-bars-chocolate-bar-white-chocolate-dark-chocolate-candy-choco-food-chocolate-syrup-cocoa-bean-thumbnail.png"
    },
    {
      "id": 46,
      "name": "Silk Hazelnut Dark",
      "flavour": "Dark Chocolate with Hazelnut",
      "weight": "60 gm",
      "price": 240,
      "qty": 1,
      "image":
          "https://backoffice.cadburygifting.in/media/catalog/product/v/a/valentine-potli_2-silk-_1.png"
    },
    {
      "id": 47,
      "name": "Dairy Milk Lickables",
      "flavour": "Milk Chocolate with Strawberry Creme & Oreo Bits",
      "weight": "20 gm",
      "price": 45,
      "qty": 1,
      "image": "https://m.media-amazon.com/images/I/718hM1xFfQL.jpg"
    },
    {
      "id": 48,
      "name": "Silk Hazelnut Swirl",
      "flavour": "Milk Chocolate with Hazelnut Swirls",
      "weight": "60 gm",
      "price": 230,
      "qty": 1,
      "image":
          "https://www.confectionerynews.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/confectionerynews.com/article/2021/04/22/satiate-the-senses-cadbury-india-unveils-limited-edition-flavors/13434051-1-eng-GB/Satiate-the-senses-Cadbury-India-unveils-limited-edition-flavors.jpg"
    },
    {
      "id": 49,
      "name": "Dairy Milk Marvelous Creations",
      "flavour": "Milk Chocolate with Jellies, Gems & Popping Candy",
      "weight": "35 gm",
      "price": 90,
      "qty": 1,
      "image":
          "https://images-na.ssl-images-amazon.com/images/I/71VcIgAInOL._AC_SY450_.jpg"
    },
    {
      "id": 50,
      "name": "5 Star 3D Crunch",
      "flavour": "Chocolate with Caramel & Nougat",
      "weight": "35 gm",
      "price": 100,
      "qty": 1,
      "image":
          "https://images-na.ssl-images-amazon.com/images/I/81t7uKogjCL._SL1500_.jpg"
    }
  ];
}

List<Map<String, dynamic>> cartList = [];

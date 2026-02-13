import '../models/category.dart';
import '../models/food_item.dart';

final List<Category> kCategories = [
  Category(
    id: 'starter',
    name: 'Starter',
    items: const [
      FoodItem(
        id: 'soup',
        name: 'Soup',
        price: 80,
        imageUrl:
            'https://mytastytouch.com/wp-content/uploads/2024/11/Autumn-Vegetable-Soup-2.jpg',
      ),
      FoodItem(
        id: 'chicken_tikka',
        name: 'Chicken Tikka',
        price: 120,
        imageUrl: 'https://bing.com/th?id=OSK.e2e32c6140523a7ca3ea4f9047c4b204',
      ),
      FoodItem(
        id: 'lamb_tikka',
        name: 'Lamb Tikka Starter',
        price: 120,
        imageUrl:
            'https://greatcurryrecipes.net/wp-content/uploads/2014/04/ntlam3.jpg',
      ),
      FoodItem(
        id: 'chicken_65',
        name: 'Chicken 65',
        price: 120,
        imageUrl:
            'https://recipesofhome.com/wp-content/uploads/2020/08/chicken-65-recipe.jpg',
      ),
      FoodItem(
        id: 'onion_salad',
        name: 'Onion Salad',
        price: 120,
        imageUrl:
            'https://theyummybowl.com/wp-content/uploads/cucumber-tomato-onion-salad-8-720x1080.jpg',
      ),
      FoodItem(
        id: 'paneer_65',
        name: 'Paneer 65',
        price: 120,
        imageUrl:
            'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/06/paneer-65-recipe.jpg',
      ),
    ],
  ),
  Category(
    id: 'main_course',
    name: 'Main Course',
    items: const [
      FoodItem(
        id: 'meals',
        name: 'Meals',
        price: 150,
        imageUrl: 'https://images3.alphacoders.com/807/thumb-1920-807704.jpg',
      ),
      FoodItem(
        id: 'chapathi',
        name: 'Chapathi',
        price: 60,
        imageUrl:
            'https://tse1.mm.bing.net/th/id/OIP.T_T6GUWKNMc1rPRIWaaNkQAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
      ),
      FoodItem(
        id: 'porotta',
        name: 'Porotta',
        price: 50,
        imageUrl:
            'https://tse4.mm.bing.net/th/id/OIP.rkBuSvKOGDbUZdbt-Q_A7wHaEt?rs=1&pid=ImgDetMain&o=7&rm=3',
      ),
      FoodItem(
        id: 'plain_rice',
        name: 'Plain Rice',
        price: 60,
        imageUrl:
            'https://www.thespruceeats.com/thmb/q1dDuglrsE5XbmlqVt6ZkQYPfVw=/4288x2848/filters:fill(auto,1)/how-to-make-basic-white-rice-2355883-10-5b0da96eba6177003622896e.jpg',
      ),
      FoodItem(
        id: 'egg_rice',
        name: 'Egg Rice',
        price: 50,
        imageUrl:
            'https://myfoodstory.com/wp-content/uploads/2020/02/Egg-Fried-Rice-3.jpg',
      ),
      FoodItem(
        id: 'plain_naan',
        name: 'Plain Naan',
        price: 60,
        imageUrl:
            'https://as1.ftcdn.net/v2/jpg/07/75/50/02/1000_F_775500235_pRRdjoJjJrfxCvpgwKe90KyxMFlizfXy.jpg',
      ),
      FoodItem(
        id: 'kulcha',
        name: 'Kulcha',
        price: 50,
        imageUrl:
            'https://www.chefkunalkapur.com/wp-content/uploads/2021/05/Tawa-Kulcha-scaled.jpg?v=1620921059',
      ),
      FoodItem(
        id: 'keema_naan',
        name: 'Keema Naan',
        price: 60,
        imageUrl:
            'https://www.teaforturmeric.com/wp-content/uploads/2024/08/Keema-Naan-10.jpg',
      ),
      FoodItem(
        id: 'cheese_naan',
        name: 'Cheese Naan',
        price: 50,
        imageUrl:
            'https://www.sanjanafeasts.co.uk/wp-content/uploads/2021/07/Bullet-Cheese-Naan-683x1024.jpg',
      ),
    ],
  ),
  Category(
    id: 'biriyani',
    name: 'Biriyani',
    items: const [
      FoodItem(
        id: 'chicken_biriyani',
        name: 'Chicken Biriyani',
        price: 180,
        imageUrl:
            'https://static.vecteezy.com/system/resources/previews/040/703/949/non_2x/ai-generated-royal-feast-master-the-art-of-chicken-biryani-at-home-generative-ai-photo.jpg',
      ),
      FoodItem(
        id: 'veg_biriyani',
        name: 'Veg Biriyani',
        price: 160,
        imageUrl:
            'https://genv.org/wp-content/uploads/2023/02/17-Vegetable-Biryani.jpg',
      ),
      FoodItem(
        id: 'lamb_biriyani',
        name: 'Lamb Biriyani',
        price: 180,
        imageUrl:
            'https://paattiskitchen.com/wp-content/uploads/2023/03/kmc_20230323_230721.jpg',
      ),
      FoodItem(
        id: 'egg_biriyani',
        name: 'Egg Biriyani',
        price: 160,
        imageUrl:
            'https://spicecravings.com/wp-content/uploads/2020/10/Egg-Biryani-Featured-1.jpg',
      ),
    ],
  ),
  Category(
    id: 'drinks',
    name: 'Drinks',
    items: const [
      FoodItem(
        id: 'cola',
        name: 'Cola',
        price: 40,
        imageUrl:
            'https://mir-s3-cdn-cf.behance.net/project_modules/disp/4f6e6d34349889.56cd9d230eb10.jpg',
      ),
      FoodItem(
        id: 'pepsi',
        name: 'Pepsi',
        price: 40,
        imageUrl:
            'https://images.pexels.com/photos/17461398/pexels-photo-17461398.jpeg?cs=srgb&dl=pexels-sahil-captures-424973882-17461398.jpg&fm=jpg',
      ),
      FoodItem(
        id: 'juice',
        name: 'Juice',
        price: 60,
        imageUrl:
            'https://media.istockphoto.com/photos/fresh-juice-picture-id487402642?k=6&m=487402642&s=612x612&w=0&h=ks8LhX6hOl1BI7joSx09gwfM61VWQxc2_jVjNgesSoU=',
      ),

      FoodItem(
        id: 'sprite_can',
        name: 'Sprite Can',
        price: 60,
        imageUrl:
            'https://preview.redd.it/commercial-core-dump-v0-24ibenn6unjc1.jpg?width=736&format=pjpg&auto=webp&s=f2e2b9daa860ca7e6cc955bf96ecde2608a8990b',
      ),
    ],
  ),
];

class Travel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;

  Travel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price,
  });
}

List<Travel> travelList = [
  Travel(
    name: 'New York',
    location: 'US',
    image: 'assets/images/New York.jpg',
    distance: '7',
    temp: '30',
    rating: '5',
    discription:
        'discriptiondiscriptiondiscriptiondiscriptiondiscriptiondiscriiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiptiondiscriptiondiscriptioniptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondi',
    price: '3000',
  ),
  Travel(
    name: 'China',
    location: 'CH',
    image: 'assets/images/China.jpg',
    distance: '8',
    temp: '28',
    rating: '4.5',
    discription:
        'discriptiondiscriptiondiscriptiondiscriptiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiondiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiscriptiondiscriptiondiscriptiondiscription',
    price: '2500',
  ),
  Travel(
    name: 'Tehran',
    location: 'IR',
    image: 'assets/images/Tehran.jpg',
    distance: '5',
    temp: '35',
    rating: '4.8',
    discription:
        'discriptiondiscriptiondiscriptiondiscriptiondisiptiondiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondicriptiondiscriptiondiscriptiondiscription',
    price: '1000',
  ),
  Travel(
    name: 'Paris',
    location: 'FA',
    image: 'assets/images/Paris.jpg',
    distance: '9',
    temp: '32',
    rating: '4.7',
    discription:
        'discriptiondiscriptiondiscriptiondiscriptiiptiondiiptiondiiptiondiiptiondiiptiondiiptioiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondiiptiondindiiptiondiiptiondiondiscriptiondiscriptiondiscriptiondiscription',
    price: '3200',
  ),
];

// class BookModel {
//   final String title;
//   final String author;
//   final String? price;
//   final String rating;
//   final String numberOfRating;
//   final String image;

//   BookModel({
//     required this.title,
//     required this.author,
//     this.price,
//     required this.rating,
//     required this.numberOfRating,
//     required this.image,
//   });

//   factory BookModel.fromJson(jsonData) {
//     return BookModel(
//         title: jsonData['items']['volumeInfo']['title'],
//         author: jsonData['items']['volumeInfo']['authors'][0],
//         price: jsonData['items']['saleInfo']['listPrice']['amount'],
//         rating: jsonData['items']['volumeInfo']['averageRating'],
//         numberOfRating: jsonData['items']['volumeInfo']['ratingsCount'],
//         image: jsonData['items']['volumeInfo']['imageLinks']['smallThumbnail']);
//   }
// }

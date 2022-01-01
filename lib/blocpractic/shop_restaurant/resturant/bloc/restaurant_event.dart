abstract class RestaurantEvent{}

class FetchData extends RestaurantEvent{
  final String accesstoken;
  FetchData(this.accesstoken);
}
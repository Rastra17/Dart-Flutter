void main(List<String> args) {
  Map cityCountry = {
    "Nepal": "Kathmandu",
    "India": "Delhi",
    "USA": "Washington",
    "UK": "London",
  };
  print(cityCountry);

  Map CityCountry = Map<String, String>();

  CityCountry["New York"] = "USA";
  CityCountry["London"] = "UK";
  CityCountry["Paris"] = "France";
  CityCountry["Berlin"] = "Germany";
  print(CityCountry);

  Map Citycountry = Map<String, dynamic>();

  Citycountry["New York"] = "USA";
  Citycountry["London"] = "UK";
  Citycountry["Paris"] = "France";
  Citycountry["Berlin"] = "Germany";

  String searchValue = "London";
  print("$searchValue is in ${Citycountry[searchValue]}.");
}

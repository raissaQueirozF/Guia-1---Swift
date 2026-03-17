//Create a struct called Car with properties brand, model, and year. Then, instantiate a car and print its data.

struct Car {
    
    var brand: String
    var model: String
    var year: Int
}

let car = Person(brand: "Porsche", model: "GT3 RS", year: 2026)

print(car.brand)
print(car.model) 
print(car.year)
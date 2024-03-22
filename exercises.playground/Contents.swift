import UIKit

//შექმენით Enum-ი სახელით WeekDay შესაბამისი ქეისებით. დაწერეთ ფუნქცია რომელიც იღებს ამ ენამის ტიპს და ბეჭდავს გადაწოდებული დღე სამუშაოა თუ დასვენების.

enum WeekDay{
case monday
case tuesday
case wednesday
case thursday
case friday
case saturday
case sunday
}

func WeekOrWorkDay(name: WeekDay){
switch name {
case .monday,
     .tuesday,
     .wednesday,
     .thursday,
     .friday
     : print("Work day :)")
    
case .saturday,
     .sunday
     : print("Weekend, let's go play football :))")
}
}

WeekOrWorkDay(name: .saturday)
print("-------------------------------")

//შექმენით Enum-ი სახელად GialaSquad, რომელიც აღწერს გია სურამელაშვილის ფანკლუბის წევრების დონეებს ქეისებით : “TsigroviManto”, “MoshishvlebuliMkerdi”, “TuGapatio”. შექმენით ფროფერთი GialaSquad-ში, რომელსაც ექნება ინფორმაცია თუ რა ღირს თითოეული დონე თვეში (დონეები დალაგებულია ძვირიდან იაფისაკენ). დაუმატეთ მეთოდი რომელიც დაბეჭდავს თითოეული დონის ფასს

enum GialaSquad: Int{
    case TsigroviMantof
    case MoshishvlebuliMkerdi
    case TuGapatio
    
    var price: Int{
        switch self {
        case .TsigroviMantof:
            return 1000
        case .MoshishvlebuliMkerdi:
            return 700
        case .TuGapatio:
            return 400
        }
    }
    
    func printi(){
        print("\(self) is fasia \(price)$")
    }
}

var item = GialaSquad.TuGapatio
item.printi()
print("-------------------------------")

//შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.

enum Weather{
    case Sunny(Double)
    case Cloudy(Double)
    case Rainy(Double)
    case Snowy(Double)
}

func WhatWear(weth: Weather){
    switch weth {
    case .Sunny(let temp):
        if temp > 30{
            print("გარეთ ძალიან ცხელა, ჩაიცვით თხლად")}
        else if temp < 30 && temp > 25{
            print("გარეთ თბილა, თუმცა გაიყოლე თხელი მოსაცმელი")}
        else{
            print("მზიანი ამინდია, თუმცა ცივა და ჩაიცვი თბილად :)")}
        
    case.Cloudy(let temp):
        if temp > 20{
            print("ღრუბლიანი ამინდია, შეგიძლია თხელი ჟაკეტი გაიყოლო")
        }
        else if temp > 10 && temp < 20{
            print("ღრუბლიანი ამინდია, ცივა, ჩაიცვი თბილი მოსაცმელი")
        }
        else {
            print("გარეთ ღრუბლიანი ამინდია, ჩაიცვი ძალიან თბილად")
        }
        
    case .Rainy(let temp):
        if temp > 20{
            print("წვიმს, თუმცა თბილა, წაიყოლე საწვიმარი")
        }
        if temp < 20 && temp > 10{
            print("წვიმს და საკმაოდ გრილი ამინდია, ჩაიცვი თბილი საწვიმარი")
        }
        else {
            print("წვიმს, ტემპერატურა დაბალია, წვიმა შესაძლოა თოვლში გადაიზარდოს, ჩაიცვი კურტკა")
        
    }
        
    case .Snowy(let temp):
        if temp>0 && temp<5{
            print("თოვს, სასიამოვნო ამინდია გასასეირნებლად, ჩაიცვი კურტკა და ქუდი")
        }
        if temp < 0{
            print("ჩაიცვი რაც შეიძლება თბილად რადგან ყინავს და თოვს")
        }
        else{
            print("დაგვერხა, თან თოვს და თან თბილა SOSSSSSSSSSSSSSSS")
        }
   
    }
}

WhatWear(weth: .Snowy(10))
print("-------------------------------")
//შექმენით struct-ი Kanye, ფროფერთებით: album, releaseYear. ამის შემდეგ შექმენით array-ი Kanye-ს ტიპის, ჩაამატეთ რამოდენიმე Kanye-ს ობიექტი, და შეავსეთ მასივი კანიეებით. დაწერეთ ფუნქცია, რომელიც მიიღებს ამ კანიეების მასივს და წელს. ფუნქციამ უნდა დაგვიბრუნოს ყველა ალბომი რომელიც გამოშვებულია გადაწოდებული წლის შემდეგ და დაბეჭდოს ისინი.

struct Kanye{
    var album: String
    var releaseYear: Int
    
    init(album: String, releaseYear: Int){
        self.album = album
        self.releaseYear = releaseYear
    }
}

func KanyeFilter(list: [Kanye], year: Int) -> [Kanye]{
    var result: [Kanye] = []
    for item in list{
        if item.releaseYear >= year{
            result.append(item)
        }
    }
    return result
}

var arr: [Kanye] = []
arr.append(Kanye(album: "The College Dropout", releaseYear: 2004))
arr.append(Kanye(album: "Late Registration", releaseYear: 2005))
arr.append(Kanye(album: "Graduation", releaseYear: 2007))

print(KanyeFilter(list: arr, year: 2005))


print("-------------------------------")

//შექმენით String-ის ტიპის lazy property wrapper სახელად, cachedData. ინიციალიზება გაუკეთეთ ქლოჟერით რომელიც აბრუნებს სტრინგს მნიშვნელობით “lazy ინიციალიზებულია”. მიწვდით ამ ფროფერთის და დაბეჭდეთ მისი მნიშვნელობა

@propertyWrapper
struct cachedData{
    private lazy var initializer: String? = nil

      var wrappedValue: String {
          mutating get {
              return initializer ?? ""
          }
          set {
              initializer = "lazy ინიციალიზებულია"
          }
      }

      init(wrappedValue initializer: @escaping @autoclosure () -> String) {
          self.wrappedValue = initializer()
      }
}

struct newCachedData{
    @cachedData var item: String
}


var newItem = newCachedData(item: "hi")
print(newItem.item)

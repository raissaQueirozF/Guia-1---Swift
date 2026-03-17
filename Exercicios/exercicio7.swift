// Create an optional variable that stores a name. If the name is not null, print it to the screen.
// Otherwise, print a message saying that the name is not defined.
//Try working with both the if let and the guard.

//using if let
var name: String? = "Helen"

if let unwrappedName = name {
    print("Name:\(nomeDesempacotado)")
} else {
    print("The name is not defined.")
}

//ussing guard let
var name: String? = "Helen"
    
guard let unwrappedName = name else {
    print("The name is not defined.")
    return
}
print("O nome é \(unwrappedName)")
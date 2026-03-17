// Write a code that receives a grade and prints a message corresponding to the grade.

print("Qual sua nota na atividade? ")

if let nota = readLine() {
    switch nota {
    case "A":
        print("Excelent")
    case "B":
        print("Great")
    case "C":
        print("Regular")
    case "D", "F":
        print("Need to improve")
    default:
        print("Invalid format")
    }
}
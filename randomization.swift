// Write code to generate a random password generator of 6 characters extracted from the 26 letters in the English alphabet. The idea is to learn about randomization in Swift. Utiilze the Int data type for indexing array positions and the .random method to do the randomization with a set range from 0 - 25.


func exercise() {
    
    // Declated a constract variable named alphabet and assigned it an array for all alphabets in the English language. Since this is an array, the indexing would be from 0...25
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    
    //Declated another variable to do the computation. Used the Int.random method to extract the array positions randomly for randomnization from the alphabet constant. Used the operator + to add the random characters indexed from the array as this will generate a 6 chatacter random password. 
    let password = alphabet[Int.random(in: 0...25)] +
alphabet[Int.random(in: 0...25)] +
alphabet[Int.random(in: 0...25)] +
alphabet[Int.random(in: 0...25)] +
alphabet[Int.random(in: 0...25)] +
alphabet[Int.random(in: 0...25)]
    
    print(password)
    
    
}

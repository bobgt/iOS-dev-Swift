// Use of if/else statements. 

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    }
    
    else if loveScore > 40 {
        print("you love together like coke and mentos")
        
    }
    
        else {
            print("You will be forever alone")
        }
    }
    

loveCalculator()


// Love Calculator using Switch statement

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    
    
    switch loveScore {
    case 81...100:
        print("You love each other like Kanye loves Kany")
        
    case 41..<81:
        print("you love together like coke and mentos")
        
    case ...40:
        print("You will be forever alone")
        
        
    default:
        print("ERROR")
    }
    
}

loveCalculator()

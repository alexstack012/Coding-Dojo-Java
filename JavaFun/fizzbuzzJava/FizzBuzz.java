public class FizzBuzz {
    public void fizzBuzz(int number) {
        // fizzbuzz logic here - returns "Fizz", "Buzz", "FizzBuzz"
        // or a String cast of the number itself. 
        // Hint: You can use a String method to cast the int to a String.
        if(((number % 5) == 0) && ((number % 3) == 0)){
            System.out.println("FizzBuzz");
        }
        else if((number % 5) == 0){
            System.out.println("Buzz");
        }
        else if((number % 3) == 0){
            System.out.println("Fizz");
        }
        else{
            System.out.println(number);
            }
    }
    
    // NINJA BONUS:
    // Create an overloaded method for fizzBuzz
    // public String fizzBuzz(
    //     // Parameters
    //     int number,  
    //     String multOf3Word, 
    //     String multOf5Word,
    //     String multOf15Word
    //     ) {
        
        // Implement the same logic, but replace "Fizz", "Buzz" and 
        // "Fizzbuzz" with the given words
    // }
}
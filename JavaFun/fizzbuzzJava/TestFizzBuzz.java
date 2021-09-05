public class TestFizzBuzz {
    // This will be the launch point for the application
    // For now, we are using this method to test our 
    // FizzBuzz methods
    public static void main(String[] args) {
        FizzBuzz tester = new FizzBuzz();
        
        tester.fizzBuzz(9);     // Fizz
        tester.fizzBuzz(10);    // Buzz
        tester.fizzBuzz(15);    // FizzBuzz
        tester.fizzBuzz(16);    // 16
        tester.fizzBuzz(2);     // 2
        
        // Uncomment the following for a more comprehensive test:
        /*
        for (int i = 1; i <= 50; i++) {
            System.out.println(tester.fizzBuzz(i));
        }
        */
    }
}
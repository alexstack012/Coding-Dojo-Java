import java.util.ArrayList;

public class Basics {
// Write a method that prints all the numbers from 1 to 255.
public void counting(){
int i = 0;
while(i < 256){
    System.out.println(i);
    i++;
}
}

// Write a method that creates and eventually returns a sum 
// variable that adds up all the numbers from 1 to 255. In this 
// method you are not printing the sum, except to debug if you 
// need to, the method should return the sum. Note: You do not 
// need an array to write this function. 


public void countingSum(){
int i = 0;
int sum = 0;
while(i < 256){
    sum += i;
    i++;
}
System.out.println(sum);
}


// Given an array X, say [1,3,5,7,9,13], write a method 
// that would iterate through each member of the array and 
// print each value on the screen. Being able to loop through 
// each member of the array is extremely important.


public void arrayLoop(){
int[] primes = {1, 3, 5, 7, 9, 13};
for(int i=0; i< primes.length; i++){
    System.out.println(primes[i]); }

}


// Write a method (sets of instructions) that takes 
// any array and prints the maximum value in the array. 
// Your method should also work with a given array that 
// has all negative numbers (e.g. [-3, -5, -7]), or even 
// a mix of positive numbers, negative numbers and zero.

public void max(){
    int[] primes = {1, 3, 0, -7, 9, -13};
    int max = 0;
    for(int i=1; i< primes.length; i++){
        if(primes[i] > primes[i-1]){
            max = primes[i];
            i++;
        }
    }
    System.out.println(max);
}

// Write a method that creates an array 'y' that 
// contains all the odd numbers between 1 to 255. 
// When the method is done, 'y' should have the value 
// of [1, 3, 5, 7, ... 255].

public void countingOdd(){
    ArrayList<Integer> myArray = new ArrayList<Integer>();
    for (int i = 1; i < 256; i++) {
        if (i % 2 != 0) {
            // System.out.println(i);
            myArray.add(i);
        }
        }
System.out.println(myArray);
}
}

// ########## ANSWERS FROM THE PLATFORM ##############################
// import java.util.ArrayList;
// public class Basics {
// 	public static void main(String[] args) {
// 		int[] nums = {23,234,2345,-23,42};
// 		LoopArray(nums);
// 		MaxMinAverage(nums);
// 		System.out.println(GetArraySum(nums));
// 	}
// 	public static void OneTo255() {
// 		for(int i = 0; i <= 255; i++)
// 			System.out.println(i);
// 	}
// 	public static void PrintOdds() {
// 		for(int i = 0; i <= 255; i++) {
// 			if(i % 2 == 0)
// 				System.out.println(i);
// 		}
// 	}
// 	public static int GetArraySum(int[] numbers) {
// 		int sum = 0;
// 		for(int i = 0; i < numbers.length; i++) {
// 			sum += numbers[i];			
// 		}
// 		return sum;
// 	}
// 	public static void PrintSum() { 
// 		int sum = 0;
// 		for(int i = 0; i <= 255; i++) {
// 			sum += 0;
// 			System.out.println(String.format("New number: %d, Sum: %d", i, sum));
// 		}
// 	}
// 	public static void LoopArray(int[] arr) {
// 		for(int val: arr)
// 			System.out.println(val);
// 	}
// 	public static int FindMax(int[] arr) {
// 		int currMax = Integer.MIN_VALUE;
// 		for(int val: arr){
// 			if(val > currMax)
// 				currMax = val;
// 		}
// 		return currMax;
// 	}
// 	public static int FindMin(int[] arr) {
// 		int currMin = Integer.MAX_VALUE;
// 		for(int val: arr){
// 			if(val < currMin)
// 				currMin = val;
// 		}
// 		return currMin;
// 	}
// 	public static double GetAverage(int[] nums) {
// 		int sum = GetArraySum(nums);
// 		double avg =(double)sum/nums.length;
// 		System.out.println(String.format("Sum: %d, Average: %f", sum, avg));
// 		return avg;
// 	}

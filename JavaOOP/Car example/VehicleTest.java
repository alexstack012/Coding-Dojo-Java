class VehicleTest {
    public static void main(String[] args) {
        //creating a new instance of "vehicle" called bike
        Vehicle bike = new Vehicle();
        Vehicle bike2 = new Vehicle("white", 2);

        //creating new instance of "vehicle" called car
        Vehicle car = new Vehicle();

        //settting the number of wheels on the bike for instance to 2 and the color to red
        bike.setNumberOfWheels(2);
        bike.setColor("red");

        //getting the number of wheels and color of the bike instance
        int bikeWheels = bike.getNumberOfWheels();
        String bikeColor = bike.getColor();

        //getting the numofWheels, color, honk and honkTimes of bike2 instance
        int bike2Wheels = bike2.getNumberOfWheels();
        String bike2Color = bike2.getColor();
        String bike2Honk = bike2.honk();
        String bike2HonkTimes = bike2.honk(3);


        car.setNumberOfWheels(4);
        car.setColor("green");

        int carWheels = car.getNumberOfWheels();
        String carColor = car.getColor();

        System.out.println(bike2Honk);
        System.out.println(bike2HonkTimes);

        System.out.println("Bike object - Wheels: " + bikeWheels + ", Color: " + bikeColor);
        System.out.println("Bike2 object - Wheels: " + bike2Wheels + ", Color: " + bike2Color );
        System.out.println("Car object - Wheels: " + carWheels + ", Color: " + carColor);
    }
}
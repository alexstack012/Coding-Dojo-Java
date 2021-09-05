public class Bat extends RatWithWings {
    public void fly(){
        this.setEnergy(this.getEnergy()-50);
        System.out.println("The bat is looking for something to eat. Hide quickly!");
    }

    public void eatHumans(){
        this.setEnergy(this.getEnergy()+25);
        System.out.println("The bat ate a human, let's hope it's not hungry anymore.");
    }

    public void attackTown(){
        this.setEnergy(this.getEnergy()-100);
        System.out.println("Oh no! The bat destroyed a city!");
    }

}
public class Gorilla extends Mammal {
    public void throwSomething(){
        this.setEnergy(this.getEnergy()-5);
        System.out.println("The gorilla throws something!");
    }

    public void eatBananas(){
        this.setEnergy(this.getEnergy()+10);
        System.out.println("The gorilla ate a banana!");
    }

    public void climb(){
        this.setEnergy(this.getEnergy()-10);
        System.out.println("The gorilla climbed!");
    }

}
//package hw3;

public class Problem3 {
    public static class Human {
        public void eat() {
            System.out.println("I'm omnivore");
        }
    }

    public static class Vegetarian extends Human{
        public void eat() {
            System.out.println("I'm vegetarian. I'm herbivore");
        }
    }

    public static void main(String[] args) {
        Human A = new Vegetarian();
        A.eat();
    }
}

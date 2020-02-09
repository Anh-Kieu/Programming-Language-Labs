//package hw3;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Problem2 {

    /**
     * The program demonstrates how statically typed language can have advantage in catching cases during the programming process,
     * Avoid users messing up stuff and crashing program on their ends.
     * Only take integer for magic, magic cannot take other thing like string "hi"
     * @param args
     */
    public static void main(String[] args) {
        System.out.print("Enter an integer number, we will do a magic trick! ");
        Scanner in = new Scanner(System.in);
        int num = 0;
        try {
            num = in.nextInt();
        } catch (InputMismatchException e) {
            System.out.println("I want an integer!");
            System.out.println("Program terminated!");
            return;
        }
        magic(num);
    }

    static void magic(int num) {
        System.out.println("Take your number, double it, add 6");
        System.out.println(num * 2 + 6);
        System.out.println("Then multiply it by 3");
        System.out.println((num * 2 + 6) * 3);
        System.out.println("Minus 18, divide by 6. Wow!");
        System.out.println(((num * 2 + 6) * 3 - 18) / 6);
    }

}

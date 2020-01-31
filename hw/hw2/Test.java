/* *****************************************
 * CSCI208 - Programming Language and Design
 * Spring 2020
 * Instructor: Prof. Wittie
 *
 * Name: Anh Kieu
 * Section: 11 am
 * Date: 1/31/2020
 * Time: 12:11 AM
 * ****************************************
 */

public class Test {
    public static void main(String[] args) {
        // enum
        Food f = Food.BURGER;
        // ordinal
        System.out.println(f.ordinal());
        // support assign value
        System.out.println(f.value);
        // support equality
        System.out.println(f == Food.BURGER);
        // customizable function
        f.getMessage();

        // array
        int[] arr;
        arr = new int[3];
        arr[0] = 1;
        arr[1] = 2;
        for (int element : arr) {
            System.out.println(element);
        }
        System.out.println(arr.length);
        int[][][] arr_mul = new int[3][4][5];
        System.out.println(arr_mul.length);

        Cartesian c = new Cartesian(1, "hi");
        System.out.println(c.attribute1);
        System.out.println(c.name);
        c.getMessage();
    }
}
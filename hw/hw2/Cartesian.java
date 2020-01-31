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

public class Cartesian {
    public int attribute1;
    public String name;

    public Cartesian(int attribute1, String name) {
        this.attribute1 = attribute1;
        this.name = name;
    }

    public void getMessage() {
        System.out.println(attribute1 + name);
    }

}
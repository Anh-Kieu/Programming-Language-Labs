//package hw5;

public class Sofa {
    Color color;
    public String toString() {
	return color + " colored";
    }

    public Sofa() {

    }

    public Sofa(Sofa s) {
        this.color = s.color;
    }
}

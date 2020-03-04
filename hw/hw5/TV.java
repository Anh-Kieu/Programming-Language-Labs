//package hw5;

public class TV {
    int width;
    int height;
     public String toString() {
	return "W " + width + " H " + height;
    }

    public TV() {}

    public TV(TV t) {
         this.width = t.width;
         this.height = t.height;
    }
}

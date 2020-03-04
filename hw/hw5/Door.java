//package hw5;

public class Door {
    int numHinges;
    boolean lockable;

    public Door() {
    }

    public Door(Door d) {
        this.numHinges = d.numHinges;
        this.lockable = d.lockable;
    }
    public String toString() {
	if (lockable)
	    return "Lockable with " + numHinges + " hinges";
	else
	    return "Plain with " + numHinges + " hinges";	
    }
}

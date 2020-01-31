public enum Food {
    SUSHI(13),
    BURGER(5),
    FRIES(2),
    RAMEN(13);

    public float value;

    Food(float value) { this.value = value; }

    public void getMessage() {
        if (this == Food.SUSHI) {
            System.out.println("Sushi it is");
        }
        if (this == Food.BURGER) {
            System.out.println("Burger it is");
        }
        if (this == Food.FRIES) {
            System.out.println("Fries it is");
        }
        if (this == Food.RAMEN) {
            System.out.println("Ramen it is");
        }
    }
}

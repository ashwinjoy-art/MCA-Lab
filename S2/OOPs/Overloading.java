class Over 
{
    float pi = 3.14f;
    int length, breadth, r;

    void area(int r) 
    {
        System.out.println("Area of circle : " + (pi * r * r));
    }

    void area(int length, int breadth) 
    {
        System.out.println("Area of rectangle : " + (length * breadth));
    }
}

public class Overloading 
{
    public static void main(String args[]) 
    {
        Over O = new Over();
        O.area(1);
        O.area(2, 4);
    }
}

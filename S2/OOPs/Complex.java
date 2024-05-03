public class Complex 
{
    int r;
    int i;

    Complex(int real, int img) 
    {
        r = real;
        i = img;
    }

    void display() 
    {
        System.out.println(r + "+" + i + "i");
    }

    static void add(int r1, int i1, int r2, int i2) 
    {
        r1 = r1 + r2;
        i1 = i1 + i2;
        System.out.println("After Addition = " + r1 + "+" + i1 + "i");
    }

    public static void main(String[] args) 
    {
        Complex first = new Complex(5, 4);
        Complex second = new Complex(7, 9);
        System.out.println("Complex Numbers are:");
        first.display();
        second.display();
        add(first.r, first.i, second.r, second.i);
    }
}
import java.util.Scanner;

public class ArraySearch 
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number of elements in the array: ");
        int n = sc.nextInt();
        int[] array = new int[n];
        System.out.println("Enter the elements of the array:");
        for (int i = 0; i < n; i++) {
            array[i] = sc.nextInt();
        }
        System.out.print("Enter the element to search for: ");
        int target = sc.nextInt();
        int index = -1;
        for (int i = 0; i < array.length; i++) 
        {
            if (array[i] == target) 
            {
                index = i;
                break;
            }
        }
        if (index != -1) 
        {
            System.out.println("Element found at index " + index);
        } else 
        {
            System.out.println("Element not found in the array");
        }
        sc.close();
    }
}

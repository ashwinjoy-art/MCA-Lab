import java.util.Scanner;

public class ArraySearch 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements in the array: ");
        int n = scanner.nextInt();
        int[] array = new int[n];
        System.out.println("Enter the elements of the array:");
        for (int i = 0; i < n; i++) 
        {
            array[i] = scanner.nextInt();
        }
        System.out.print("Enter the element to search for: ");
        int target = scanner.nextInt();
        int index = searchElement(array, target);
        if (index != -1) 
        {
            System.out.println("Element found at index " + index);
        }
        else 
        {
            System.out.println("Element not found in the array");
        }
        scanner.close();
    }

    public static int searchElement(int[] array, int target) 
    {
        for (int i = 0; i < array.length; i++) 
        {
            if (array[i] == target) 
            {
                return i;
            }
        }
        return -1;
    }
}
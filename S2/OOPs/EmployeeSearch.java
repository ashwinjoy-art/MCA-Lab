import java.util.Scanner;

class Employee1 
{
    private int eNo;
    private String eName;
    private double eSalary;

    public Employee1(int eNo, String eName, double eSalary) 
    {
        this.eNo = eNo;
        this.eName = eName;
        this.eSalary = eSalary;
    }

    public int getENo() 
    {
        return eNo;
    }

    public String getEName() 
    {
        return eName;
    }

    public double getESalary() 
    {
        return eSalary;
    }
}

public class EmployeeSearch 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of employees: ");
        int n = scanner.nextInt();
        Employee1[] employees = new Employee1[n];

        for (int i = 0; i < n; i++) 
        {
            System.out.println("Enter details for employee " + (i + 1) + ":");
            System.out.print("Employee Number: ");
            int eNo = scanner.nextInt();
            scanner.nextLine();
            System.out.print("Employee Name: ");
            String eName = scanner.nextLine();
            System.out.print("Employee Salary: ");
            double eSalary = scanner.nextDouble();
            employees[i] = new Employee1(eNo, eName, eSalary);
        }

        System.out.print("Enter the employee number to search: ");
        int searchENo = scanner.nextInt();
        boolean found = false;
        for (int i = 0; i < n; i++) 
        {
            if (employees[i].getENo() == searchENo) 
            {
                found = true;
                System.out.println("Employee found:");
                System.out.println("Employee Number: " + employees[i].getENo());
                System.out.println("Employee Name: " + employees[i].getEName());
                System.out.println("Employee Salary: " + employees[i].getESalary());
                break;
            }
        }
        if (!found) 
        {
            System.out.println("Employee not found!");
        }
        scanner.close();
    }
}
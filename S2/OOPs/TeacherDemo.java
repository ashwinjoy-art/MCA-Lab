import java.util.Scanner;

class Employee 
{
    int empId;
    String name;
    double salary;
    String address;

    public Employee(int empId, String name, double salary, String address) 
    {
        this.empId = empId;
        this.name = name;
        this.salary = salary;
        this.address = address;
    }
}

class Teacher extends Employee 
{
    String department;
    String subjectsTaught;

    public Teacher(int empId, String name, double salary, String address, String department,
            String subjectsTaught) 
            {
        super(empId, name, salary, address);
        this.department = department;
        this.subjectsTaught = subjectsTaught;
    }

    public void display() 
    {
        System.out.println("Employee ID: " + empId);
        System.out.println("Name: " + name);
        System.out.println("Salary: " + salary);
        System.out.println("Address: " + address);
        System.out.println("Department: " + department);
        System.out.println("Subjects Taught: " + subjectsTaught);
        System.out.println("-------------------------------------------");
    }
}

public class TeacherDemo 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of teachers (N): ");
        int N = scanner.nextInt();
        Teacher[] teachers = new Teacher[N];
        for (int i = 0; i < N; i++) {
            System.out.println("Enter details for Teacher " + (i + 1) + ":");
            System.out.print("Employee ID: ");
            int empId = scanner.nextInt();
            scanner.nextLine();
            System.out.print("Name: ");
            String name = scanner.nextLine();
            System.out.print("Salary: ");
            double salary = scanner.nextDouble();
            scanner.nextLine();
            System.out.print("Address: ");
            String address = scanner.nextLine();
            System.out.print("Department: ");
            String department = scanner.nextLine();
            System.out.print("Subjects Taught: ");
            String subjectsTaught = scanner.nextLine();
            teachers[i] = new Teacher(empId, name, salary, address, department, subjectsTaught);
        }
        System.out.println("\nDetails of all Teachers:");
        for (Teacher teacher : teachers) 
        {
            teacher.display();
        }
        scanner.close();
    }
}
import java.util.Scanner;

class Person 
{
    String name;
    String gender;
    String address;
    int age;

    public Person(String name, String gender, String address, int age) 
    {
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.age = age;
    }
}

class Employee extends Person 
{
    int empId;
    String companyName;
    String qualification;
    double salary;

    public Employee(String name, String gender, String address, int age, int empId, String companyName, 
            String qualification, double salary) 
    {
        super(name, gender, address, age);
        this.empId = empId;
        this.companyName = companyName;
        this.qualification = qualification;
        this.salary = salary;
    }
}

class Teacher extends Employee 
{
    String subject;
    String department;
    int teacherId;

    public Teacher(String name, String gender, String address, int age, int empId, String companyName,
            String qualification, double salary, String subject, String department, int teacherId) 
    {
        super(name, gender, address, age, empId, companyName, qualification, salary);
        this.subject = subject;
        this.department = department;
        this.teacherId = teacherId;
    }

    public void display() 
    {
        System.out.println("Name: " + name);
        System.out.println("Gender: " + gender);
        System.out.println("Address: " + address);
        System.out.println("Age: " + age);
        System.out.println("Employee ID: " + empId);
        System.out.println("Company Name: " + companyName);
        System.out.println("Qualification: " + qualification);
        System.out.println("Salary: " + salary);
        System.out.println("Subject: " + subject);
        System.out.println("Department: " + department);
        System.out.println("Teacher ID: " + teacherId);
        System.out.println("-------------------------------------------");
    }
}

public class TeacherDemo2 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of teachers (N): ");
        int N = scanner.nextInt();
        Teacher[] teachers = new Teacher[N];
        for (int i = 0; i < N; i++) {
            System.out.println("Enter details for Teacher " + (i + 1) + ":");
            System.out.print("Name: ");
            String name = scanner.next();
            System.out.print("Gender: ");
            String gender = scanner.next();
            System.out.print("Address: ");
            String address = scanner.next();
            System.out.print("Age: ");
            int age = scanner.nextInt();
            System.out.print("Employee ID: ");
            int empId = scanner.nextInt();
            System.out.print("Company Name: ");
            String companyName = scanner.next();
            System.out.print("Qualification: ");
            String qualification = scanner.next();
            System.out.print("Salary: ");
            double salary = scanner.nextDouble();
            System.out.print("Subject: ");
            String subject = scanner.next();
            System.out.print("Department: ");
            String department = scanner.next();
            System.out.print("Teacher ID: ");
            int teacherId = scanner.nextInt();
            teachers[i] = new Teacher(name, gender, address, age, empId, companyName,
                    qualification, salary, subject, department, teacherId);
        }
        System.out.println("\nDetails of all Teachers:");
        for (Teacher teacher : teachers) 
        {
            teacher.display();
        }
        scanner.close();
    }
}
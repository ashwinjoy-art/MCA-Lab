import java.util.Scanner;

class Student 
{
    String studentName;
    int academicScore;

    public Student(String studentName, int academicScore) 
    {
        this.studentName = studentName;
        this.academicScore = academicScore;
    }
}

class Sports 
{
    int sportsScore;

    public Sports(int sportsScore) 
    {
        this.sportsScore = sportsScore;
    }
}

class Result extends Student
{
    int sportsScore;

    public Result(String studentName, int academicScore, int sportsScore) 
    {
        super(studentName, academicScore);
        this.sportsScore = sportsScore;
    }

    public void display() 
    {
        System.out.println("Student Name: " + studentName);
        System.out.println("Academic Score: " + academicScore);
        System.out.println("Sports Score: " + sportsScore);
    }
}

public class ResultDemo 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter Student Name: ");
        String studentName = scanner.nextLine();
        System.out.print("Enter Academic Score: ");
        int academicScore = scanner.nextInt();
        System.out.print("Enter Sports Score: ");
        int sportsScore = scanner.nextInt();
        Result result = new Result(studentName, academicScore, sportsScore);
        result.display();
        scanner.close();
    }
}

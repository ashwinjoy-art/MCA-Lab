import java.util.Scanner;

interface Student 
{
    void displayAcademicScore();
}

interface Sports 
{
    void displaySportsScore();
}

class StudentInfo implements Student 
{
    private int academicScore;

    public StudentInfo(int academicScore) 
    {
        this.academicScore = academicScore;
    }

    public void displayAcademicScore() 
    {
        System.out.println("Academic Score: " + academicScore);
    }
}

class SportsInfo implements Sports 
{
    private int sportsScore;

    public SportsInfo(int sportsScore) 
    {
        this.sportsScore = sportsScore;
    }

    public void displaySportsScore() 
    {
        System.out.println("Sports Score: " + sportsScore);
    }
}

class Result implements Student, Sports 
{
    private StudentInfo studentInfo;
    private SportsInfo sportsInfo;

    public Result(int academicScore, int sportsScore) 
    {
        studentInfo = new StudentInfo(academicScore);
        sportsInfo = new SportsInfo(sportsScore);
    }

    public void displayAcademicScore() 
    {
        studentInfo.displayAcademicScore();
    }

    public void displaySportsScore() 
    {
        sportsInfo.displaySportsScore();
    }
}

public class ResultDemo 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter name: ");
        String name = scanner.nextLine();
        System.out.print("Enter academic score: ");
        int academicScore = scanner.nextInt();
        System.out.print("Enter sports score: ");
        int sportsScore = scanner.nextInt();
        Result studentResult = new Result(academicScore, sportsScore);
        System.out.println("Name: " + name);
        studentResult.displayAcademicScore();
        studentResult.displaySportsScore();
        scanner.close();
    }
}
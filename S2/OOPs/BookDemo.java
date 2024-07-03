import java.util.Scanner;

class Publisher 
{
    String name;

    public Publisher(String name) 
    {
        this.name = name;
    }
}

class Book 
{
    String title;
    Publisher publisher;
    double price;

    public Book(String title, Publisher publisher, double price) 
    {
        this.title = title;
        this.publisher = publisher;
        this.price = price;
    }
}

class Literature extends Book 
{
    String genre;

    public Literature(String title, Publisher publisher, double price, String genre) 
    {
        super(title, publisher, price);
        this.genre = genre;
    }
}

class Fiction extends Book 
{
    String theme;

    public Fiction(String title, Publisher publisher, double price, String theme) 
    {
        super(title, publisher, price);
        this.theme = theme;
    }
}

public class BookDemo 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        Publisher publisher1 = new Publisher("Publisher 1");
        Publisher publisher2 = new Publisher("Publisher 2");
        Book[] books = 
        {
                new Literature("Book 1", publisher1, 20.0, "Drama"),
                new Literature("Book 2", publisher1, 25.0, "Poetry"),
                new Fiction("Book 3", publisher2, 30.0, "Adventure"),
                new Fiction("Book 4", publisher2, 35.0, "Mystery")
        };

        System.out.println("Books in Literature category:");
        System.out.println("----------------------------");
        for (Book book : books) 
        {
            if (book instanceof Literature) 
            {
                System.out.println("Title: " + book.title);
                System.out.println("Publisher: " + book.publisher.name);
                System.out.println("Price: $" + book.price);
                System.out.println("Genre: " + ((Literature) book).genre);
                System.out.println();
            }
        }
        
        System.out.println("Books in Fiction category:");
        System.out.println("-------------------------");
        for (Book book : books) 
        {
            if (book instanceof Fiction) 
            {
                System.out.println("Title: " + book.title);
                System.out.println("Publisher: " + book.publisher.name);
                System.out.println("Price: $" + book.price);
                System.out.println("Theme: " + ((Fiction) book).theme);
                System.out.println();
            }
        }
        scanner.close();
    }
}
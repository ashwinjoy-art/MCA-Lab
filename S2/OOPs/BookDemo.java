import java.util.Scanner;

class Publisher 
{
    String publisherName;

    public Publisher(String publisherName) 
    {
        this.publisherName = publisherName;
    }
}

class Book 
{
    String bookTitle;
    Publisher publisher;
    double price;

    public Book(String bookTitle, Publisher publisher, double price) 
    {
        this.bookTitle = bookTitle;
        this.publisher = publisher;
        this.price = price;
    }
}

class Literature extends Book 
{
    String genre;

    public Literature(String bookTitle, Publisher publisher, double price, String genre) 
    {
        super(bookTitle, publisher, price);
        this.genre = genre;
    }

    public void display() 
    {
        System.out.println("Title: " + bookTitle);
        System.out.println("Publisher: " + publisher.publisherName);
        System.out.println("Price: $" + price);
        System.out.println("Genre: " + genre);
        System.out.println("-------------------------------------------");
    }
}

class Fiction extends Book 
{
    String genre;

    public Fiction(String bookTitle, Publisher publisher, double price, String genre) 
    {
        super(bookTitle, publisher, price);
        this.genre = genre;
    }

    public void display() 
    {
        System.out.println("Title: " + bookTitle);
        System.out.println("Publisher: " + publisher.publisherName);
        System.out.println("Price: $" + price);
        System.out.println("Genre: " + genre);
        System.out.println("-------------------------------------------");
    }
}

public class BookDemo 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter Publisher Name: ");
        String publisherName = scanner.nextLine();
        Publisher publisher = new Publisher(publisherName);
        System.out.println("Enter details for Literature Book:");
        System.out.print("Title: ");
        String literatureTitle = scanner.nextLine();
        System.out.print("Price: ");
        double literaturePrice = scanner.nextDouble();
        scanner.nextLine();
        System.out.print("Genre: ");
        String literatureGenre = scanner.nextLine();
        Literature literature = new Literature(literatureTitle, publisher, literaturePrice,literatureGenre);
        System.out.println("Enter details for Fiction Book:");
        System.out.print("Title: ");
        String fictionTitle = scanner.nextLine();
        System.out.print("Price: ");
        double fictionPrice = scanner.nextDouble();
        scanner.nextLine(); 
        System.out.print("Genre: ");
        String fictionGenre = scanner.nextLine();
        Fiction fiction = new Fiction(fictionTitle, publisher, fictionPrice, fictionGenre);
        System.out.println("\nDetails of Literature Book:");
        literature.display();
        System.out.println("Details of Fiction Book:");
        fiction.display();
        scanner.close();
    }
}
public class CPU 
{
    static class Processor 
    {
        int cores;
        String manufacturer;

        Processor(int cores, String manufacturer) 
        {
            this.cores = cores;
            this.manufacturer = manufacturer;
        }

        void display() 
        {
            System.out.println("\nProcessor info");
            System.out.println("No. of Cores = " + cores);
            System.out.println("Manufacturer = " + manufacturer + "\n");
        }
    }

    static class RAM 
    {
        int memory;
        String manufacturer;

        RAM(int memory, String manufacturer) 
        {
            this.memory = memory;
            this.manufacturer = manufacturer;
        }

        void display()
        {
            System.out.println("\nRAM info");
            System.out.println("Memory = " + memory + " GB");
            System.out.println("Manufacturer = " + manufacturer + "\n");
        }
    }

    public static void main(String[] args) 
    {
        RAM ram = new RAM(8, "Intel");
        Processor processor = new Processor(8, "Samsung");
        ram.display();
        processor.display();
    }
}
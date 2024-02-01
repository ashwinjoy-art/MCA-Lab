class Employee:
    def __init__(self, name, id, department, salary):
        self.name = name
        self.id = id
        self.department = department
        self.salary = salary

    def display_details(self):
        print(f"Employee Details:\nName: {self.name}\nID: {self.id}\nDepartment: {self.department}\nSalary: ${self.salary}")


employee_name = input("Enter employee name: ")
employee_id = int(input("Enter employee ID: "))
employee_department = input("Enter employee department: ")
employee_salary = float(input("Enter employee salary: "))
employee = Employee(employee_name, employee_id, employee_department, employee_salary)
employee.display_details()

class Student:
    def __init__(self, roll_number, student_name, marks):
        self.roll_number = roll_number
        self.student_name = student_name
        self.marks = marks

    def calculate_percentage(self):
        total_marks = sum(self.marks)
        total_subjects = len(self.marks)
        return (total_marks / (total_subjects * 100)) * 100

    def calculate_grade(self, percentage):
        if percentage >= 85:
            return "S"
        elif percentage >= 75:
            return "A"
        elif percentage >= 65:
            return "B"
        elif percentage >= 55:
            return "C"
        elif percentage >= 50:
            return "D"
        else:
            return "Fail"

    def display_details(self):
        percentage = self.calculate_percentage()
        grade = self.calculate_grade(percentage)
        print("\nStudent Details:")
        print("Roll Number:", self.roll_number)
        print("Student Name:", self.student_name)
        print("Marks:", self.marks)
        print("Percentage:", round(percentage, 2))
        print("Grade:", grade)


roll_number = input("Enter Roll Number: ")
student_name = input("Enter Student Name: ")
marks = []
for i in range(5):
    subject_mark = float(input(f"Enter Marks in Subject {i + 1}: "))
    marks.append(subject_mark)
student = Student(roll_number, student_name, marks)
student.display_details()
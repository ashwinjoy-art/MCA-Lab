import Package_Graphics_rectangle as re
import Package_Graphics_circle as c
import Package_3D_Graphics_cuboid as cb
import Package_3D_Graphics_sphere as s
print("Rectangle")
print("Area:", re.area(5, 6))
print("Perimeter:", re.perimeter(5, 6))
print("Circle")
print("Area:", c.area(4))
print("Perimeter:", c.perimeter(4))
print("Cuboid")
print("Area:", cb.area(4, 5, 6))
print("Perimeter:", cb.perimeter(4, 5, 6))
print("Sphere")
print("Area:", s.area(5))
print("Perimeter:", s.perimeter(5))
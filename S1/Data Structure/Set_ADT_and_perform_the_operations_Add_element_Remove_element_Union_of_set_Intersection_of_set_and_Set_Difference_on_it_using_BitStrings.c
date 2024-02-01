#include <stdio.h>
void printSet(int set[], int size) {
    printf("{ ");
    for (int i = 0; i < size; i++) {
        printf("%d ", set[i]);
    }
    printf("}\n");
}
int main() {
    int maxSize = 100; 
    int set1[maxSize], set2[maxSize];
    int size1, size2;
    printf("Enter the size of set1: ");
    scanf("%d", &size1);
    printf("Enter elements of set1 (space-separated): ");
    for (int i = 0; i < size1; i++) {
        scanf("%d", &set1[i]);
    }
    printf("Enter the size of set2: ");
    scanf("%d", &size2);
    printf("Enter elements of set2 (space-separated): ");
    for (int i = 0; i < size2; i++) {
        scanf("%d", &set2[i]);
    }
    int unionSet[maxSize];
    int k = 0;
    for (int i = 0; i < size1; i++) {
        unionSet[k++] = set1[i];
    }
    for (int i = 0; i < size2; i++) {
        int found = 0;
        for (int j = 0; j < size1; j++) {
            if (set2[i] == set1[j]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            unionSet[k++] = set2[i];
        }
    }
    printf("Union: ");
    printSet(unionSet, k);
    int intersectionSet[maxSize];
    k = 0;
    for (int i = 0; i < size1; i++) {
        for (int j = 0; j < size2; j++) {
            if (set1[i] == set2[j]) {
                intersectionSet[k++] = set1[i];
                break;
            }
        }
    }
    printf("Intersection: ");
    printSet(intersectionSet, k);
    int differenceSet1[maxSize];
    int l = 0;
    for (int i = 0; i < size1; i++) {
        int found = 0;
        for (int j = 0; j < size2; j++) {
            if (set1[i] == set2[j]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            differenceSet1[l++] = set1[i];
        }
    }
    printf("Difference (set1 - set2): ");
    printSet(differenceSet1, l);
    int differenceSet2[maxSize];
    l = 0;
    for (int i = 0; i < size2; i++) {
        int found = 0;
        for (int j = 0; j < size1; j++) {
            if (set2[i] == set1[j]) {
                found = 1;
                break;
            }
        }
        if (!found) {
            differenceSet2[l++] = set2[i];
        }
    }
    printf("Difference (set2 - set1): ");
    printSet(differenceSet2, l);
    return 0;
}
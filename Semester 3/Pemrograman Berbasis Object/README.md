# Perulangan di Java

## Perulangan While

```java
public class MyClass {
    public static void main(String[] args) {
        int i = 0;

        while (i < 5) {
            System.out.println(i);
            i++;
        }
    }
}
```

hasilnya

```
0
1
2
3
4
```

## Perulangan For

```java
public class MyClass {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            if (i == 4) {
                break;
            }
            System.out.println(i);
        }
    }
}
```

hasilnya

```
0
1
2
3
```

## Contoh yang lain

```java
public class MyClass {
    public static void main(String[] args) {
        for (int i = 0; i < 8; i++) {
            if (i == 4) {
                continue;
            }
            System.out.println(i);
        }
    }
}
```

hasilnya

```
0
1
2
3
5
6
7
```

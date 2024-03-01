# Spring Boot with GraalVM Performance Comparison

## Description

In this example, we will start the application using JVM and Native Image and compare the performance of both.
Here we will use `psrecord` and `hey` to generate the performance graph and run `500k` requests.

## Features
- Java 21
- Spring Boot 3.2.3
- GraalVM
- [psrecord](https://github.com/astrofrog/psrecord)
- [hey](https://github.com/rakyll/hey)

## Performance Comparison

### JVM
To generate the performance graph using JVM, use the following command:

```bash
$ make jvm
```
It will generate an image with the result of `500k` requests as below:

![jvm.png](assets/jvm.png)

As [hey](https://github.com/rakyll/hey) reports the average, when the test as made, was `Requests/sec: 9133.5802`.

### Native Image
To generate the performance graph using Native Image, use the following command:

```bash
$ make native
````
It will generate an image with the result of `500k` requests as below:

As [hey](https://github.com/rakyll/hey) reports the average, when the test as made, was `Requests/sec: 11751.1066`.

## Conclusion
Using GraalVM Native Images, we can see a performance improvement in:

- Startup time
- Memory consumption
- CPU usage
- Requests per second

## References
- [native-spring-boot](https://github.com/alina-yur/native-spring-boot)
- [Bootiful GraalVM by Josh Long & Alina Yurenko](https://www.youtube.com/watch?v=3OBhk1c0GBs)
- [GraalVM Resources](https://alina-yur.github.io/graalvm-resources/)

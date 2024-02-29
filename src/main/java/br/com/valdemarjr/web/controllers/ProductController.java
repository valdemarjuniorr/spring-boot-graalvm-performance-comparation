package br.com.valdemarjr.web.controllers;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {

  private final AtomicLong counter = new AtomicLong();

  @GetMapping("/products")
  public Product getProducts() {
    return new Product(counter.get(), "product " + counter.getAndIncrement());
  }
}

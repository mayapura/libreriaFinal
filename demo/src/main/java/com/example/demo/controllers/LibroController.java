package com.example.demo.controllers;

import java.util.ArrayList;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.demo.models.LibroModel;
import com.example.demo.services.LibroService;

@RestController
@RequestMapping("/libros")
public class LibroController {
    @Autowired
    LibroService libroService;
    @CrossOrigin
    @GetMapping()
    public ArrayList<LibroModel>obtenerLibros(){
        return libroService.obtenerLibros();
    }
    @CrossOrigin
    @PostMapping
    public LibroModel guardarLibro(@RequestBody LibroModel libro){
        return this.libroService.guardarLibro(libro);
    }
    @CrossOrigin
    @GetMapping(path = "/{id}")
    public Optional<LibroModel> obtenerLiroPorId(@PathVariable("id") Long id){
        return this.libroService.obtenerPorId(id);
    }
/*     @CrossOrigin
    @GetMapping("/query")
    public ArrayList<LibroModel> obtenerLibrosDestacados(@RequestParam("destacado")Integer destacado){
        return this.libroService.obtenerDestacado(destacado);
    } */
    @CrossOrigin
    @GetMapping("/query")
    public ArrayList<LibroModel> obtenerLibrosDestacados(@RequestParam("destacado")Integer destacado){
        ArrayList<LibroModel> destacados;
        ArrayList<LibroModel> destaca = new ArrayList<>();
        Random random = new Random();
        destacados=this.libroService.obtenerDestacado(destacado);
        for (int i=0;i<2;i++) {
          var n = random.nextInt(destacados.size());
            if(i == n){
                destaca.add(destacados.get(n));
            }
        }
        return destaca;
    }
  
    @CrossOrigin
    @DeleteMapping(path = "/{id}")
    public String eliminarPorId(@PathVariable("id") Long id){
        boolean ok = this.libroService.eliminarLibro(id);
        if (ok){
            return "Se eliminó el libro con id " + id;
        }else{
            return "No se pudo eliminar el libro con id "+id;
        }
    }
    
}

package com.example.demo.models;

import javax.persistence.*;

@Entity
@Table(name="libro")
public class LibroModel {

    //Atributos

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;
    private String titulo;
    private String autor;
    private String descripcion;
    private String imagen;
    private Integer stock;
    private Float precio;
    private Integer destacado;

    //Getter y Setters

    public void setId(Long id) {
        this.id = id;
    }
    public Long getId(){
        return id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getTitulo(){
        return titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
    public String getAutor(){
        return autor;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getDescripcion(){
        return descripcion;
    }

    public void setImagen(String imagen){
        this.imagen = imagen;
    }
    public String getImagen(){
        return imagen;
    }
    
    public void setStock(Integer stock){
        this.stock = stock;
    }
    public Integer getStock(){
        return stock;
    }

    public void setPrecio(Float precio){
        this.precio = precio;
    }
    public Float getPrecio(){
        return precio;
    }
    
    public void setDestacado(Integer destacado){
        this.destacado = destacado;
    }
    public Integer getDestacado(){
        return destacado;
    }
    
}

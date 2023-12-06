package com.graziela.demo.entities;

import jakarta.persistence.*;

import java.time.Instant;
import java.util.Objects;

@Entity
@Table(name = "tb_block")
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Instant inicio;
    private Instant termino;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

    public Block(){}

    public Block(Integer id, Instant inicio, Instant termino) {
        this.id = id;
        this.inicio = inicio;
        this.termino = termino;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Instant getInicio() {
        return inicio;
    }

    public void setInicio(Instant inicio) {
        this.inicio = inicio;
    }

    public Instant getTermino() {
        return termino;
    }

    public void setTermino(Instant termino) {
        this.termino = termino;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Block block = (Block) o;

        return Objects.equals(id, block.id);
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }
}

package com.flextonic.restapi.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "ra_user")
public class User {
    private Integer id;
    private String name;
    private String email;
    private String phone;
    private String city;
    private Set<Technology> technologies = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id_user")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Column(name = "city")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "ra_user_technology",
            joinColumns = @JoinColumn(name = "id_user"),
            inverseJoinColumns = @JoinColumn(name = "tech_id")
    )
    @JsonManagedReference
    public Set<Technology> getTechnologies() {
        return technologies;
    }

    public void setTechnologies(Set<Technology> technologies) {
        this.technologies = technologies;
    }
}

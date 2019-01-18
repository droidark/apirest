package com.flextonic.restapi.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "ra_technology")
public class Technology {
    private Integer id;
    private String name;
    private Boolean active;
    private Set<User> users = new HashSet<>();

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "tech_id")
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

    @Column(name = "is_active")
    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @ManyToMany(mappedBy = "technologies")
    @JsonBackReference
    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}

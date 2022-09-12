package net.codetechn.crud.entity;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private  int id;
    @Column(name = "name")
    private String name;
    @Column(name = "surname")
    private  String surname;
    @Column(name = "email")
    private  String email;
    @Column(name = "address")
    private String address;
    @Column(name = "number")
    private  String number;
    @Column(name = "career")
    private String career;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", number='" + number + '\'' +
                ", career='" + career + '\'' +
                '}';
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCareer() {
        return career;
    }

    public User(int id, String name, String surname, String email, String address, String number, String career) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.address = address;
        this.number = number;
        this.career = career;
    }

    public User (){

    }

    public void setCareer(String career) {
        this.career = career;
    }
}

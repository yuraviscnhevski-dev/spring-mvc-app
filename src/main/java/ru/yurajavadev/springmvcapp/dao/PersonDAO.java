package ru.yurajavadev.springmvcapp.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.yurajavadev.springmvcapp.models.Person;
import java.util.List;

@Repository
public class PersonDAO implements PersonDAOInterface {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Person> index() {
        System.out.println("\n=== ВЫЗОВ index() ===");
        List<Person> people = entityManager.createQuery("SELECT p FROM Person p", Person.class)
                .getResultList();
        System.out.println("Найдено людей: " + people.size());
        if (!people.isEmpty()) {
            System.out.println("Первый человек: " + people.get(0).getName());
        }
        return people;
    }

    @Override
    public Person show(int id) {
        System.out.println("\n=== ВЫЗОВ show() с id=" + id + " ===");
        Person person = entityManager.find(Person.class, id);
        if (person != null) {
            System.out.println("Найден: " + person.getName() + " " + person.getLastName());
        } else {
            System.out.println("Человек с id=" + id + " не найден");
        }
        return person;
    }

    @Override
    public void save(Person person) {
        System.out.println("\n=== ВЫЗОВ save() ===");
        System.out.println("Сохраняем: " + person.getName() + " " + person.getLastName() + ", возраст: " + person.getAge());

        entityManager.persist(person);

        System.out.println("Сохранен с ID: " + person.getId());
    }

    @Override
    public void update(int id, Person updatedPerson) {
        System.out.println("\n=== ВЫЗОВ update() с id=" + id + " ===");
        System.out.println("Новые данные: " + updatedPerson.getName() + " " + updatedPerson.getLastName() + ", возраст: " + updatedPerson.getAge());

        Person person = entityManager.find(Person.class, id);
        if (person != null) {
            person.setName(updatedPerson.getName());
            person.setLastName(updatedPerson.getLastName());
            person.setAge(updatedPerson.getAge());
            System.out.println("Обновлен: " + person.getName());
        } else {
            System.out.println("Человек с id=" + id + " не найден для обновления");
        }
    }

    @Override
    public void delete(int id) {
        System.out.println("\n=== ВЫЗОВ delete() с id=" + id + " ===");
        Person person = entityManager.find(Person.class, id);
        if (person != null) {
            entityManager.remove(person);
            System.out.println("Удален: " + person.getName());
        } else {
            System.out.println("Человек с id=" + id + " не найден для удаления");
        }
    }
}
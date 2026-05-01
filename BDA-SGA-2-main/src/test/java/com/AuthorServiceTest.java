package com;

import com.entity.Author;
import com.repository.AuthorRepository;
import com.service.AuthorService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class AuthorServiceTest {

    @MockBean
    private AuthorRepository authorRepository;

    @Autowired
    private AuthorService authorService;

    @Test
    public void testSaveAuthor() {
        Author author = new Author();
        author.setName("John Doe");

        Mockito.when(authorRepository.save(author)).thenReturn(author);

        Author saved = authorService.saveAuthor(author);

        assertEquals("John Doe", saved.getName());
    }
}
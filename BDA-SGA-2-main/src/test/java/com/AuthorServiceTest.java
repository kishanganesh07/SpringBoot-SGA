package com;

import com.entity.Author;
import com.repository.AuthorRepository;
import com.service.AuthorService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class AuthorServiceTest {

    @Mock
    private AuthorRepository authorRepository;

    @InjectMocks
    private AuthorService authorService;

    @Test
    public void testSaveAuthor() {
        Author author = new Author();
        author.setName("Kishan");

        Mockito.when(authorRepository.save(author)).thenReturn(author);

        Author saved = authorService.saveAuthor(author);

        assertEquals("Kishan", saved.getName());
    }

    @Test
    public void testGetAllAuthors() {
        List<Author> list = new ArrayList<>();
        list.add(new Author());

        Mockito.when(authorRepository.findAll()).thenReturn(list);

        List<Author> result = authorService.getAllAuthors();

        assertEquals(1, result.size());
    }

    @Test
    public void testGetAuthorById() {
        Author author = new Author();
        author.setAuthorId(1L);

        Mockito.when(authorRepository.findById(1L)).thenReturn(Optional.of(author));

        Author result = authorService.getAuthorById(1L);

        assertEquals(1L, result.getAuthorId());
    }
}
import com.yrz.pojo.Books;
import com.yrz.service.BookServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Mytest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        BookServiceImpl bookServiceImpl = context.getBean("bookServiceImpl", BookServiceImpl.class);

        for (Books books: bookServiceImpl.queryAllBook()
             ) {
            System.out.println(books);
        }

    }
}

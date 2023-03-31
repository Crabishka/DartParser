import gen.DartGrammaLexer;
import gen.DartGrammaParser;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import java.io.*;

public class Main {

    public static void main(String[] args) throws IOException {

        FileInputStream inputStream = new FileInputStream("src/main/resources/func.dart");

        CharStream input = CharStreams.fromStream(inputStream);

        DartGrammaLexer lexer = new DartGrammaLexer(input);

        CommonTokenStream tokens = new CommonTokenStream(lexer);

        DartGrammaParser parser = new DartGrammaParser(tokens);

        ParseTree tree = parser.compilationUnit();
        System.out.println(tree.toStringTree(parser));
    }
}

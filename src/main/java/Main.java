import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {
        FileInputStream inputStream = new FileInputStream("src/main/resources/func.dart");

        CharStream input = CharStreams.fromStream(inputStream);

        DartGrammaLexer lexer = new DartGrammaLexer(input);

        CommonTokenStream tokens = new CommonTokenStream(lexer);

        DartGrammaParser parser = new DartGrammaParser(tokens);

        ParseTree tree = parser.main();
        System.out.println(tree.toStringTree(parser));

    }

}

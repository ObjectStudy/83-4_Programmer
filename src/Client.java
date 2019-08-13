import spec.Language;
import spec.Library;

public class Client implements Paper {

    Library library = new Library("vueJS");
    Language language = new Language("KottlinJS");
    Programmer programmer;

    public void setProgrammer(Programmer programmer) {
        this.programmer = programmer;
    }


    @Override
    public void setData(Programmer programmer) {
        if(programmer instanceof FrontEnd) {
            FrontEnd frontEnd = (FrontEnd)programmer;
            frontEnd.setLibrary(library);
            frontEnd.setLanguage(language);
        }
    }
}

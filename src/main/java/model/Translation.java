package model;

import java.util.ArrayList;

public class Translation {

    public static ArrayList<ArrayList<String>> translation = new ArrayList<>();

    static {
        ArrayList<String> russian = new ArrayList<>();
        ArrayList<String> english = new ArrayList<>();

        english.add("Full Name");
        english.add("Age");
        english.add("Country");
        english.add("Gender");
        english.add("Insurance Number");
        english.add("Send Document");
        english.add("Male");
        english.add("Female");

        russian.add("ФИО");
        russian.add("Возраст");
        russian.add("Страна");
        russian.add("Пол");
        russian.add("Номер страховки");
        russian.add("Отправить документ");
        russian.add("Мужской");
        russian.add("Женский");

        translation.add(english);
        translation.add(russian);
    }
}

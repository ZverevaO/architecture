//
//  BdQuestions.swift
//  millionaire
//
//  Created by Оксана Зверева on 01.08.2020.
//  Copyright © 2020 Oksana Zvereva. All rights reserved.
//

import Foundation
//вопросы
class BdQuestions {
    static func getQuestions () -> [Question] {
        return[Question(questions: "Какому танцу обучал отдыхающих Бывалый в фильме 'Кавказская пленница'?", answers: ["Вальсу","Твисту","Мазурке","Котильеноу"], correctAnswer: 1, difficulty: 1),
               
               Question(questions: "Какой сад воспел Алексей Глызин?", answers: ["Летний","Осенний","Зимний","Весенний"], correctAnswer: 2, difficulty: 1),

               Question(questions: "Кто из героев романа Дюма дослужился до звания маршала Франции?", answers: ["Атос","Портос","Арамис","Д'Артаньян"], correctAnswer: 3, difficulty: 4),

               Question(questions: "Кого или что изучет герпетолог?", answers: ["Бабочек","Лекартвенные травы","Черепах","Герпес"], correctAnswer: 2, difficulty: 1),

               Question(questions: "Какой конструктор создал самолет У-2, прозванный 'кукурузником'?", answers: ["Поликарпов","Петяков","Лавочкин","Туполев"], correctAnswer: 0, difficulty: 5),

               Question(questions: "Чья фамилия стала названием блюда карпаччо?", answers: ["Художника","Повара","Врача","Дожа Венеции"], correctAnswer: 0, difficulty: 5),

               Question(questions: "В какой азиатской стране вручают кинопремии 'Золотой петух' и 'Сто цветов'?", answers: ["Япония","Китай","Таиланд","Индия"], correctAnswer: 1, difficulty: 2),

               Question(questions: "Какая страна не омывается морем?", answers: ["Серибия","Албания","Черногория","Румыния"], correctAnswer: 0, difficulty: 3),

               Question(questions: "Как герой фильма  'Мимино' назвал свой вертолет?", answers: ["Муха","Пчелка","Стрекоза","Бабочка"], correctAnswer: 3, difficulty: 5),

               Question(questions: "Какую фразу в фильме 'Иван Васильевич меняет профессию' Бунша сказал иностранному послу?", answers: ["Гитлер Капут!","Даст ист фантастиш!","Доннерветтер","Хенде хох!"], correctAnswer: 0, difficulty: 2),

               Question(questions: "Какие бывают лопаты", answers: ["совковые","тяпковые","мотыжные","граблевые"], correctAnswer: 0, difficulty: 1),

               Question(questions: "На каком курсе школы Хогвартс учился Гарри Поттер, когда раскрыл секрет Тайной комнаты?", answers: ["на четвертом","на втором","на первом","на третьем"], correctAnswer: 1, difficulty: 1)]
    }
}

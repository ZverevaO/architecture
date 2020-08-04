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
               
               Question(questions: "Кто из героев романа Дюма дослужился до звания маршала Франции?", answers: ["Атос","Портос","Арамис","Д'Артаньян"], correctAnswer: 3, difficulty: 5),
               
               Question(questions: "Кого или что изучет герпетолог?", answers: ["Бабочек","Лекартвенные травы","Черепах","Герпес"], correctAnswer: 2, difficulty: 1),
               
               Question(questions: "Какой конструктор создал самолет У-2, прозванный 'кукурузником'?", answers: ["Поликарпов","Петяков","Лавочкин","Туполев"], correctAnswer: 0, difficulty: 5),
               
               Question(questions: "Чья фамилия стала названием блюда карпаччо?", answers: ["Художника","Повара","Врача","Дожа Венеции"], correctAnswer: 0, difficulty: 5),
               
               Question(questions: "В какой азиатской стране вручают кинопремии 'Золотой петух' и 'Сто цветов'?", answers: ["Япония","Китай","Таиланд","Индия"], correctAnswer: 1, difficulty: 2),
               
               Question(questions: "Какая страна не омывается морем?", answers: ["Серибия","Албания","Черногория","Румыния"], correctAnswer: 0, difficulty: 3),
               
               Question(questions: "Как герой фильма  'Мимино' назвал свой вертолет?", answers: ["Муха","Пчелка","Стрекоза","Бабочка"], correctAnswer: 3, difficulty: 5),
               
               Question(questions: "Какую фразу в фильме 'Иван Васильевич меняет профессию' Бунша сказал иностранному послу?", answers: ["Гитлер Капут!","Даст ист фантастиш!","Доннерветтер","Хенде хох!"], correctAnswer: 0, difficulty: 2),
               
               Question(questions: "Какие бывают лопаты", answers: ["совковые","тяпковые","мотыжные","граблевые"], correctAnswer: 0, difficulty: 1),
               
               Question(questions: "На каком курсе школы Хогвартс учился Гарри Поттер, когда раскрыл секрет Тайной комнаты?", answers: ["на четвертом","на втором","на первом","на третьем"], correctAnswer: 1, difficulty: 1),
               
               Question(questions: "Как закончить стрку из 'Песнь о соколе' Горкого: 'Рожденный ползать летать ...'?", answers: ["не может","не хочет","не будет","не любит"], correctAnswer: 0, difficulty: 1),
               
               Question(questions: "Кого приобретает человек, который ничего толком не знает о покупке?", answers: ["тигра в клетке","кота в мешке","пса в будке","карася в аквариуме"], correctAnswer: 1, difficulty: 1),
               
               Question(questions: "Что необходимо для прогулки на гондоле?", answers: ["крылья","бензин","педади","весло"], correctAnswer: 3, difficulty: 1),
               
               Question(questions: "Как звали космического пирата из книги Кира Булычева?", answers: ["Кот","Свин","Крыс","Ворон"], correctAnswer: 2, difficulty: 3),
               
               Question(questions: "Что раньше говорили о неприятно пораженном, ошеломленном человке?", answers: ["фраппирован","глясирован","моккирован","капучинирован"], correctAnswer: 0, difficulty: 1),
               
               Question(questions: "Чем подают сигналы судьи во время конкура", answers: ["свистком","сиреной","колоколом","пистолетом"], correctAnswer: 2, difficulty: 4),
               
               Question(questions: "Исследование чего принеслр трем ученым Нобелевскую премию по физиологии и медицине за 2017 год?", answers: ["циркуляция крови","циркадных ритмов","циркониевых зубных протезов","песен цикад"], correctAnswer: 1, difficulty: 3),
               
               Question(questions: "Кто из спортсемнов порой прибегает к 'обезьяней игре'?", answers: ["регбист","гольфист","шахматист","волейболист"], correctAnswer: 2, difficulty: 5),
               
               Question(questions: "Кто был автором 'Стихотворений, присланных из Германии', опубликованных в пушкинском журнале 'Современник'?", answers: ["Гете","Гейне","Пушкин","Тютчев"], correctAnswer: 3, difficulty: 9),
               
               Question(questions: "Что в переводе с латыни букально означает слово 'Президент'?", answers: ["идущий вперед","бегущий вперед","стоящий впереди","сидящий впереди"], correctAnswer: 3, difficulty: 10),
               
               Question(questions: "Что появилось в Ессентуках в 1903 году и получило название 'Белый уголь'?", answers: ["солянная шахта","ГЭС","кероссиновый завод","психбольница"], correctAnswer: 1, difficulty: 5),
               
               Question(questions: "Какой их этих народов на Руси именовали самоедами?", answers: ["чукчей","ненцев","эвенков","якутов"], correctAnswer: 1, difficulty: 5),
               
               Question(questions: "Что неоднократно происходит с заглавным героем биографического фильма 'Молодой Годар'?", answers: ["разбивает очки","путается в шнурках","теряет бумажник","забывает ключи"], correctAnswer: 0, difficulty: 13),
               
               Question(questions: "Как не называется ни одна часть рыболовного крючка?", answers: ["жало","поддев","цевье","кукан"], correctAnswer: 3, difficulty: 4),
               
               Question(questions: "Какая картина Анри Матисса 47 дней провисела в Музее современного исскуства Нью-Йорка вверх ногами?", answers: ["великолепная","танец","музыка","лодка"], correctAnswer: 3, difficulty: 15)
        ]
    }
}

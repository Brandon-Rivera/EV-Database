USE BAMX;

INSERT INTO sex(id,sexName)
VALUES
(1,"Hombre"),
(2,"Mujer"),
(3,"No esecificar");

INSERT INTO questionType(id,qType)
VALUES
(1,"Pregunta de respuesta corta"),
(2,"Pregunta de respuesta larga"),
(3,"Pregunta de opción múltiple (4 opciones)"),
(4,"Pregunta de opción múltiple (5 opciones)"),
(5,"Pregunta en tabla (15*6)"),
(6,"Pregunta en tabla (15*8)");

INSERT INTO questions(id,questionType,question,questionDescription,isActive) 
VALUES
(1,2,"¿Cuántas comidas se hacen al día?","","T"),
(2,2,"¿Se añade sal a las comidas preparadas?","","T"),
(3,4,"¿Con qué frecuencia se consumen los siguientes alimentos?","","T"),
(4,4,"¿En qué cantidad se consumen los alimentos mencionados previamente?","","T"),
(5,2,"¿Qué porcentaje del ingreso familiar se destinó a la alimentación?","","T"),
(6,1,"Comentarios adicionales:","","T");

INSERT INTO questionOptions(idQuestions,optionName,optionValue)
VALUES
(1,"1",0),
(1,"2",1),
(1,"3",2),
(1,"4",3),
(1,"5 o más",4),
(2,"Sí",0),
(2,"2 de cada 3 veces",1),
(2,"1 de cada 3 veces",2),
(2,"No",3),
(3,"Leche",0),
(3,"Pollo",1),
(3,"Atún",2),
(3,"Carne de res",3),
(3,"Carne de cerdo",4),
(3,"Huevo",5),
(3,"Arroz",6),
(3,"Tortilla, pan o galletas",7),
(3,"Verduras crudas o cocidas",8),
(3,"Verduras en lata o jugo",9),
(3,"Frutas enteras",10),
(3,"Frutas enlatadas o en jugo",11),
(3,"Frijol lenteja o garbanzo",12),
(3,"Nuez, cacahuate o pistache",13),
(3,"Refresco",14),
(3,"Diario (6 - 7 veces por semana)",-1),
(3,"Regularmente (4 - 5 veces por semana)",-2),
(3,"Ocasionalmente (2 - 3 veces por semana)",-3),
(3,"Casi nunca (1 vez por semana o menos)",-4),
(3,"Nunca",-5),
(4,"Leche",0),
(4,"Pollo",1),
(4,"Atún",2),
(4,"Carne de res",3),
(4,"Carne de cerdo",4),
(4,"Huevo",5),
(4,"Arroz",6),
(4,"Tortilla, pan o galletas",7),
(4,"Verduras crudas o cocidas",8),
(4,"Verduras en lata o jugo",9),
(4,"Frutas enteras",10),
(4,"Frutas enlatadas o en jugo",11),
(4,"Frijol lenteja o garbanzo",12),
(4,"Nuez, cacahuate o pistache",13),
(4,"Refresco",14),
(4,"1/4 de taza",-1),
(4,"1/2 de taza",-2),
(4,"3/4 de taza",-3),
(4,"1 taza",-4),
(4,"1 taza y media",-5),
(4,"2 tazas",-6),
(4,"Más de 2 tazas",-7),
(4,"Nada (si se seleccionó nunca)",-8),
(5,"Muy poco (10% o menos)",0),
(5,"Poco (11 a 30%)",1),
(5,"Considerable (31 a 50%)",2),
(5,"Una gran parte (51 a 70%",3),
(5,"La mayoría (71 a 90%)",4),
(5,"Casi todo (Más del 90%)",5);

INSERT INTO food(foodName,foodDesc,lipidos,carbohidratos,proteinas,quantity,stock,expiration)
VALUES
("Leche","",4,12,9,0,),
("Pollo","",,,,0,),
("Atún","",,,,0,),
("Carne de res","",,,,0,),
("Carne de cerdo","",,,,0,),
("Huevo","",,,,0,),
("Arroz","",,,,0,),
("Tortillas, pan o galletas","",,,,0,),
("Verduras crudas o cocidas","",,,,0,),
("Verduras en lata o jugo","",,,,0,),
("Frutas enteras","",,,,0,),
("Frutas enlatadas o en jugo","",,,,0,),
("Frijol, lenteja o garbanzo","",,,,0,),
("Nuez, cacahuate o pistache","",,,,0,),
("Refresco","",,,,0,),

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CERO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'cero', '/ˈθe.ro/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_UNO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'uno', '/ˈu.no/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DOS'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'dos', '/dos/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_TRES'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'tres', '/tɾes/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CUATRO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'cuatro', '/ˈkwa.tɾo/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CINCO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'cinco', '/ˈθiŋ.ko/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SEIS'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'seis', '/seis/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SIETE'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'siete', '/ˈsje.te/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_OCHO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'ocho', '/ˈo.tʃo/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_NUEVE'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'nueve', '/ˈnwe.βe/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DIEZ'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'diez', '/djeθ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='CASA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'casa', '/ˈka.sa/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'casas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MESA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'mesa', '/ˈme.sa/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'mesas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='SILLA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'silla', '/ˈsi.ʝa/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'sillas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='PUERTA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'puerta', '/ˈpweɾ.ta/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'puertas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENTANA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'ventana', '/benˈta.na/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'ventanas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='CAMA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'cama', '/ˈka.ma/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'camas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='LIBRO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'libro', '/ˈli.bɾo/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'el', 'masculino', 'libros', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AGUA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'agua', '/ˈa.ɣwa/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'el', 'femenino', 'aguas', 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='PERSONA'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'persona', '/peɾˈsona/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'personas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='HOMBRE'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'hombre', '/ˈombɾe/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'el', 'masculino', 'hombres', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MUJER'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'mujer', '/muˈxeɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'la', 'femenino', 'mujeres', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NINO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'niño', '/ˈniɲo/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'el', 'masculino', 'niños', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AMIGO'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'amigo', '/aˈmiɣo/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'el', 'masculino', 'amigos', 0, 1, 1),

((SELECT idConcepto FROM conceptos WHERE codigo='SER'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'ser', '/seɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='TENER'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'tener', '/teˈneɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='IR'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'ir', '/iɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENIR'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'venir', '/beˈniɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='COMER'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'comer', '/koˈmeɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='BEBER'), (SELECT idIdioma FROM idiomas WHERE codigo='es'), 'beber', '/beˈbeɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CERO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'zero', '/ˈzɪəɹoʊ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_UNO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'one', '/wʌn/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DOS'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'two', '/tuː/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_TRES'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'three', '/θɹiː/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CUATRO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'four', '/fɔɹ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CINCO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'five', '/faɪv/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SEIS'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'six', '/sɪks/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SIETE'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'seven', '/ˈsɛvən/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_OCHO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'eight', '/eɪt/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_NUEVE'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'nine', '/naɪn/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DIEZ'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'ten', '/tɛn/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='CASA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'house', '/haʊs/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'houses', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MESA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'table', '/ˈteɪbəl/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'tables', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='SILLA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'chair', '/tʃɛɹ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'chairs', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='PUERTA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'door', '/dɔɹ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'doors', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENTANA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'window', '/ˈwɪndoʊ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'windows', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='CAMA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'bed', '/bɛd/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'beds', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='LIBRO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'book', '/bʊk/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'books', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AGUA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'water', '/ˈwɔːtɚ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='PERSONA'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'person', '/ˈpɜːrsən/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'people', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='HOMBRE'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'man', '/mæn/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'men', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MUJER'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'woman', '/ˈwʊmən/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'women', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NINO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'child', '/tʃaɪld/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'children', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AMIGO'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'friend', '/frɛnd/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'the', NULL, 'friends', 0, 1, 1),

((SELECT idConcepto FROM conceptos WHERE codigo='SER'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'be', '/biː/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='TENER'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'have', '/hæv/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='IR'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'go', '/ɡoʊ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENIR'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'come', '/kʌm/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='COMER'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'eat', '/iːt/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='BEBER'), (SELECT idIdioma FROM idiomas WHERE codigo='en'), 'drink', '/drɪŋk/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CERO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'zero', '/ˈzeɾu/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_UNO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'um', '/ũ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, 'masculino', NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DOS'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'dois', '/dojs/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, 'masculino', NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_TRES'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'três', '/tɾes/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CUATRO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'quatro', '/ˈkwatɾu/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_CINCO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'cinco', '/ˈsĩku/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SEIS'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'seis', '/sejs/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_SIETE'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'sete', '/ˈsɛtʃi/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_OCHO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'oito', '/ˈojtu/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_NUEVE'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'nove', '/ˈnɔvi/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NUMERO_DIEZ'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'dez', '/des/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), NULL, NULL, NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='CASA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'casa', '/ˈkazɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'casas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MESA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'mesa', '/ˈmezɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'mesas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='SILLA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'cadeira', '/kaˈdejɾɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'cadeiras', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='PUERTA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'porta', '/ˈpoɾtɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'portas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENTANA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'janela', '/ʒaˈnɛlɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'janelas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='CAMA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'cama', '/ˈkɐmɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'camas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='LIBRO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'livro', '/ˈlivɾu/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'o', 'masculino', 'livros', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AGUA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'água', '/ˈaɡwɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', NULL, 0, 1, 1);

INSERT INTO palabras (
    idConcepto,
    idIdioma,
    palabra,
    pronunciacionAfi,
    idTipoPalabra,
    articulo,
    genero,
    plural,
    esIrregular,
    esComun,
    ordenVisualizacion
)
VALUES
((SELECT idConcepto FROM conceptos WHERE codigo='PERSONA'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'pessoa', '/peˈsoɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'pessoas', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='HOMBRE'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'homem', '/ˈɔmẽj/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'o', 'masculino', 'homens', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='MUJER'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'mulher', '/muˈʎɛɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'mulheres', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='NINO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'criança', '/kɾiˈɐ̃sɐ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'a', 'femenino', 'crianças', 0, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='AMIGO'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'amigo', '/aˈmiɡu/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='SUST'), 'o', 'masculino', 'amigos', 0, 1, 1),

((SELECT idConcepto FROM conceptos WHERE codigo='SER'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'ser', '/seɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='TENER'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'ter', '/teɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='IR'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'ir', '/iɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='VENIR'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'vir', '/viɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='COMER'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'comer', '/koˈmeɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1),
((SELECT idConcepto FROM conceptos WHERE codigo='BEBER'), (SELECT idIdioma FROM idiomas WHERE codigo='pt'), 'beber', '/beˈbeɾ/', (SELECT idTipoPalabra FROM tiposPalabra WHERE codigo='VERB'), NULL, NULL, NULL, 1, 1, 1);
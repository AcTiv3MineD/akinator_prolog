%% DYNAMICS
:- dynamic
	si/1,
	no/1.

%% HIPOTESIS %%
hipotesis( Persona, Respuesta ) :- persona( Persona, Respuesta ), write( 'Persona -> ' ), write( Persona ), nl, Respuesta == 'no', !, fail.
hipotesis( Persona, Respuesta ) :- persona( Persona, Respuesta ), Respuesta == 'en_proceso', !.
hipotesis( Persona, Respuesta ) :- persona( Persona, Respuesta ), Respuesta == 'encontrado', !.
hipotesis( desconocido, desconocido ).

%%hipotesis( juan_daniel_joa, Respuesta ) :- juan_daniel_joa( Respuesta ), Respuesta == 'en_proceso', !.
%%hipotesis( nelson_daniel_duran, Respuesta ) :- nelson_daniel_duran, Respuesta == 'en_proceso', !.
%%hipotesis( desconocido, desconocido ).

%% LISTAS %%
lista_persona( juan_daniel_joa, [ 'es_sereno', 'pelo_color_negro', 'tiene_barba', 'estatura_promedio', 'peso_promedio', 'color_piel_blanca' ] ).
lista_persona( nelson_daniel_duran, [ 'es_pasivo', 'pelo_color_negro', 'peso_flaco', 'estatura_alto', 'color_piel_mulato' ] ).

%% PERSONAS %%
persona( Persona, Estado ) :-
	verificar_lista( Persona, Estado ).

verificar_lista( Persona, Estado ) :-
	lista_persona( Persona, Lista ),
	recorrer_lista( Lista, Estado ).

recorrer_lista( [ ],  'encontrado' ).
recorrer_lista( [ Cabeza | Cola ], Estado ) :-
	verifica( Cabeza, Resultado ),
	(
		Resultado == 'no' -> ( Estado = 'No', fail );
		(
			Resultado == 'en_proceso' -> ( Estado = 'en_proceso', true );
			recorrer_lista( Cola, Resp )
		)
	),
	Estado = Resp.

/*
persona( nelson_daniel_duran, Estado ) :-
	verifica( 'es_pasivo', Estado ),
	verifica( 'pelo_color_negro', Estado ),
	verifica( 'peso_flaco', Estado ),
	verifica( 'estatura_alto', Estado ),
	verifica( 'color_piel_mulato', Estado ),
	verifica( 'es_aplicado', Estado ),
	verifica( 'sexo_masculino', Estado ),
	verifica( 'ojos_color_marron_oscuro', Estado ).

*/
%% HEHE
verifica( Pregunta, Respuesta ) :- no( Pregunta ), Respuesta = 'no', !.
verifica( Pregunta, Respuesta ) :- si( Pregunta ), Respuesta = 'encontrado', !.
verifica( Pregunta, Respuesta ) :- preguntar( Pregunta ), Respuesta = 'en_proceso'.

preguntar( X ) :- write( X ), nl,!.
validar( X ) :- assert( si( X ) ).
negar( X ) :- assert( no( X ) ).

%% LIMPIAR TODO
limpiar :- retract( si( _ ) ), fail.
limpiar :- retract( no( _ ) ), fail.
limpiar.
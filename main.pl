%% DYNAMICS
:- dynamic
	si/1,
	no/1.

%% HIPOTESIS %%
hipotesis( Persona, Pregunta, Respuesta ) :- persona( Persona, Pregunta, Respuesta ), Respuesta == 'no', !, fail.
hipotesis( Persona, Pregunta, Respuesta ) :- persona( Persona, Pregunta, Respuesta ), Respuesta == 'en_proceso', !.
hipotesis( Persona, Pregunta, Respuesta ) :- persona( Persona, Pregunta, Respuesta ), Respuesta == 'encontrado', !.
hipotesis( _, _, desconocido ).

%% LISTAS %%
lista_persona( juan_daniel_joa, [ 'es_sereno', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_negro'] ).
lista_persona( nelson_daniel_duran, [ 'es_pasivo', 'pelo_color_negro', 'estatura_promedio', 'peso_flaco', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( jean_louis, [ 'es_pasivo', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_pequeno', 'peso_flaco', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( pierre, [ 'es_pasivo', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_alto', 'peso_flaco', 'color_piel_negro', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( ansel_corona, [ 'es_sociable', 'pelo_color_rubio', 'tiene_barba', 'estatura_alto', 'peso_gordo', 'es_narizu', 'color_piel_blanca', 'sexo_masculino', 'color_ojos_verde'] ).
lista_persona( eva_concepcion, [ 'es_sociable', 'pelo_color_castano_oscuro', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_moreno', 'es_aplicado', 'sexo_femenino', 'color_ojos_marron_oscuro'] ).
lista_persona( john_jerry_bien_aime, [ 'es_agradable', 'pelo_color_negro', 'tiene_barba', 'estatura_alto', 'peso_promedio', 'es_narizu', 'color_piel_negro', 'es_aplicado', 'sexo_masculino', 'color_ojos_negro'] ).
lista_persona( gleyder_hernandez, [ 'es_sereno', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( angel_gonzalez, [ 'es_sociable', 'pelo_color_negro', 'tiene_barba', 'estatura_alto', 'peso_promedio', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_negro'] ).
lista_persona( oasting_ferrera, [ 'es_sociable', 'pelo_color_negro', 'tiene_barba', 'estatura_promedio', 'peso_promedio', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( francis_caceres, [ 'es_sociable', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_pequeno', 'peso_flaco', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron'] ).
lista_persona( jesus_henriquez, [ 'es_sociable', 'pelo_color_negro', 'tiene_barba', 'estatura_promedio', 'peso_gordo', 'color_piel_blanca', 'sexo_masculino', 'color_ojos_marron'] ).
lista_persona( gustavo_henriquez, [ 'es_pasivo', 'pelo_color_negro', 'tiene_barba', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_blanca', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( martin_martinez, [ 'es_sereno', 'pelo_color_negro', 'tiene_barba', 'tiene_lente', 'estatura_pequeno', 'peso_gordo', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( isaac_perez, [ 'es_pasivo', 'pelo_color_negro', 'tiene_barba', 'estatura_alto', 'peso_gordo', 'es_narizu', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( dewyn_liriano, [ 'es_sociable', 'pelo_color_castano', 'tiene_barba', 'estatura_alto', 'peso_gordo', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron_oscuro'] ).
lista_persona( stanley_de_moya, [ 'es_sociable', 'pelo_color_castano', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron'] ).
lista_persona( jose_miguel_marcano, [ 'es_sociable', 'pelo_color_castano', 'tiene_lente', 'estatura_promedio', 'peso_gordo', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron'] ).
lista_persona( cesar_mendez, [ 'es_sociable', 'pelo_color_negro', 'estatura_alto', 'peso_flaco', 'color_piel_moreno', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron'] ).
lista_persona( carlos_batista, [ 'es_sociable', 'pelo_color_castano', 'estatura_promedio', 'peso_promedio', 'es_narizu', 'color_piel_blanca', 'es_aplicado', 'sexo_masculino', 'color_ojos_marron'] ).

%% CATEGORIAS
categoria( color_pelo, pelo_color_negro ).
categoria( color_pelo, pelo_color_rubio ).
categoria( color_pelo, pelo_color_castano_oscuro ).
categoria( color_pelo, pelo_color_castano ).

categoria( barba, tiene_barba ).
categoria( lente, tiene_lente ).

categoria( estatura, estatura_promedio ).
categoria( estatura, estatura_pequeno ).
categoria( estatura, estatura_alto ).

categoria( peso, peso_promedio ).
categoria( peso, peso_flaco ).
categoria( peso, peso_gordo ).

categoria( nariz, es_narizu ).
categoria( color_piel, color_piel_blanca ).
categoria( color_piel, color_piel_moreno ).
categoria( color_piel, color_piel_negro ).

categoria( sexo, sexo_masculino ).
categoria( sexo, sexo_femenino ).

categoria( color_ojos, color_ojos_marron ).
categoria( color_ojos, color_ojos_negro ).
categoria( color_ojos, color_ojos_verde ).
categoria( color_ojos, color_ojos_marron_oscuro ).

categoria( personalidad, es_sereno).
categoria( personalidad, es_sociable ).
categoria( personalidad, es_pasivo ).
categoria( personalidad, es_agradable ).
categoria( responsabilidad, es_aplicado ).

%% PERSONAS %%
persona( Persona, Pregunta, Estado ) :-
	verificar_lista( Persona, Pregunta, Estado ), !.

verificar_lista( Persona, Pregunta, Estado ) :-
	lista_persona( Persona, Lista ),
	recorrer_lista( Lista, Pregunta, Estado ).

recorrer_lista( [ ], _, 'encontrado' ).
recorrer_lista( [ Cabeza | Cola ], Pregunta, Estado ) :-
	verifica( Cabeza, Resultado ),
	(
		Resultado == 'no' -> ( Estado = 'No', Pregunta = Cabeza, fail );
		(
			Resultado == 'en_proceso' -> ( Estado = 'en_proceso', Pregunta = Cabeza, true );
			recorrer_lista( Cola, Temp, Resp ),
			Pregunta = Temp
		)
	),
	Estado = Resp.

procesar_respuesta( Respuesta, Pregunta ) :-
	(
		Respuesta == 'no' -> negar( Pregunta );
		validar( Pregunta )
	).

%% HEHE
verifica( Pregunta, Respuesta ) :- no( Pregunta ), Respuesta = 'no', !.
verifica( Pregunta, Respuesta ) :- si( Pregunta ), Respuesta = 'encontrado', !.
verifica( _, Respuesta ) :- Respuesta = 'en_proceso'.

validar( X ) :- assert( si( X ) ), tachar_resto( X ).
negar( X ) :- assert( no( X ) ).

tachar_resto( X ) :-
	categoria( Categoria, X ),
	findall( Intermedio, categoria( Categoria, Intermedio ), Resultado ),
	tachar_diferente( Resultado, X ).

tachar_diferente( [ ], _ ).
tachar_diferente( [ Cabeza | Cola ], X ) :-
	Cabeza \= X,
	negar( Cabeza ),
	tachar_diferente( Cola, X ), !.

tachar_diferente( [ _ | Cola ], X ) :-
	tachar_diferente( Cola, X ).


%% LIMPIAR TODO
limpiar :- retract( si( _ ) ), fail.
limpiar :- retract( no( _ ) ), fail.
limpiar.

%%SERVIDOR WEB:
%%LIBRERIAS
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_client)). %% NECESARIO PARA EL HTTP_READ_DATA
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_error)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_json)). %%Manejo JSON
:- use_module(library(http/http_cors)). %%Manejo Cross-Origin Resource Sharing
:- use_module(library(settings)).
:- use_module(library(http/http_header)).

%%CONFIGURACION INICIAL
server(Port) :-
		http_server( http_dispatch, [ port( Port ) ] ).

:- set_setting( http:cors, [*] ).

%%%%%%%%%%%%%%%%% RUTAS %%%%%%%%%%%%%%%%%%%%%%%%%
%%RUTA PRINCIPAL
:- http_handler( '/', say_hi, [ ] ).

say_hi( _Request ) :-
		format('Content-type: text/plain~n~n'),
		cors_enable,
		format('Hallo Leute!~n').

%%RESETEAR
:- http_handler( '/resetear', resetear_action, [] ).

resetear_action( _Request ) :-
		limpiar,
		cors_enable,
		format( 'sistema_limpiado' ).

%%INICIAR PARTIDA
:- http_handler( '/iniciar', iniciar_action, [] ).

iniciar_action( _Request ) :-
		member( method( post ), _Request ), !,
		limpiar,
		cors_enable,
		hipotesis( Persona, Pregunta, Estado ),
		reply_json_dict( [ Persona, Pregunta, Estado ] ).


%%DAR RESPUESTA
:- http_handler( '/responder', responder_action, [] ).

responder_action( _Request ) :-
		member( method( post ), _Request ), !,
		http_read_data( _Request, [ respuesta = Respuesta, pregunta = Pregunta ], [ ] ),
		procesar_respuesta( Respuesta, Pregunta ),
		cors_enable,
		hipotesis( Persona, NuevaPregunta, Estado ),
		reply_json_dict( [ Persona, NuevaPregunta, Estado ] ).
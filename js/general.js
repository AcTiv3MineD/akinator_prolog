$( document ).ready( function( ) {
	$( "#iniciar_partida" ).click( function( ){
		$.ajax( {
			type: "post",
			url: 'http://localhost:8002/iniciar',
			data: {
				
			}
		} ).done( function( data, textStatus, jqXHR ) {
			$( ".contenedor_pregunta" ).fadeIn();
			$( ".inicio" ).hide();
			$( ".no_encontrado" ).hide();
			$( ".final" ).hide();

			$( "#pregunta_actual" ).val( data[ 1 ] );
			$( "#persona_actual" ).val( data[ 0 ] );

			procesar_pregunta( );
		} );
	} );

	$( ".respuesta" ).click( function( ){
		var respuesta = $( this ).attr( 'rel' );

		$.ajax( {
			type: "post",
			url: 'http://localhost:8002/responder',
			data: {
				'respuesta' : respuesta,
				'pregunta'  : $( "#pregunta_actual" ).val( )
			}
		} ).done( function( data, textStatus, jqXHR ) {
			console.log( data );
			if( data[ 2 ] == 'encontrado' ){
				$( ".contenedor_pregunta" ).hide( );
				$( ".resultado" ).text( dictionary[ data[ 0 ] ] );
				$( ".final" ).fadeIn();
				$( ".inicio" ).fadeIn();
				return;
			}

			if( data[ 2 ] == 'desconocido' ){
				$( ".no_encontrado" ).fadeIn();
				$( ".contenedor_pregunta" ).hide( );
				$( ".inicio" ).fadeIn();

				return;
			}

			$( "#pregunta_actual" ).val( data[ 1 ] );
			$( "#persona_actual" ).val( data[ 0 ] );

			procesar_pregunta( );
		} );
	} );

	function procesar_pregunta( ){
		$( '#pregunta' ).typed( {
			strings: [ dictionary[ $( "#pregunta_actual" ).val( ) ] ],
			typeSpeed: 0
		} );
	}
} );
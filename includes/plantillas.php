
<?php 
function get_header( $name = null, $args = array() ) {
	/**
	 * Fires before the header template file is loaded.
	 *
	 * @since 2.1.0
	 * @since 2.8.0 The `$name` parameter was added.
	 * @since 5.5.0 The `$args` parameter was added.
	 *
	 * @param string|null $name Name of the specific header file to use. Null for the default header.
	 * @param array       $args Additional arguments passed to the header template.
	 */
	//do_action( 'get_header', $name, $args );

	$templates = array();
	$name      = (string) $name;
	if ( '' !== $name ) {
		$templates[] = "header-{$name}.php";
	}

	$templates[] = 'header.php';

	/*if ( ! locate_template( $templates, true, true, $args ) ) {
		return false;
	}*/
}

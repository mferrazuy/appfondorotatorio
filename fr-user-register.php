<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    
    <link rel='stylesheet' id='dashicons-css' href='https://intranet.ejercito.mil.uy/intranet/wp-includes/css/dashicons.min.css?ver=6.2.2' type='text/css' media='all' />
    <link rel='stylesheet' id='buttons-css' href='styles/buttons.css' type='text/css' media='all' />
    <link rel='stylesheet' id='login-css' href='styles/login.css' type='text/css' media='all' />
    <link rel="stylesheet" type="text/css" href="styles/custom-login.css" />
</head>

<body class="login wp-core-ui">
    <div id="login">
        <h1><a href="https://ejercito.mil.uy/">Rendición Fondo Rotatorio</a></h1>
        <h2 class="fondo-rotatorio">Formulario de registro de usuario de Fondo Rotatorio</h2>
        <form name="loginform" id="loginform" action="register.php"
            method="post">
            <p>
                <label for="user_login">Correo electrónico</label>
                <input type="text" name="user_login" id="user_login" class="input" value="" size="20" autocapitalize="none"
                    autocomplete="username">
            </p>

            <div class="user-pass-wrap">
                <label for="user_pass">Contraseña</label>
                <div class="wp-pwd">
                    <input type="password" name="user_pass" id="user_pass" class="input password-input" value="" size="20"
                        autocomplete="current-password" spellcheck="false">

                </div>
            </div>
            <p class="forgetmenot"><input name="rememberme" type="checkbox" id="rememberme" value="forever"> <label
                    for="rememberme">Recordarme</label></p>
            <p class="submit">
                <input type="submit" name="wp-submit" id="wp-submit" class="button button-primary button-large"
                    value="Iniciar sesión">
                <input type="hidden" name="redirect_to" value="https://intranet.ejercito.mil.uy/intranet">
                <input type="hidden" name="testcookie" value="1">
            </p>
        </form>

        <script type="text/javascript">
            function wp_attempt_focus() { setTimeout(function () { try { d = document.getElementById("user_login"); d.focus(); d.select(); } catch (er) { } }, 200); }
            wp_attempt_focus();
            if (typeof wpOnload === 'function') { wpOnload() }		</script>

    </div>
    <script>
        const clases = document;
        console.log(clases);</script>

</body>

</html>
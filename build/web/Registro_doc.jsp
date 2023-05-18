<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">

        <title>Registro</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css-in/css_datos.css">
        <link rel="shortcut icon" href="logo psyche.png" type="image/gif" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            select{
                width: 200px;
                height: 30px;
                text-align: center;

                border-radius:5px ; 
                background-color: #ffffff7e;
                border: 1px solid #DAC6C5;
            }
            body{
                font-family: 'Nunito', sans-serif;
            }
            #navbar{
                background-color: white;
            }
        </style>
        

    </head>
    <body>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>

        <nav class="navbar navbar-expand-lg bg-ligth " id="navbar">
            <div class="container-fluid">
                <img src="https://cdn-icons-png.flaticon.com/128/1787/1787077.png" alt="Logo" width="30" height="24"
                     class="d-inline-block align-text-top">
                <a class="navbar-brand" href="#">&nbsp;Psyche</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href='index.html'>Inicio</a>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#"><b>Sobre nosotros</b></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="forms centrado">
            <div id="formulario" class="centrado">

                <form name="datos" method="post" action="mandarRegistroDoc.jsp">
                    <br>
                    <h1  align="center">Registrarse</h1>
                    <br>
                    <table id="tablita" border="0" class="centrado">
                        <tr>
                            <th><div><label>Nombre de Usuario</label>
                                    <input id="nomb_usuer" type="text" name="nomb_usuer"  maxlength="20"  class="form-control inouts" oninput="this.value =this.value.replace(/[^a-zA-Z0-9\s]/g, '')" required/></div></th>

                        </tr>
                        <tr>
                            <th><div><label>Contrase�a</label>
                                    <input id="pass" type="password" name="pass" maxlength="10"  class="inouts form-control " required/></div></th>

                        </tr>
                        <tr>
                            <th><div><label>Correo Electr�nico</label>
                                    <input id="email" type="email" name="email" maxlength="30"  class="inouts form-control "  required/></div></th>

                        </tr>
                        <tr>
                            <th><div><label>alias</label>
                                    <input id="alias" type="text" name="alias" maxlength="20"  class="inouts form-control " oninput="this.value =this.value.replace(/[^a-zA-Z0-9\s]/g, '')" required/></div></th>

                        </tr>
                        <tr>
                            <th><div><label>Edad</label>
                                    <input id="brith" type="number" name="brith"  class="inouts form-control " min="23" max="90" step="1" required/></div></th>

                        </tr>
                        <tr>
                            <th><div style="display: flex; flex-direction: column;">
                                    <label>Especialidad</label>
                                    <select id="esp" name="esp">
                                        <option value="Conductismo">Conductismo</option>
                                        <option value="cognitiva">cognitiva</option>
                                        <option value="Psicodin�mica">Psicodin�mica</option>
                                        <option value="Humanista">Humanista</option>
                                        <option value="Evolutiva">Evolutiva</option>
                                        <option value="Neuropsicolog�a">Neuropsicolog�a</option>
                                        <option value="Sociocultural" selected="">Sociocultural</option>
                                    </select>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th><div><label>Numero de cedula</label>
                                    <input id="num_ced" type="number" name="num_ced" maxlength="9"  class="inouts form-control " required/></div></th>

                        </tr>
                        <tr class="centrado">
                            <th><br><input id="subir" type="submit" name="subir" class="subir" style= " border-radius: 8px; width: 150px;"/></th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>

    </body>
</html>

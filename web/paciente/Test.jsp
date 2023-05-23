<%-- 
    Document   : diario
    Created on : 5 nov. 2022, 18:47:05
    Author     : bruno fragoso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Test</title>
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/128/1787/1787077.png" type="image/gif" />
        <link href="css/testito.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int idPac = (int) (miSessiondelUsuario.getAttribute("idPer") == null ? 0 : miSessiondelUsuario.getAttribute("idPer"));
            String Nombre = miSessiondelUsuario.getAttribute("NombrePac").toString();%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 "><h4><%=Nombre%></h4></span>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="principal_p.jsp#pagina_abajo">Inicio</a>
                        </li>
                    </ul>
                    <div id="mayones">
                        <a class="btn btn-primary" href="principal_p.jsp#forms_citas_cont" style="background-color: #87CEEB; border-color: #87CEEB;">
                            Regresar
                        </a>
                        <a class="btn btn-primary" href="cerrar_sesion.jsp" style="background-color: #C2504C; border-color: #C2504C;">
                            Cerrar sesion
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <div id="tit"><br>
                <h1 class="centrado" style='font-size: 4em;'>Informacion y test</h1>
                <div class="form-text centrado" style="text-align: center">¡Hola! Bienvenido a la sección de informacion y cuestionarios, aqui podras realizar una serie de cuestionarios que ayudaran a tu especialista al igual que podras informarte sobre las diversas condiciones emocionales y mentales mas comunes que existen.</div>
            </div>

            <div class="container p-4" id="fond">

                <div id="opciones">
                    <div class="btn_op centrado" >
                        <div class="card text-center" >
                            <div class="card-body">

                                <p class="card-text"></p>
                                <a class="btn btn-primary btn-lg" id="pre-ent" href="Test/Prentre.jsp"> Pre-entrevista </a>
                            </div>
                            <div class="card-footer text-muted">
                                Pequeña entrevista antes de la primera sesión
                            </div>
                        </div>
                    </div>
                    <div class="btn_op centrado" >
                        <div class="card text-center">
                            <div class="card-body">
                                <p class="card-text"></p>
                                <button class="btn btn-primary btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom" 
                                        style="background-color: #DAC6C5; border-color: #DAC6C5;">Depresion</button>
                            </div>
                            <div class="card-footer text-muted">
                                Test semi-certero para detectar posible depresion
                            </div>

                        </div>
                    </div>
                </div>
                <div id="info"  >

                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1573412930091-cc65eb8f537d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1174&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Ansiedad</h5>
                                <p class="card-text">Sensación de preocupación y nerviosismo excesivos, que puede manifestarse con síntomas físicos como taquicardia y dificultad para respirar.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Ansiedad">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1523885460099-30c3afdf5114?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Adicciones</h5>
                                <p class="card-text"> Dependencia física o psicológica de sustancias o comportamientos que afectan negativamente la salud y el bienestar.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Adicciones">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1527137342181-19aab11a8ee8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Depresion</h5>
                                <p class="card-text">Estado de ánimo persistente de tristeza, pérdida de interés en actividades y disminución de la energía, que afecta la vida diaria.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Depresion">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1573568533903-af2a285e9644?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Desordenes alimenticios</h5>
                                <p class="card-text">Trastornos relacionados con la alimentación, como la anorexia, la bulimia o el trastorno por atracón, que afectan la salud física y emocional</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Desordenes">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1622566359362-539a508d6af5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">TLP</h5>
                                <p class="card-text">Condición que se caracteriza por la inestabilidad emocional, miedo al abandono y dificultad en las relaciones interpersonales.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#TLP">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1495996146452-1737b3678c78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1748&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Bipolaridad</h5>
                                <p class="card-text">Trastorno que provoca cambios extremos de humor, desde episodios de euforia hasta depresión profunda.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Bipolaridad">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1589652717521-10c0d092dea9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">TDAH</h5>
                                <p class="card-text">Dificultades para mantener la atención, controlar impulsos y gestionar la hiperactividad, lo cual puede afectar el rendimiento académico y laboral.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#TDAH">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="centrado" >
                        <div class="card" style="width: 18rem;">
                            <img src="https://images.unsplash.com/photo-1609041958269-fc44467d925d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">TOC</h5>
                                <p class="card-text">Presencia de pensamientos obsesivos recurrentes y comportamientos compulsivos repetitivos que pueden interferir en la vida diaria.</p>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#TOC">
                                    Saber mas
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!--modales -->

                <div class="modal fade" id="Ansiedad" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Ansiedad</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">

                                <p>La ansiedad es una respuesta natural del cuerpo ante situaciones estresantes. Sin embargo, cuando se vuelve persistente e interfiere con tu vida diaria, puede ser un trastorno que requiere atención. </p>
                                <p>Hay muchas formas de manejar los síntomas de ansiedad en el momento, ya sea que te sientas ansioso por hacer algo o vivas con un trastorno de ansiedad.</p>
                                <p>Si necesitas calmarte de inmediato, puedes hacerlo siguiendo algunos ejercicios simples como los siguientes:</p>

                                <ul>
                                    <li><samp style="font-weight: bolder;">Nombra lo que sientes: </samp>Cuando estás experimentando un episodio de ansiedad, es posible que no te des cuenta de lo que está sucediendo hasta que estés realmente inmerso en ello. Nombrar tus sensaciones y sentimientos puede ayudarte a alejarte de ellos. Esto es ansiedad, no eres tú y no durará para siempre.</li>
                                    <li><samp style="font-weight: bolder;">técnica de respiración 4-7-8: </samp> Inhala durante 4 segundos.
                                        Mantén la respiración durante 7 segundos.
                                        Exhala lentamente durante 8 segundos.
                                        Repite hasta que te sientas más tranquilo.</li>
                                        <li><samp style="font-weight: bolder;">Prueba la técnica de afrontamiento 5-4-3-2-1: </samp>Cinco, mira a tu alrededor y enumera cinco cosas que veas, contando hacia atrás.
                                            Cuatro, nombra cuatro cosas que puedas tocar, como el suelo, una silla o tu cabello.
                                            Tres, escucha en silencio y reconoce tres sonidos que puedas oír, ya sea externos o internos.
                                            Dos, observa dos cosas que puedas oler, como tu perfume o un objeto cercano.
                                            Uno, finalmente, percibe algo que puedas saborear dentro de tu boca, como un brillo labial.</li>
                                            <li><samp style="font-weight: bolder;">Corre: </samp> Una carrera de 5 minutos a alta velocidad alrededor de la manzana sería suficiente para ayudarte a reducir la ansiedad rápidamente, dice Celan. Por supuesto, podrías correr durante más tiempo si es algo que disfrutas.
                                                Si correr no es lo tuyo, podrías intentar caminar rápido durante 1 minuto y luego trotar durante 1 minuto hasta completar 5 minutos en total. La clave es aumentar tu ritmo cardíaco con el ejercicio.</li>
                                </ul>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="Adicciones" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Adicciones</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>Las adicciones pueden afectar todas las áreas de tu vida. Reconocer que tienes un problema y buscar ayuda es el primer paso hacia la recuperación. No estás solo/a en esta batalla. Hay recursos y profesionales dispuestos a apoyarte en tu camino hacia la sobriedad.</p>
                                <p>Los signos y síntomas del uso de sustancias y adicción varían ampliamente de una persona a otra y dependen de:</p>
                                <ul>
                                    <li>La sustancia o conducta.</li>
                                    <li>La duración y gravedad del uso.</li>
                                    <li>La personalidad del usuario.</li>
                                </ul>
                                
                                <p>A continuación se presentan los síntomas generales del uso de sustancias y adicción:</p>

                                <ul>
                                    <li>Continuar utilizando a pesar de que pueda afectar negativamente la salud, las relaciones u otros aspectos de la vida.</li>
                                    <li>Tener un deseo intenso por la sustancia o conducta.</li>
                                    <li>Consumir de manera regular en exceso.</li>
                                    <li>Abandonar actividades que antes se disfrutaban debido al uso.</li>
                                    <li>Descuidar responsabilidades en el hogar, el trabajo o la escuela.</li>
                                    <li>Desarrollar tolerancia a la sustancia, necesitando cantidades mayores para obtener el mismo efecto.</li>
                                </ul>

                                <p>El tratamiento para el trastorno por uso de sustancias (SUD) puede llevarse a cabo en dos entornos básicos: hospitalización y tratamiento ambulatorio.</p>
                                <p>Existen varios programas de tratamiento para el SUD que se basan en tres modelos básicos:</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="Depresion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Depresion</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>La depresión es mucho más que sentirse triste. Puede afectar tu energía, motivación y la forma en que ves el mundo. No te avergüences de buscar ayuda. La depresión es tratable, y hay personas dispuestas a apoyarte en tu camino hacia la recuperación.</p>
                                <p>Vivir con depresión no es fácil. Sentimientos de desesperanza y vacío pueden nublar tu pensamiento, juicio y visión del mundo. Incluso puede hacerte sentir como si estuvieras trabajando el doble que los demás solo para pasar el día.</p>
                                <p>Si te puedes identificar con esos sentimientos, por favor, ten en cuenta que estás lejos de estar solo. La depresión mayor puede afectar a más del 7% de la población adulta (fuente confiable) y es la principal causa de discapacidad en los Estados Unidos entre las personas de 15 a 44 años.</p>
                                <p>Existe consuelo al saber que hay muchas opciones para tratar la depresión. Estas pueden incluir psicoterapia (terapia de conversación), medicamentos antidepresivos y enfoques naturales, como llevar una dieta nutritiva, hacer ejercicio regularmente y seguir buenos hábitos de sueño.</p>
                                <p>En un estudio de personas con un diagnóstico de trastorno depresivo mayor a lo largo de su vida:</p>

                                <ul>
                                    <li>53.1% utilizó medicación</li>
                                    <li>62.5% habló con un profesional</li>
                                    <li>14.9% recibió apoyo no profesional (autoayuda, grupo de apoyo, etc.)</li>
                                    <li>11.8% fueron hospitalizados durante la noche o más tiempo</li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="Desordenes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Desordenes alimenticios</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>Los desórdenes alimenticios no se tratan solo de la comida, sino de las emociones y la relación con nuestro cuerpo. Si estás luchando contra la anorexia, bulimia, u otros desórdenes alimenticios, busca ayuda. La recuperación no es fácil, pero vale la pena. Tú mereces bienestar.</p>
                                <p>Los expertos todavía están tratando de entender qué causa exactamente los trastornos alimentarios. Es importante tener en cuenta que los trastornos alimentarios no son simplemente un problema de "vanidad", sino una complicada condición de salud mental </p>
                                <p>Muchas personas utilizan comportamientos relacionados con los trastornos alimentarios para hacer frente a emociones y experiencias angustiantes. Algunos factores contribuyentes pueden aumentar la probabilidad de que una persona desarrolle un trastorno alimentario:</p>

                                <ul>
                                    <li><span style="font-weight: bolder;">Genética: </span>Tener antecedentes familiares de trastornos alimentarios u otras condiciones de salud mental puede aumentar las posibilidades de desarrollar un trastorno alimentario.</li>
                                    <li><span style="font-weight: bolder;">Factores ambientales: </span>Crecer en una cultura que equipara un cierto tipo de cuerpo con el éxito o la felicidad puede ejercer presión sobre las personas para que cumplan con estándares irrealistas.</li>
                                    <li><span style="font-weight: bolder;">Factores psicológicos:</span> Las personas que no están satisfechas con su apariencia o lidian con el perfeccionismo pueden tener un mayor riesgo. Tener una condición de salud mental, como la ansiedad, también puede aumentar el riesgo de una persona.</li>
                                </ul>

                                <p>Las personas con trastornos alimentarios tienden a estar preocupadas o incapaces de dejar de pensar en la comida, el peso y la imagen corporal. Esto puede tener un gran impacto emocional y mental. Algunos síntomas psicológicos de un trastorno alimentario incluyen:</p>
                                <ul>
                                    <li>pensar frecuentemente en la comida, el peso y la imagen corporal</li>
                                    <li>depresión</li>
                                    <li>sentirse ansioso, irritable, culpable o avergonzado</li>
                                    <li>sentirse "apagado" o con falta de emociones</li>
                                    <li>cambios de humor</li>
                                    <li>distorsión de la imagen corporal, como creer que tienes un tamaño mayor de lo que </li>
                                    <li>realmente tienes</li>
                                </ul>
                                <p>Si crees que puedes tener un trastorno alimentario, es importante buscar ayuda. Los trastornos alimentarios pueden ser angustiantes, incómodos y, en algunos casos, incluso poner en peligro la vida. Las opciones de tratamiento para los trastornos alimentarios variarán de una persona a otra, pero generalmente incluyen:</p>
                                <ul>
                                    <li>terapia de conversación, también conocida como psicoterapia</li>
                                    <li>medicamentos para tratar condiciones coexistentes</li>
                                    <li>trabajar con un nutricionista</li>
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="TLP" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Transtorno limite de la personalidad</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>El TLP puede ser una montaña rusa emocional. Las personas con TLP pueden experimentar cambios de humor intensos, miedo al abandono y dificultades para mantener relaciones estables. La terapia especializada puede ayudar a desarrollar habilidades de afrontamiento y estabilidad emocional.</p>
                                <p>Ees un trastorno mental que afecta la forma en que una persona piensa, se siente y se relaciona con los demás. Se caracteriza por una inestabilidad emocional significativa, patrones de pensamiento y comportamiento impulsivos, dificultades en las relaciones interpersonales y una fuerte sensación de inseguridad en la propia identidad. </p>
                                <p>Algunos síntomas comunes del TLP incluyen:</p>

                                <ul>
                                    <li><span style="font-weight: bolder;">Inestabilidad emocional: </span>Las personas con TLP suelen experimentar cambios de ánimo intensos y rápidos, pasando de la euforia a la tristeza o la ira en poco tiempo. También pueden experimentar sentimientos crónicos de vacío emocional.</li>
                                    <li><span style="font-weight: bolder;">Relaciones inestables: </span>Las personas con TLP a menudo tienen dificultades para establecer y mantener relaciones estables. Pueden idealizar intensamente a alguien en un momento y luego devaluarlo rápidamente en otro. También pueden experimentar miedo al abandono y ser propensas a conductas autodestructivas o manipuladoras para evitar el abandono.</li>
                                    <li><span style="font-weight: bolder;">Comportamiento impulsivo: </span>Las personas con TLP pueden participar en comportamientos impulsivos y arriesgados, como el consumo excesivo de alcohol o drogas, conductas sexuales de riesgo, gastos irresponsables o comportamiento alimentario desordenado.</li>
                                    <li><span style="font-weight: bolder;">Autolesiones y suicidio: </span>Las personas con TLP tienen una mayor propensión a la autolesión, como cortarse o quemarse, como una forma de aliviar la tensión emocional. También pueden tener pensamientos recurrentes de suicidio o intentos de suicidio.</li>
                                </ul>

                                <p>El TLP es un trastorno complejo y puede ser debilitante para quienes lo padecen. Sin embargo, el tratamiento adecuado y el apoyo pueden marcar una diferencia significativa en la vida de las personas con TLP. La terapia psicoterapéutica, como la terapia dialectical conductual (DBT), se considera uno de los enfoques más efectivos para el tratamiento del TLP. Los medicamentos también pueden ser utilizados para tratar síntomas específicos, como la depresión o la ansiedad.</p>
                                <p>Es importante destacar que el TLP es un trastorno que requiere un diagnóstico profesional. Si crees que podrías estar experimentando los síntomas del TLP, te recomendaría buscar la ayuda de un profesional de la salud mental para una evaluación adecuada y obtener un plan de tratamiento adecuado a tus necesidades.
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="Bipolaridad" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Bipolaridad</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>El trastorno bipolar se caracteriza por cambios extremos de humor, desde episodios de euforia hasta profunda tristeza. Si crees que puedes estar experimentando los altibajos del trastorno bipolar, no dudes en buscar ayuda profesional. El tratamiento adecuado puede marcar la diferencia.</p>
                                <p>El trastorno bipolar es una condición de salud mental que involucra cambios extremos en el estado de ánimo. Puedes experimentar estados de ánimo con alta energía (manía o hipomanía), estados de ánimo con baja energía (depresión) o ambos.
                                    Anteriormente, al trastorno bipolar se le llamaba "depresión maníaca", pero los profesionales de la salud ya no utilizan este término.
                                    Cada persona tiene una experiencia única del trastorno bipolar. Para algunos, los episodios de ánimo pueden durar solo unas pocas horas o días. Para otros, pueden durar semanas o meses.</p>
                                <p>Si vives con trastorno bipolar, es probable que ya conozcas bastante bien tus propios síntomas. Los síntomas del trastorno bipolar varían entre las personas y pueden ser diferentes de un episodio de ánimo a otro.
                                    Puede ser útil llevar un registro de tus síntomas con el tiempo para identificar cualquier patrón en los cambios de tu estado de ánimo. Comprender mejor estas fluctuaciones es un gran primer paso para aprender a lidiar con ellas.</p>
                                    <p>El trastorno bipolar se caracteriza por episodios maníacos, episodios hipomaníacos y episodios depresivos. Puedes experimentar uno o dos de estos estados, o los tres, dependiendo del tipo y la gravedad de tu condición.</p>
                                <p>Para muchas personas, el tratamiento implica una combinación de psicoterapia y medicación.Algunas personas encuentran beneficioso unirse a un grupo de apoyo, leer libros que explican estrategias efectivas de autoayuda o llevar un diario.

                                    Puedes llevar un diario en papel o a través de una aplicación de seguimiento de estado de ánimo o diario.
                                    
                                    Uno de los mayores desafíos en el tratamiento del trastorno bipolar es encontrar y mantener una rutina de tratamiento que funcione mejor para ti a largo plazo. </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="TDAH" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Transtorno de deficis de atencion e hiperactividad</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>El TDAH puede dificultar la concentración y el control de impulsos, pero no te define como persona. Si sientes que el TDAH te está afectando en tu vida diaria, busca apoyo y tratamiento. Hay estrategias y recursos disponibles para ayudarte a alcanzar tu máximo potencial.</p>
                                <p>El trastorno por déficit de atención e hiperactividad (TDAH) es un trastorno neronal común. </p>
                                <p>Afecta al 11% de los niños en edad escolar, y de este grupo, tres cuartas partes se convierten en adultos con TDAH. Las personas con TDAH pueden tener:</p>

                                <ul>
                                    <li>dificultad para prestar atención</li>
                                    <li>problemas para controlar los impulsos</li>
                                    <li>niveles de actividad excesivos</li>
                                </ul>

                                <p>Los síntomas del TDAH pueden dificultar el funcionamiento adecuado en la escuela, en el trabajo o en situaciones sociales. Las investigaciones muestran que los niños y adolescentes a menudo son conscientes de que son diferentes de sus compañeros, lo que puede hacer que se sientan mal consigo mismos. Los adultos pueden sentir lo mismo.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="TOC" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-10" id="exampleModalLabel">Transtorno obsesivo compulsivo</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="height: 1200px;">
                                <p>El TOC puede manifestarse a través de pensamientos obsesivos y comportamientos compulsivos. Aunque pueda ser debilitante, el TOC es tratable. Si estás lidiando con pensamientos intrusivos y rituales repetitivos, busca apoyo y tratamiento especializado. Hay esperanza.</p>
                                <p>El trastorno obsesivo-compulsivo (TOC) es un trastorno de salud mental caracterizado por la presencia de obsesiones y compulsiones. Las obsesiones son pensamientos, imágenes o impulsos no deseados y recurrentes que generan ansiedad intensa. Las compulsiones son conductas repetitivas o actos mentales que se realizan en respuesta a las obsesiones con el fin de aliviar la ansiedad o prevenir un evento negativo </p>
                                <p>Los síntomas del TOC pueden variar de una persona a otra, pero algunos de los más comunes incluyen:</p>
                                <ol>
                                    <li>Obsesiones:
                                        <ul>
                                            <li>Miedo excesivo a la contaminación o la suciedad.</li>
                                            <li>Preocupación persistente por el orden, la simetría o la exactitud.
                                            </li>
                                            <li>Pensamientos agresivos o violentos no deseados.
                                            </li>
                                        </ul>
                                    </li>
                                    <li>Compulsiones:
                                        <ul>
                                            <li>Limpieza o lavado excesivo de manos o de objetos.</li>
                                            <li>Verificación repetitiva de puertas, ventanas o electrodomésticos.</li>
                                            <li>Ordenar o alinear objetos de manera precisa.</li>
                                            <li>Repetir palabras, frases o números en la mente.</li>
                                        </ul>
                                    </li>
                                </ol>
                                <p>El tratamiento del TOC generalmente incluye una combinación de terapia cognitivo-conductual (TCC) y medicación. La TCC se enfoca en ayudar a la persona a cambiar sus patrones de pensamiento y comportamiento relacionados con el TOC. Esto puede incluir terapia de exposición y prevención de respuesta, donde gradualmente se expone a la persona a sus obsesiones y se le enseña a resistir las compulsiones.</p>
                                <p>Es importante destacar que cada persona es única y los tratamientos pueden variar según las necesidades individuales. Por lo tanto, es fundamental buscar la ayuda de un profesional de la salud mental, como un psicólogo o psiquiatra, para obtener un diagnóstico preciso y recibir el tratamiento adecuado para el TOC.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="offcanvas offcanvas-bottom" tabindex="-1" id="offcanvasBottom" aria-labelledby="offcanvasBottomLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasBottomLabel">Lo sentimos...</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body small">
                        <p class="mb-0">Aun estamos trabajando para agregar mas test, sentimos la demora.</p>
                        <p class="mb-0">¡Pronto estaran disponibles!</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

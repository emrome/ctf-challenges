# Índice de Desafíos

Este documento presenta el listado de desafíos incluidos en el CTF, junto con su clasificación general y los conceptos de seguridad abordados.

La información aquí resumida corresponde a una versión simplificada del **anexo de desafíos** del trabajo académico asociado a este repositorio.

---

## 🧩 Listado de desafíos

| Nombre | Categoría | Subcategoría | Nivel | Puntaje | Concepto central | Dimensión CIA | Tipo de habilidad |
|------|-----------|--------------|-------|----------|------------------|---------------|-------------------|
| [Bienvenido/a al CTF](introduccion/bienvenido-al-ctf/) | Introducción | — | Introductorio | 1 | Dinámica CTF y flags | — | Comprensión de consignas |
| [El Post-it Olvidado](autenticacion/contrasenas/el-post-it-olvidado/) | Autenticación | Contraseñas | Fácil | 20 | Exposición física de credenciales | Confidencialidad | Observación |
| [Tu primera clave](autenticacion/contrasenas/tu-primera-clave/) | Autenticación | Contraseñas | Fácil | 20 | Uso de datos personales como contraseña | Confidencialidad | Análisis |
| [La fórmula secreta](autenticacion/contrasenas/la-formula-secreta/) | Autenticación | Contraseñas | Medio | 45 | Patrones predecibles en contraseñas | Confidencialidad | Razonamiento lógico |
| [Recuperar mi cuenta](autenticacion/contrasenas/recuperar-mi-cuenta/) | Autenticación | Contraseñas | Medio | 50 | Reconstrucción de contraseñas con datos públicos | Confidencialidad | Análisis y correlación |
| [El Efecto Dominó](autenticacion/contrasenas/el-efecto-domino/) | Autenticación | Contraseñas | Avanzado | 80 | Reutilización de credenciales | Confidencialidad | Análisis crítico |
| [El Movimiento Maestro](autenticacion/contrasenas/el-movimiento-maestro/) | Autenticación | Contraseñas | Avanzado | 80 | Patrones de comportamiento como contraseña | Confidencialidad | Razonamiento lógico |
| [Mismo Invierno, Nuevo Año](autenticacion/contrasenas/mismo-invierno-nuevo-ano/) | Autenticación | Contraseñas | Avanzado | 90 | Actualización predecible de contraseñas | Confidencialidad | Análisis crítico |
| [Soporte de Netflix](fraude/phishing/soporte-de-netflix/) | Phishing | — | Fácil | 20 | Identificación de correos fraudulentos | Confidencialidad | Observación |
| [¿Es real o fake?](fraude/phishing/es-real-o-fake/) | Phishing | — | Fácil | 20 | Reconocimiento de engaños digitales | Confidencialidad / Integridad | Observación y análisis |
| [El Mod Peligroso](fraude/phishing/el-mod-peligroso/) | Phishing | — | Medio | 50 | Riesgos de archivos enviados por terceros | Confidencialidad / Disponibilidad | Análisis crítico |
| [El QR del Descuento](fraude/phishing/el-qr-del-descuento/) | Phishing | — | Medio | 60 | Engaños mediante enlaces QR | Confidencialidad / Integridad | Observación y análisis |
| [Mecanismo Seguro](fraude/phishing/mecanismo-seguro/) | Phishing | — | Medio | 70 | Engaño multicanal y autenticación | Confidencialidad | Comprensión conceptual |
| [El Clon Cirílico de Apple](fraude/phishing/el-clon-cirilico-de-apple/) | Phishing | — | Avanzado | 100 | Manipulación visual y dominios similares | Confidencialidad / Integridad | Investigación |
| [El viaje de Sofi](osint/el-viaje-de-sofi/) | OSINT | — | Fácil | 20 | Exposición de información en redes sociales | Confidencialidad | Observación y búsqueda |
| [El cumpleaños filtrado](osint/el-cumpleanos-filtrado/) | OSINT | — | Fácil | 20 | Inferencia de datos personales | Confidencialidad | Razonamiento temporal |
| [La foto perdida](osint/la-foto-perdida/) | OSINT | — | Medio | 50 | Verificación del origen de imágenes | Integridad | Verificación |
| [Código QR indiscreto](osint/codigo-qr-indiscreto/) | OSINT | — | Medio | 60 | Exposición de información en QR | Confidencialidad | Análisis |
| [Coordenadas cruzadas](osint/coordenadas-cruzadas/) | OSINT | — | Avanzado | 80 | Geolocalización a partir de indicios visuales | Integridad | Razonamiento geográfico |
| [El perfil incompleto](osint/el-perfil-incompleto/) | OSINT | — | Avanzado | 100 | Identificación mediante huella digital | Confidencialidad | Correlación |
| [Coordenadas escondidas](osint/coordenadas-escondidas/) | OSINT | — | Avanzado | 100 | Metadatos y geolocalización | Confidencialidad | Análisis técnico |
| [El eco del aula](criptografia/el-eco-del-aula/) | Criptografía | — | Fácil | 15 | Patrones repetitivos y ruido | Integridad | Razonamiento deductivo |
| [Mensaje en la botella](criptografia/mensaje-en-la-botella/) | Criptografía | — | Fácil | 20 | Cifrado por desplazamiento | Confidencialidad | Decodificación |
| [Una mezcla sospechosa](criptografia/una-mezcla-sospechosa/) | Criptografía | — | Medio | 40 | Codificación vs cifrado | Confidencialidad | Análisis conceptual |
| [El número binario](criptografia/el-numero-binario/) | Criptografía | — | Medio | 45 | Representación binaria | Confidencialidad | Análisis lógico |
| [El secreto doble](criptografia/el-secreto-doble/) | Criptografía | — | Avanzado | 70 | Decodificación en múltiples etapas | Confidencialidad | Análisis secuencial |
| [Acta Verdadera](criptografia/acta-verdadera/) | Criptografía | — | Avanzado | 70 | Verificación de integridad con hash | Integridad | Análisis comparativo |
| [Clave compartida](criptografia/clave-compartida/) | Criptografía | — | Avanzado | 80 | Cifrado simétrico | Confidencialidad | Razonamiento criptográfico |
| [El mensaje imposible](criptografia/el-mensaje-imposible/) | Criptografía | — | Avanzado | 90 | Transposición del mensaje | Confidencialidad | Razonamiento abstracto |
| [El comunicado de urgencia](ingenieria-social/el-comunicado-de-urgencia/) | Ingeniería Social | — | Fácil | 20 | Manipulación por urgencia y autoridad | Confidencialidad | Análisis crítico |
| [Identidad compuesta](ingenieria-social/identidad-compuesta/) | Ingeniería Social | — | Medio | 50 | Construcción de identidades falsas | Confidencialidad | Detección de engaño |
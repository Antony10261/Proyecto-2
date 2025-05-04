# Sistema de Recomendación de Recetas 

Este proyecto es un sistema de recomendación de recetas desarrollado en **Java**, utilizando **Neo4j** como base de datos orientada a grafos.

## Objetivo

Crear una aplicación capaz de recomendar recetas a los usuarios en base a:
- Sus preferencias alimenticias.
- Los ingredientes que tienen disponibles.
- Su nivel de habilidad en cocina.

## Base de datos

La base de datos está compuesta por los siguientes tipos de nodos:

| Tipo     | Nombre       | Propiedades principales                            |
|----------|--------------|----------------------------------------------------|
| Usuario  | `:Usuario`   | `nombre`, `edad`, `nivel_cocina`                   |
| Preferencia | `:Preferencia` | `tipo` (ej: saludable, vegano)             |
| Ingrediente | `:Ingrediente` | `nombre`, `categoria`                     |
| Receta   | `:Receta`    | `nombre`, `tipo`, `tiempo`, `dificultad`           |

Y las siguientes relaciones:

| Relación           | Significado                                      | Propiedades            |
|--------------------|--------------------------------------------------|-------------------------|
| `:TIENE`           | Un usuario tiene una preferencia                 | –                       |
| `:TIENE_INGREDIENTES` | Un usuario tiene un ingrediente               | –                       |
| `:REQUIERE`        | Una receta requiere ingredientes                 | `cantidad`, `unidad`    |
| `:PUEDE_PREPARAR`  | Un usuario puede hacer una receta                | (opcional: `afinidad`)  |

---

## Archivo de datos

Este repositorio incluye el archivo [`base_datos_recetas.cql`](./base_datos_recetas.cql).

---

## Estado actual del repositorio

- [x] Diseño de la base de datos
- [x] Pseudocódigo del sistema
- [x] Script `.cql` para poblar Neo4j
- [ ] Conexión desde Java (próximamente)
- [ ] Interfaz del sistema (por definir)

---


## Estructura del repositorio
/proyecto-recetas/
├── diseño_base_datos.txt
├── recomendador.txt
├── base_datos_recetas.cql
└── README.md

----


## Autor
Antony Emanuel Barrios de Leon

---

Proyecto realizado como parte de un ejercicio académico de Ciencias de la Computación.

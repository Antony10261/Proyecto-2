// Crear nodos
CREATE (u:Usuario {nombre: "Marta", edad: 25, nivel_cocina: "básico"})
CREATE (p:Preferencia {tipo: "saludable"})
CREATE (i1:Ingrediente {nombre: "pollo", categoria: "proteína"})
CREATE (i2:Ingrediente {nombre: "espinaca", categoria: "vegetal"})
CREATE (i3:Ingrediente {nombre: "pan integral", categoria: "carbohidrato"})
CREATE (r:Receta {nombre: "wrap de pollo", tipo: "almuerzo", tiempo: 15, dificultad: "fácil"})

// Crear relaciones
CREATE (u)-[:TIENE]->(p)
CREATE (u)-[:TIENE_INGREDIENTES]->(i1)
CREATE (u)-[:TIENE_INGREDIENTES]->(i2)
CREATE (u)-[:TIENE_INGREDIENTES]->(i3)
CREATE (r)-[:REQUIERE {cantidad: 1, unidad: "pechuga"}]->(i1)
CREATE (r)-[:REQUIERE {cantidad: 1, unidad: "taza"}]->(i2)
CREATE (r)-[:REQUIERE {cantidad: 2, unidad: "rebanadas"}]->(i3)
CREATE (u)-[:PUEDE_PREPARAR]->(r)

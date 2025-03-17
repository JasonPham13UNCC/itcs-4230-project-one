{
  "$GMObject":"",
  "%Name":"obj_basictower",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_basictower",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_maincastle","path":"objects/obj_maincastle/obj_maincastle.yy",},"propertyId":{"name":"hp","path":"objects/obj_maincastle/obj_maincastle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"75",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_maincastle","path":"objects/obj_maincastle/obj_maincastle.yy",},"propertyId":{"name":"xscale","path":"objects/obj_maincastle/obj_maincastle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":".5",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_maincastle","path":"objects/obj_maincastle/obj_maincastle.yy",},"propertyId":{"name":"yscale","path":"objects/obj_maincastle/obj_maincastle.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":".5",},
  ],
  "parent":{
    "name":"towers",
    "path":"folders/Objects/towers.yy",
  },
  "parentObjectId":{
    "name":"obj_maincastle",
    "path":"objects/obj_maincastle/obj_maincastle.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"tower_range","filters":[],"listItems":[],"multiselect":false,"name":"tower_range","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"700","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"att_speed","filters":[],"listItems":[],"multiselect":false,"name":"att_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"bullet","filters":[],"listItems":[],"multiselect":false,"name":"bullet","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_basic_attack","path":"objects/obj_basic_attack/obj_basic_attack.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_basic_attack","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_tower",
    "path":"sprites/spr_tower/spr_tower.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}
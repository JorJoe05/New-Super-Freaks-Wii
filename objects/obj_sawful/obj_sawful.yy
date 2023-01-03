{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_sawful",
  "spriteId": {
    "name": "spr_sawful_face",
    "path": "sprites/spr_sawful_face/spr_sawful_face.yy",
  },
  "spriteMaskId": null,
  "visible": true,
  "solid": false,
  "persistent": false,
  "physicsObject": false,
  "managed": true,
  "parentObjectId": {
    "name": "obj_enemy",
    "path": "objects/obj_enemy/obj_enemy.yy",
  },
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":12,"eventType":7,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"my_path","varType":5,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMPath",
      ],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"my_speed","varType":1,"value":"1","rangeEnabled":true,"rangeMin":-8.0,"rangeMax":8.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
}
{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_worldmap_icon",
  "spriteId": {
    "name": "spr_worldmap_icon",
    "path": "sprites/spr_worldmap_icon/spr_worldmap_icon.yy",
  },
  "spriteMaskId": null,
  "visible": true,
  "solid": false,
  "persistent": false,
  "physicsObject": false,
  "managed": true,
  "parentObjectId": {
    "name": "obj_gameplay_obj",
    "path": "objects/obj_gameplay_obj/obj_gameplay_obj.yy",
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_worldmap_player","path":"objects/obj_worldmap_player/obj_worldmap_player.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"level_id","varType":1,"value":"1","rangeEnabled":true,"rangeMin":1.0,"rangeMax":255.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"room_first_playthrough","varType":5,"value":"undefined","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMRoom",
      ],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "World Map",
    "path": "folders/Objects/System/World Map.yy",
  },
}
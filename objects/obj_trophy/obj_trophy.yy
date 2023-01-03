{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_trophy",
  "spriteId": {
    "name": "spr_trophy",
    "path": "sprites/spr_trophy/spr_trophy.yy",
  },
  "spriteMaskId": null,
  "visible": true,
  "solid": false,
  "persistent": false,
  "physicsObject": false,
  "managed": true,
  "parentObjectId": {
    "name": "obj_collectible",
    "path": "objects/obj_collectible/obj_collectible.yy",
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"trophy_id","varType":1,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":2.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"zone_index","path":"objects/obj_level_obj/obj_level_obj.yy",},"objectId":{"name":"obj_level_obj","path":"objects/obj_level_obj/obj_level_obj.yy",},"value":"-1",},
  ],
  "parent": {
    "name": "Collectibles",
    "path": "folders/Objects/Things/Collectibles.yy",
  },
}
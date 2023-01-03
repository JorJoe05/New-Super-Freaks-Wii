{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_boss_larry_controller",
  "spriteId": {
    "name": "spr_boss_larry_intro",
    "path": "sprites/spr_boss_larry_intro/spr_boss_larry_intro.yy",
  },
  "spriteMaskId": null,
  "visible": false,
  "solid": false,
  "persistent": false,
  "physicsObject": false,
  "managed": true,
  "parentObjectId": {
    "name": "obj_boss",
    "path": "objects/obj_boss/obj_boss.yy",
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},},
  ],
  "properties": [],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"can_despawn","path":"objects/obj_level_obj/obj_level_obj.yy",},"objectId":{"name":"obj_level_obj","path":"objects/obj_level_obj/obj_level_obj.yy",},"value":"False",},
  ],
  "parent": {
    "name": "Larry McPeel",
    "path": "folders/Objects/Bosses/Larry McPeel.yy",
  },
}
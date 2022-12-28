{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_swinging_chain_parent",
  "spriteId": {
    "name": "spr_chain",
    "path": "sprites/spr_chain/spr_chain.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_platform_parent",
    "path": "objects/obj_platform_parent/obj_platform_parent.yy",
  },
  "physicsObject": false,
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":12,"eventType":7,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":14,"eventType":7,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"chain_segments","varType":1,"value":"1","rangeEnabled":true,"rangeMin":1.0,"rangeMax":16.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"starting_angle","varType":1,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":359.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"swing_speed","varType":0,"value":"1","rangeEnabled":true,"rangeMin":-4.0,"rangeMax":4.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"circle_angle","varType":6,"value":"90","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "45",
        "90",
        "180",
        "270",
        "360",
      ],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Common",
    "path": "folders/Objects/Things/Common.yy",
  },
}
{
    "id": "57b1bb8c-dfd3-4c63-957e-2e2d04e1d3f9",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemy_parent",
    "eventList": [
        {
            "id": "131bde57-8a58-4716-944f-0edbd82f0675",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 64,
            "eventtype": 8,
            "m_owner": "57b1bb8c-dfd3-4c63-957e-2e2d04e1d3f9"
        },
        {
            "id": "20f6ebfd-e987-4fea-a814-5a21a9d3667d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "57b1bb8c-dfd3-4c63-957e-2e2d04e1d3f9"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "78b57930-e261-423c-bb1c-f88ad45dbb37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "hitpoints",
            "varType": 0
        },
        {
            "id": "d7103665-19dc-412a-8901-741ec65c7bf3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "mySpeed",
            "varType": 0
        },
        {
            "id": "265f7527-4893-4292-9ee9-9ec429295a85",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "xVel",
            "varType": 0
        },
        {
            "id": "9b8a5d6d-4ffb-4fba-88d1-f924f1a0608a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "yVel",
            "varType": 0
        },
        {
            "id": "b2983c0a-d01d-4fed-8edf-dfaff78d6ff1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "u_xVel",
            "varType": 0
        },
        {
            "id": "98cb79d1-e753-4ddb-bdc4-44a625c9fc3d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "u_yVel",
            "varType": 0
        },
        {
            "id": "f7111635-db67-4a79-9735-a58de28aab1c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "faceX",
            "varType": 0
        },
        {
            "id": "734d59f1-f2e4-46ed-b11c-47a6e1f54340",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "faceY",
            "varType": 0
        },
        {
            "id": "ea9b9146-cb25-4af7-a7f7-314c51ff8efa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "ai_state",
            "varType": 0
        },
        {
            "id": "1af93762-dde5-4afb-b345-2304a26435b9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "canShoot",
            "varType": 3
        },
        {
            "id": "e55f8e58-474b-4aa8-9955-55b01fbeb893",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "shot_cooldown",
            "varType": 0
        },
        {
            "id": "b5c34ad5-e43f-4eb7-8151-280c9e4c37ab",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "engageDistance",
            "varType": 0
        },
        {
            "id": "e483e232-151d-484c-b984-bd550699195b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "abilityCoolDown",
            "varType": 0
        },
        {
            "id": "3915a044-5e39-4c5b-aeb3-85090d3a9025",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "type_of_ammo",
            "varType": 5
        },
        {
            "id": "bbfdb182-4aef-470b-8055-6a4bd41e3eb7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "SHOT_RELOAD_ALARM",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "8aac9977-f935-4263-bcaf-d0dae110142d",
    "visible": true
}
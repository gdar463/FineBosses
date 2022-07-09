# Sending message
tellraw @a[predicate=bosses:in_dim] {"text":"-------------------------------------","color":"blue","bold":false,"italic":false}
tellraw @a[predicate=bosses:in_dim] {"text":""}
tellraw @a[predicate=bosses:in_dim] [{"text":"Are you sure you want to spawn ","color":"yellow","bold":false,"italic":false},{"text":"Piglisan","color":"red","bold":true,"italic":false},{"text":"?","color":"yellow","bold":false,"italic":false}]
tellraw @a[predicate=bosses:in_dim] [{"text":"[NO]","color":"dark_red","bold":true,"italic":false,"clickEvent":{"action":"run_command","value":"/function bosses:arena/cancel"}},{"text":"   "},{"text":"[YES]","color":"green","bold":true,"italic":false,"clickEvent":{"action":"run_command","value":"/function bosses:piglisan/spawn"}}]
tellraw @a[predicate=bosses:in_dim] {"text":""}
tellraw @a[predicate=bosses:in_dim] {"text":"-------------------------------------","color":"blue","bold":false,"italic":false}

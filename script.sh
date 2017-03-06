rails generate scaffold Character game:references user:references name:string --no-migration
rails generate scaffold CharacterCharacter character_src:references character_dest:references description:text --no-migration
rails generate scaffold CharacterSection section:references character:references value:text --no-migration
rails generate scaffold CharacterSkill character:references rule:references value:string --no-migration
rails generate scaffold Game name:string cost:float date:datetime template:string --no-migration
rails generate scaffold Rule game:references name:string description:text --no-migration
rails generate scaffold Section game:references section_type:string section_name:string --no-migration
rails generate scaffold Skill name:string description:text --no-migration
rails generate scaffold User name:string first_name:string last_name:string email:string --no-migration

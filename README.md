# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

#Para generar modelos en docker 
docker-compose run web  rails g scaffold admin/Portfolio name:string  description:string order:integer show:boolean active:boolean
#Agregar imagen Carrierwave
--Se agrega atributo al modelo
1. docker-compose rub web rails g migration add_photo_to_portfolios photo:string
--Ejecuta migracion
2. docker-compose run web rails db:migrate
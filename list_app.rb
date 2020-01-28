require "./list.rb"
require "./item.rb"


# marcar un determinado articulos

class ListApp
	attr_writer :list

	def initialize
		@list =List.new
	end

	def run
		puts "Bienvenido a nuestra lista de compras"
		loop do
			puts
			puts "a - agregar un articulo"
			puts "r - Remover un articulo"
			puts "v - Mostrar todos los articulos"
			puts "m - Marcar un articulo"
			puts "b - Borrar todos los articulos"
			puts "s - salir de la aplicación"
			input = gets.chomp

			case input
			when 'a'
				puts "Que deseas agregar?"
				item = gets.chomp
				@list.add_item(item)
				50.times {print "*"}
				puts "\n#{item} ha sido agregado atu lista\n "
				50.times {print "*"}
			when 'r'
				puts "Numero del articulo a remover"
				index = gets.chomp
				item = @list.remove_item(index.to_i)
				50.times {print "*"}
				puts "\n#{item.text} ha sido removido de tu lista"
				50.times {print "*"}
			when 'v'
				@list.show_all
			when 'm'
				puts "Numero del articulo que desea marcar"
				index = gets.chomp
				item = @list.check_item(index.to_i)
				50.times {print "*"}
				puts "\n#{item.text} ha sido marcado"
				50.times {print "*"}
			when 'b'
				puts "Deseas remover todos los articulos s/n"
				input = gets.chomp
				if input == 's'
				 	@list.remove_all
				else
					puts "Operación cancelada"
				end
			when 's'
				break
				else
				puts"operación no reconcida"
			end
		
		end
		puts "Gracias por utilizar nuestra aplicación"
	end

end

list_App = ListApp.new
list_App.run

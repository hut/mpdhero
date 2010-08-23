class Array
	def shuffle!
		size.downto(1) { |n| push delete_at(rand(n)) }
		self
	end
	def swap!(a, b)
		self[a], self[b] = self[b], self[a]
	end
	def random()
		at rand size
	end
	def time()
		inject(0) do |sum, track|
			sum += track.time.to_i
		end
	end
end

class MPD
	def move_pairs(*map)
		command_list_begin
		for x in map
			unless x.first == x.last
				command("moveid #{x.first} #{x.last}")
			end
		end
		command_list_end
	end
	public :connect
end


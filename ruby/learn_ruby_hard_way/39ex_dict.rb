module Dict
	KONSTANTIN = "Konstantin"

	def Dict.new(buckets_num=256)
		aDict = []
		buckets_num.times { |n| aDict << [] }
		return aDict
	end

	def Dict.hash_key(aDict, key)
		return key.hash % aDict.length
	end

	def Dict.get_bucket(aDict, key)
		bucket_id = Dict.hash_key(aDict, key)
		return aDict[bucket_id]
	end

	def Dict.get_slot(aDict, key, default = nil)
		bucket = Dict.get_bucket(aDict, key)

		bucket.each_with_index do |kv, i|
			k, v = kv
			if key == k
				return i, k, v
			end
		end

		return -1, key, default
	end

	def Dict.get_value(aDict, key, default=nil)
		i, k, v = Dict.get_slot(aDict, key, default = default)
		return v
	end

	def Dict.set_value(aDict, key, value)
		bucket = Dict.get_bucket(aDict, key)
		i, k, v = Dict.get_slot(aDict, key)

		if i >= 0
			bucket[i] = value
		else
			bucket << [key, value]
		end
	end

	def Dict.delete(aDict, key)
		bucket = Dict.get_bucket(aDict, key)
		pair = bucket[0]

		if pair && pair.first == key
			bucket.delete_at(0) 
		else
			1
		end
	end

	def Dict.list(aDict)
		aDict.each do |bucket|
			unless bucket.empty?
				puts bucket[0].first, bucket[0].last
			end
		end
	end
end
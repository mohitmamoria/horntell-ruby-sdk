module SahilHorntell
    class Profile
        extend SahilHorntell::Http::ApiRequester

        def self.find(uid)
            return raw_request('get', "/profiles/#{uid}")
        end

        def self.create(profile)
            return raw_request('post', "/profiles", profile)
        end

        def self.update(uid, profile)
            return raw_request('put', "/profiles/#{uid}", profile)
        end

        def self.delete(uid)
            return raw_request('delete', "/profiles/#{uid}")
        end
    end
end
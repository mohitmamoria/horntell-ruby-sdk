module SahilHorntell
    class Horn
        extend SahilHorntell::Http::ApiRequester

        def self.to_profile(uid, horn)
            return raw_request('post', "/profiles/#{uid}/horns", horn)
        end

        def self.to_profiles(profiles, horn)
        	horn[:profile_uids] = profiles

            return raw_request('post', "/profiles/horns", horn)
        end
    end
end
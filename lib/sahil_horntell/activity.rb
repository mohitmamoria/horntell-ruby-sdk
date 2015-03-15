module SahilHorntell
    class Activity
        extend SahilHorntell::Http::ApiRequester

        def self.create(uid, activity)
            return raw_request('post', "/profiles/#{uid}/activities", activity)
        end
    end
end
module SahilHorntell
    class Campaign
        extend SahilHorntell::Http::ApiRequester

        def self.to_profile(uid, campaignId)
            return raw_request('post', "/profiles/#{uid}/campaigns/#{campaignId}")
        end

        def self.to_profiles(profiles, campaignId)
        	profiles = { :profile_uids => profiles }

            return raw_request('post', "/profiles/campaigns/#{campaignId}", profiles)
        end
    end
end
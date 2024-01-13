class GameTeam

    attr_reader :game_id,
                :team_id,
                :hoa,
                :result,
                :settled_in,
                :head_coach,
                :goals,
                :shots,
                :tackles,
                :pim,
                :power_play_opps,
                :power_play_goals,
                :faceoff_win_percent,
                :giveaways,
                :takeaways

    def initialize(info)
        @game_id = info[:game_id]
        @team_id = info[:team_id]
        @hoa = info[:hoa]
        @result = info[:result]
        @settled_in = info[:settled_in]
        @head_coach = info[:head_coach]
        @goals = info[:goals]
        @shots = info[:shots]
        @tackles = info[:tackles]
        @pim = info[:pim]
        @power_play_opps = info[:power_play_opps]
        @power_play_goals = info[:power_play_goals]
        @faceoff_win_percent = info[:faceoff_win_percent]
        @giveaways = info[:giveaways]
        @takeaways = info[:takeaways]
    end

    def get_season_from_game_id
        first_half = @game_id.to_s.slice(0, 4)
        second_half = first_half.to_i.next.to_s
        season_id = first_half.concat(second_half).to_i
    end

end
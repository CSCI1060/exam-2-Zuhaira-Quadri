function avgScore = simpleBlackjack(limit, trials)
%
% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.

function avgScore = simpleBlackjack(limit, trials)
    % Card values, with face cards as 10
    cards = [2 3 4 5 6 7 8 9 10 10 10 10];
    totalScore = 0;

    for t = 1:trials
        handTotal = 0;
        
        while handTotal < limit
            card = cards(randi(12));  
            handTotal = handTotal + card;
        end
        
        totalScore = totalScore + handTotal;  
    end
    
    avgScore = totalScore / trials;  
end

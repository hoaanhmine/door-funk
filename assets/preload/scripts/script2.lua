Nps = 0
NoteHit = false
function onStepHit()
    if NoteHit then
        Nps = Nps - 1 
    end    
end

function onRecalculateRating()
    rateFullPer = round(getProperty('ratingPercent') * 100, 2)
    return Function_Continue
end

function onUpdatePost(elapsed)
    local BeforeScore = 'Score: '..score..' | Misses: '..misses..' | Rating: '..ratingName..' | NPS: '..Nps
    local FinalScore = 'Score: '..score..' | Misses: '..misses..' | Rating: '..ratingName..' ('..rateFullPer..'%) - '..ratingFC..' | NPS: '..Nps

    if ratingName == '?' then
        setTextString('scoreTxt', BeforeScore)
    else
        setTextString('scoreTxt', FinalScore)  
    end

    if Nps < 0 then
        Nps = 0
        NoteHit = false; 
    end   
end

function round(num, dp) -- i stole this
    local mult = 10^(dp or 0);
    return math.floor(num * mult + 0.5)/mult;
end
    
function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        Nps = Nps + 1
        NoteHit = false;
    end

    ezTimer('drain', 1, function()
        NoteHit = true;
    end)  
end

timers = {}
function ezTimer(tag, timer, callback) -- Better
    table.insert(timers,{tag, callback})
    runTimer(tag, timer)
end

function onTimerCompleted(tag)
    for k,v in pairs(timers) do
        if v[1] == tag then
            v[2]()
        end
    end
end

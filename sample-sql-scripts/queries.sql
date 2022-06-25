SELECT (o.observation_id, o.content)
FROM observation o
    JOIN crop_info ci ON ci.crop_info_id = 1 AND
        ci.crop_info_id = o.crop_info_id;

-- selects all crop infos and its observations
SELECT 
    ci.crop_info_id "crop info id",
    ci.crop_id "crop id", 
    o.observation_id "observation id", 
    o.content "content"
FROM observation o
    JOIN crop_info ci ON ci.crop_info_id = o.crop_info_id;
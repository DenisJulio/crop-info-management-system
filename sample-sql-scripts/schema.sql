CREATE TABLE IF NOT EXISTS crop(
    crop_id SERIAL PRIMARY KEY,
    planted_area DECIMAL,
    number_of_plants INT
);

CREATE TABLE IF NOT EXISTS crop_info(
    crop_info_id SERIAL PRIMARY KEY,
    crop_id INT REFERENCES crop (crop_id)
        ON DELETE CASCADE
);

CREATE TABLE If NOT EXISTS observation(
    observation_id SERIAL PRIMARY KEY,
    crop_info_id INT REFERENCES crop_info (crop_info_id)
        ON DELETE CASCADE,
    content VARCHAR(255)
);
    
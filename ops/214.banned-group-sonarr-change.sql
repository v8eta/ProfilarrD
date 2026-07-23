-- @operation: export
-- @entity: batch
-- @name: Banned Group Sonarr Change
-- @exportedAt: 2026-07-23T04:21:19.435Z
-- @opIds: 430, 431, 432, 433, 434, 435, 436, 437, 438

-- --- BEGIN op 430 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 680000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 430

-- --- BEGIN op 431 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 680000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '1080p HDTV'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 431

-- --- BEGIN op 432 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 520000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 432

-- --- BEGIN op 433 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 520000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 433

-- --- BEGIN op 434 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Banned WEBRip', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 434

-- --- BEGIN op 435 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'Banned WEBRip', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 435

-- --- BEGIN op 436 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Banned WEBRip'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 436

-- --- BEGIN op 437 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Banned Groups (Regular)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 437

-- --- BEGIN op 438 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'Banned WEBRip'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 438

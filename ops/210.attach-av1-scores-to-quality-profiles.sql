-- @operation: export
-- @entity: batch
-- @name: Attach AV1 Scores to Quality Profiles
-- @exportedAt: 2026-07-14T00:00:00.000Z
-- @opIds: local-1, local-2, local-3, local-4, local-5, local-6, local-7, local-8, local-9, local-10, local-11

-- --- BEGIN local-1 ( insert quality_profile_custom_formats AV1 / 1080p Compact = 80000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'AV1', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-1

-- --- BEGIN local-2 ( insert quality_profile_custom_formats AV1 / 1080p Efficient = 50000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'AV1', 'all', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-2

-- --- BEGIN local-3 ( insert quality_profile_custom_formats AV1 / 2160p Efficient = 50000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'AV1', 'all', 50000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-3

-- --- BEGIN local-4 ( insert quality_profile_custom_formats AV1 / 1080p Balanced = 2000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'AV1', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-4

-- --- BEGIN local-5 ( insert quality_profile_custom_formats AV1 / 2160p Balanced = 2000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'AV1', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-5

-- --- BEGIN local-6 ( insert quality_profile_custom_formats AV1 / 1080p Quality = 1000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'AV1', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-6

-- --- BEGIN local-7 ( insert quality_profile_custom_formats AV1 / 2160p Quality = 1000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AV1', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-7

-- --- BEGIN local-8 ( insert quality_profile_custom_formats AV1 / 720p Quality = 1000 )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'AV1', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-8

-- --- BEGIN local-9 ( insert quality_profile_custom_formats AV1 / 1080p Quality HDR = -999999, explicit ban )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-9

-- --- BEGIN local-10 ( insert quality_profile_custom_formats AV1 / 1080p Remux = -999999, explicit ban )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-10

-- --- BEGIN local-11 ( insert quality_profile_custom_formats AV1 / 2160p Remux = -999999, explicit ban )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux' AND custom_format_name = 'AV1' AND arr_type = 'all'
);
-- --- END local-11

-- NOTE: 1080p Quality HDR, 1080p Remux, and 2160p Remux get an explicit
-- ban row (not just an absent row) to match idiomatic schema convention
-- (see ASL, which is explicitly -999999 in nearly every profile rather
-- than simply omitted). Remux must be an untouched source rip, which an
-- AV1 re-encode can never satisfy by definition.

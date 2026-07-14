-- @operation: export
-- @entity: batch
-- @name: Prune Zero-Score Streaming-Tag CFs from Quality Profiles
-- @exportedAt: 2026-07-14T00:00:00.000Z
-- @opIds: local-1, local-2, local-3, local-4, local-5, local-6, local-7, local-8, local-9, local-10, local-11, local-12, local-13, local-14, local-15, local-16, local-17, local-18, local-19, local-20, local-21, local-22, local-23, local-24, local-25, local-26, local-27, local-28

-- --- BEGIN local-1 ( delete from quality_profile_custom_formats CRAV / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'CRAV' AND score = 0;
-- --- END local-1

-- --- BEGIN local-2 ( delete from quality_profile_custom_formats CRIT / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'CRIT' AND score = 0;
-- --- END local-2

-- --- BEGIN local-3 ( delete from quality_profile_custom_formats DRPO / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'DRPO' AND score = 0;
-- --- END local-3

-- --- BEGIN local-4 ( delete from quality_profile_custom_formats HTSR / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'HTSR' AND score = 0;
-- --- END local-4

-- --- BEGIN local-5 ( delete from quality_profile_custom_formats HULU / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'HULU' AND score = 0;
-- --- END local-5

-- --- BEGIN local-6 ( delete from quality_profile_custom_formats iP / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'iP' AND score = 0;
-- --- END local-6

-- --- BEGIN local-7 ( delete from quality_profile_custom_formats MUBI / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'MUBI' AND score = 0;
-- --- END local-7

-- --- BEGIN local-8 ( delete from quality_profile_custom_formats NOW / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'NOW' AND score = 0;
-- --- END local-8

-- --- BEGIN local-9 ( delete from quality_profile_custom_formats PCOK / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'PCOK' AND score = 0;
-- --- END local-9

-- --- BEGIN local-10 ( delete from quality_profile_custom_formats PLAY / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'PLAY' AND score = 0;
-- --- END local-10

-- --- BEGIN local-11 ( delete from quality_profile_custom_formats PMTP / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'PMTP' AND score = 0;
-- --- END local-11

-- --- BEGIN local-12 ( delete from quality_profile_custom_formats ROKU / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'ROKU' AND score = 0;
-- --- END local-12

-- --- BEGIN local-13 ( delete from quality_profile_custom_formats SHO / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'SHO' AND score = 0;
-- --- END local-13

-- --- BEGIN local-14 ( delete from quality_profile_custom_formats STAN / 1080p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '1080p Quality' AND custom_format_name = 'STAN' AND score = 0;
-- --- END local-14

-- --- BEGIN local-15 ( delete from quality_profile_custom_formats CRAV / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'CRAV' AND score = 0;
-- --- END local-15

-- --- BEGIN local-16 ( delete from quality_profile_custom_formats CRIT / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'CRIT' AND score = 0;
-- --- END local-16

-- --- BEGIN local-17 ( delete from quality_profile_custom_formats DRPO / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'DRPO' AND score = 0;
-- --- END local-17

-- --- BEGIN local-18 ( delete from quality_profile_custom_formats HTSR / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'HTSR' AND score = 0;
-- --- END local-18

-- --- BEGIN local-19 ( delete from quality_profile_custom_formats HULU / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'HULU' AND score = 0;
-- --- END local-19

-- --- BEGIN local-20 ( delete from quality_profile_custom_formats iP / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'iP' AND score = 0;
-- --- END local-20

-- --- BEGIN local-21 ( delete from quality_profile_custom_formats MUBI / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'MUBI' AND score = 0;
-- --- END local-21

-- --- BEGIN local-22 ( delete from quality_profile_custom_formats NOW / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'NOW' AND score = 0;
-- --- END local-22

-- --- BEGIN local-23 ( delete from quality_profile_custom_formats PCOK / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'PCOK' AND score = 0;
-- --- END local-23

-- --- BEGIN local-24 ( delete from quality_profile_custom_formats PLAY / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'PLAY' AND score = 0;
-- --- END local-24

-- --- BEGIN local-25 ( delete from quality_profile_custom_formats PMTP / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'PMTP' AND score = 0;
-- --- END local-25

-- --- BEGIN local-26 ( delete from quality_profile_custom_formats ROKU / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'ROKU' AND score = 0;
-- --- END local-26

-- --- BEGIN local-27 ( delete from quality_profile_custom_formats SHO / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'SHO' AND score = 0;
-- --- END local-27

-- --- BEGIN local-28 ( delete from quality_profile_custom_formats STAN / 2160p Quality )
DELETE FROM quality_profile_custom_formats WHERE quality_profile_name = '2160p Quality' AND custom_format_name = 'STAN' AND score = 0;
-- --- END local-28

-- @operation: export
-- @entity: batch
-- @name: Delay for Seedbox
-- @exportedAt: 2026-07-23T04:30:03.992Z
-- @opIds: 440, 441, 442, 443

-- --- BEGIN op 440 ( update delay_profile "Radarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Radarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 440

-- --- BEGIN op 441 ( update delay_profile "Radarr" )
update "delay_profiles" set "torrent_delay" = 45 where "name" = 'Radarr' and "torrent_delay" = 0;
-- --- END op 441

-- --- BEGIN op 442 ( update delay_profile "Sonarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Sonarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 442

-- --- BEGIN op 443 ( update delay_profile "Sonarr" )
update "delay_profiles" set "torrent_delay" = 45 where "name" = 'Sonarr' and "torrent_delay" = 0;
-- --- END op 443

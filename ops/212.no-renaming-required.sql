-- @operation: export
-- @entity: batch
-- @name: No renaming required
-- @exportedAt: 2026-07-14T16:29:15.117Z
-- @opIds: 422, 423

-- --- BEGIN op 422 ( update radarr_naming "Radarr" )
update "radarr_naming" set "rename" = 0 where "name" = 'Radarr' and "rename" = 1;
-- --- END op 422

-- --- BEGIN op 423 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "rename" = 0 where "name" = 'Sonarr' and "rename" = 1;
-- --- END op 423

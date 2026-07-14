-- @operation: export
-- @entity: batch
-- @name: Zero Delay Profiles for Fastest Grabs
-- @exportedAt: 2026-07-15T00:00:00.000Z
-- @opIds: local-1, local-2

-- --- BEGIN local-1 ( update delay_profile "Radarr" -> 0/0, bypass entirely )
UPDATE delay_profiles SET usenet_delay = 0, torrent_delay = 0
WHERE name = 'Radarr' AND usenet_delay = 360 AND torrent_delay = 360;
-- --- END local-1

-- --- BEGIN local-2 ( update delay_profile "Sonarr" -> 0/0, bypass entirely )
UPDATE delay_profiles SET usenet_delay = 0, torrent_delay = 0
WHERE name = 'Sonarr' AND usenet_delay = 360 AND torrent_delay = 360;
-- --- END local-2

-- NOTE: zero delay means the very first release found is grabbed
-- immediately with no wait for a potentially better one to appear.
-- Intentional trade-off: fastest possible download, accepting
-- duplicate/multiple grabs across trackers as an acceptable cost
-- rather than a problem to avoid.

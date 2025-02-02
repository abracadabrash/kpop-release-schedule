CREATE TABLE 'Album' (
    'AlbumID' INTEGER PRIMARY KEY,
    'AlbumName' TEXT,
    'AlbumTypeID' INTEGER,
    'TitleTrackID' INTEGER,
    'CategoryID' TEXT,
    FOREIGN KEY ('AlbumTypeID') REFERENCES 'AlbumTypes' ('AlbumTypeID'),
    FOREIGN KEY ('TitleTrackID') REFERENCES 'TitleTracks' ('TitleTrackID')
);

CREATE TABLE 'TitleTracks' (
    'TitleTrackID' INTEGER PRIMARY KEY,
    'TitleTrackName' TEXT
);

CREATE TABLE 'AlbumTypes' (
    'AlbumTypeID' INTEGER PRIMARY KEY,
    'AlbumTypeName' TEXT
);

CREATE TABLE 'Artist' ('ArtistID' INTEGER PRIMARY KEY, 'ArtistName' TEXT);

CREATE TABLE 'Releases' (
    'ReleaseID' INTEGER PRIMARY KEY,
    'ReleaseDate' TEXT,
    'ReleaseTime' TEXT,
    'ArtistID' INTEGER,
    'AlbumID' INTEGER,
    'SourceID' INTEGER,
    FOREIGN KEY ('ArtistID') REFERENCES 'Artist' ('ArtistID'),
    FOREIGN KEY ('AlbumID') REFERENCES 'Album' ('AlbumID'),
    FOREIGN KEY ('SourceID') REFERENCES 'Sources' ('SourceID')
);

CREATE TABLE 'StreamingServices' (
    'StreamingPlatform' TEXT,
    PRIMARY KEY ('StreamingPlatform')
);

CREATE TABLE 'StreamingLinks' (
    'AlbumID' INTEGER,
    'StreamingPlatform' TEXT,
    'StreamingLink' TEXT,
    FOREIGN KEY ('AlbumID') REFERENCES 'Album' ('AlbumID'),
    FOREIGN KEY ('StreamingPlatform') REFERENCES 'StreamingServices' ('StreamingPlatform')
);

CREATE TABLE 'Sources' (
    'SourceID' INTEGER PRIMARY KEY,
    'SourceMonth' TEXT,
    'SourceYear' TEXT,
    'SourceLink' TEXT
);

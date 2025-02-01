CREATE TABLE 'Album' (
    'AlbumID' INTEGER,
    'AlbumName' TEXT,
    'AlbumTypeID' INTEGER,
    'TitleTrackID' INTEGER,
    'CategoryID' TEXT,
    PRIMARY KEY ('AlbumID'),
    FOREIGN KEY ('AlbumTypeID') REFERENCES 'AlbumTypes' ('AlbumTypeID'),
    FOREIGN KEY ('TitleTrackID') REFERENCES 'TitleTracks' ('TitleTrackID')
);

CREATE TABLE 'TitleTracks' (
    'TitleTrackID' INTEGER,
    'TitleTrackName' TEXT,
    PRIMARY KEY ('TitleTrackID')
);

CREATE TABLE 'AlbumTypes' (
    'AlbumTypeID' INTEGER,
    'AlbumTypeName' TEXT,
    PRIMARY KEY ('AlbumTypeID')
);

CREATE TABLE 'Artist' (
    'ArtistID' INTEGER,
    'ArtistName' TEXT,
    PRIMARY KEY ('ArtistID')
);

CREATE TABLE 'Releases' (
    'ReleaseID' INTEGER,
    'ReleaseDate' TEXT,
    'ReleaseTime' TEXT,
    'ArtistID' INTEGER,
    'AlbumID' INTEGER,
    'SourceID' INTEGER,
    PRIMARY KEY ('ReleaseID'),
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
    'SourceID' INTEGER,
    'SourceMonth' TEXT,
    'SourceYear' TEXT,
    'SourceLink' TEXT,
    PRIMARY KEY ('SourceID')
);

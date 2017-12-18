# antorus-composite
The goal of this repository is to create and store SimC [Raid Events](https://github.com/simulationcraft/simc/wiki/RaidEvents) for fights in Antorus the Burning Throne.

Each fight type will consist of the following things:
- Movement
- Adds
- Number of Boss Targets

In addition, each folder for the various difficulties will include a readme file to specify how the sim should be run with the following parameters:
- Fight Length
- Patchwerk, Light Movement, or Heavy Movement

## Movement profiles

Default raid event for light movement:
```coffee
raid_events+=/movement,players_only=1,first=45,cooldown=85,distance=50,last=360
```

Default raid event for heavy movement:
```coffee
raid_events+=/movement,players_only=1,first=10,distance=25,duration=4
```

Just a note, if you are using an editor for this you can use the "coffee" language for syntax highlighting. It works decently well.

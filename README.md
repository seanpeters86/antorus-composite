# Antorus Composite 2.0
The goal of this repository is to create and store SimC [Raid Events](https://github.com/simulationcraft/simc/wiki/RaidEvents) for fights in Antorus, the Burning Throne.

[Testing Results](https://docs.google.com/spreadsheets/d/1XVWD7TKzBcGKOs88f3sBmg4dmJeeWYSm81DmJUCDXKw/edit?usp=sharing)

Each fight type will consist of the following things:
- Movement
- Adds
- Boss Targets/Invulnerabilities
- Fight Modifications

In addition, each folder for the various difficulties will include a readme file to specify how the sim should be run with the following parameters:
- Fight Length
- Patchwerk, Light Movement, or Heavy Movement

## Movement profiles
Ideally the sim profiles should be developed with all movement mechanics added custom, and then running the sim on Patchwerk to get the most tailored results.

Default raid event for light movement:
```coffee
raid_events+=/movement,players_only=1,first=45,cooldown=85,distance=50,last=360
```

Default raid event for heavy movement:
```coffee
raid_events+=/movement,players_only=1,first=10,distance=25,duration=4
```

Just a note, if you are using an editor for this you can use the "coffee" language for syntax highlighting. It works decently well.

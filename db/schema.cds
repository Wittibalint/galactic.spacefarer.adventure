using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';
namespace sap.capire.Spacefarer; 

entity GalacticSpacefarer : cuid, managed {  
    key name : String;
    stardustCollection  : String;
    spacesuitColor : String;
    WormholeNavigationSkill : String;
    originalPlanet : String;
    department : Association to IntergalacticDepartment;
    positions : String;
}

entity IntergalacticDepartment : cuid {
    spacefarers : Association to many GalacticSpacefarer on spacefarers.department = $self;
    key name : String;
}

entity NavigationSkill : CodeList {
key code: Int16 enum {
    unknown = 0;
    beginner = 1;
    medium = 2;
    professional = 3;
    hansolo = 4;
};
}

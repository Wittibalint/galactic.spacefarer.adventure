using { cuid, sap.common.CodeList } from '@sap/cds/common';
namespace sap.capire.Spacefarer; 

entity GalacticSpacefarer : cuid {  
    key ID : String;
    stardustCollection  : String;
    WormholeNavigationSkill : String;
    originalPlanet : String;
    department : Association to IntergalacticDepartment;
    positions : String;
}
entity User : cuid {
    key userName : String;
    //I would NEVER stored it as a plaint text only now for debugging purpose
    password : String;
    spacefarer : Association to GalacticSpacefarer;
    }
entity IntergalacticDepartment : cuid {
    spacefarers : Association to many GalacticSpacefarer on spacefarers.department = $self;
    name : String;
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

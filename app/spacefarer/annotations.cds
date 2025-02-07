using ProcessorService as service from '../../srv/services';
annotate service.GalacticSpacefarer with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stardustCollection',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WormholeNavigationSkill',
                Value : WormholeNavigationSkill,
            },
            {
                $Type : 'UI.DataField',
                Label : 'originalPlanet',
                Value : originalPlanet,
            },
            {
                $Type : 'UI.DataField',
                Label : 'positions',
                Value : positions,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stardustCollection',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Label : 'WormholeNavigationSkill',
            Value : WormholeNavigationSkill,
        },
        {
            $Type : 'UI.DataField',
            Label : 'originalPlanet',
            Value : originalPlanet,
        },
        {
            $Type : 'UI.DataField',
            Label : 'positions',
            Value : positions,
        },
    ],
);

annotate service.GalacticSpacefarer with {
    department @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'IntergalacticDepartment',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : department_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};


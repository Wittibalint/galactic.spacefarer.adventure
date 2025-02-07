using ProcessorService as service from '../../srv/services';
annotate service.User with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'userName',
                Value : userName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'password',
                Value : password,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spacefarer_ID',
                Value : spacefarer_ID,
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
            Label : 'userName',
            Value : userName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'password',
            Value : password,
        },
        {
            $Type : 'UI.DataField',
            Label : 'spacefarer_ID',
            Value : spacefarer_ID,
        },
    ],
);

annotate service.User with {
    spacefarer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'GalacticSpacefarer',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : spacefarer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'stardustCollection',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'WormholeNavigationSkill',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'originalPlanet',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'positions',
            },
        ],
    }
};


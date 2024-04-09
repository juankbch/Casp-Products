namespace com.logali;


entity kna1 {
    key Cliente   : String;
        Nombre    : String;
        Poblacion : String;
        CP        : String(5);
        Rg        : String(2);
        Calle     : String;
        NIF       : String;
        TipoNIF   : String(2);
};

entity mara {
    key Material       : String;
        TpMt           : String(4);
        GrupoArt       : String;
        UMB            : String(3);
        RegistroInvima : String;
        TextoBreveMat  : String;
};

entity vbak {
    key DocVtas     : String;
        CreadoEl    : Date;
        Hora        : Time;
        ClVt        : String(4);
        Moneda      : String(3);
        OrgVt       : type of ClVt;
        CDis        : String(2);
        Sector      : type of CDis;
        OfVta       : String;
        Pedido      : String;
        Solicitante : kna1:Cliente;
        Aseguradora : String;
        CeSa        : type of OfVta;
        Cl          : type of Moneda;
};

entity vbap {
    key DocVtas      : vbak:DocVtas;
    key Pos          : String;
        Material     : mara:Material;
        Denominacion : String;
        TPos         : String;
        MatCliente   : String;
        CtdPed       : String;
        Aseguradora  : String;
        Prestacion   : String;
        TpPrest      : String;
}


/*
entity Produts {
    key ID               : Integer;
        name             : String;
        descripcion      : String;
        imageURL         : String;
        releaseDate      : DateTime;
        DiscontinuedDate : DateTime;
        price            : Decimal(16, 2);
        heiht            : Decimal(16, 2);
        width            : Decimal(16, 2);
        depth            : Decimal(16, 2);
        quentity         : Decimal(16, 2);
};

entity Supplier {

    key ID         : UUID;
        name       : String;
        Street     : String;
        city       : String;
        state      : String(2);
        PostalCode : String(5);
        country    : String(3);
        Email      : String;
        Phone      : String;
        Fax        : String;
};

entity Category {
    key ID   : String(1);
        name : String;

};

entity StockAvaibility {
    key id          : Integer;
        descripcion : String;
};

entity currencies {
    key ID          : String(3);
        description : String;
};

entity UnitOfMeasures {
    key ID          : String(2);
        description : String;
};

entity DimensionUnit {
    key ID          : String(2);
        description : String;
};

entity Months {
    key ID               : String(2);
        description      : String;
        shortDescription : String(3);

};

entity ProductReview {
    key name    : String;
        Rating  : Integer;
        Comment : String;

};

entity SalesDate {
    key DeliveryDate : DateTime;
        revenue      : Decimal(16, 2);
}*/

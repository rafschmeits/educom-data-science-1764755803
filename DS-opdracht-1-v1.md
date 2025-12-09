```mermaid
erDiagram
    Leverancier }o--|| Adres : heeft
    Leverancier }o--|| Postbus : heeft
    Contactpersoon }o--|| Leverancier : werktVoor
    Leverancier }o--|| LeverancierEigenschap : heeft
    LeverancierEigenschap }o--|| Eigenschap : type

    LeverancierRubriek }o--|| Leverancier : koppelt
    LeverancierRubriek }o--|| Hoofdrubriek : koppeltHoofd
    LeverancierRubriek }o--|| Subrubriek : koppeltSub
    Subrubriek }o--|| Hoofdrubriek : hoortBij

    Adres }o--|| Straat : gebruikt
    Adres }o--|| Postcode : gebruikt
    Adres }o--|| Woonplaats : ligtIn

    Postbus }o--|| Postcode : gebruikt
    Postbus }o--|| Woonplaats : ligtIn

    Woonplaats }o--|| Gemeente : hoortBij
    Gemeente }o--|| Provincie : hoortBij
    Provincie }o--|| Land : hoortBij

    Postcode }o--|| Straat : hoortBij
    Postcode }o--|| Woonplaats : hoortBij

    Contactpersoon }o--|| Afdeling : werktOp
    ContactpersoonTaak }o--|| Contactpersoon : hoortBij
    ContactpersoonTaak }o--|| Taak : taak
    ContactpersoonTaak }o--|| Afdeling : afdeling

    Leverancier {
        int LeverancierID PK
        string Leverancier
        string Email
        string MobielNummer
        string VastNummer
        int AdresID FK
        int PostbusID FK
    }

    Adres {
        int AdresID PK
        int StraatID FK
        int Nummer
        int PostcodeID FK
        int WoonplaatsID FK
    }

    Postbus {
        int PostbusID PK
        string Postbusnummer
        int PostcodeID FK
        int WoonplaatsID FK
    }

    Eigenschap {
        int EigenschapID PK
        string Eigenschap
        string Type
    }

    LeverancierEigenschap {
        int LeverancierID FK
        int EigenschapID FK
        string Waarde
    }

    Contactpersoon {
        int ContactpersoonID PK
        string Contactpersoon
        string Email
        string Telefoonnummer
        int AfdelingID FK
    }

    ContactpersoonTaak {
        int ContactpersoonID FK
        int TaakID FK
        int AfdelingID FK
    }

    Afdeling {
        int AfdelingID PK
        string Afdeling
    }

    Taak {
        int TaakID PK
        string Taak
    }

    Postcode {
        int PostcodeID PK
        string Postcode
        float Latitude
        float Longitude
        int StraatID FK
        int WoonplaatsID FK
    }

    Straat {
        int StraatID PK
        string Straat
    }

    Woonplaats {
        int WoonplaatsID PK
        string Woonplaats
        int GemeenteID FK
    }

    Gemeente {
        int GemeenteID PK
        string Gemeente
        int ProvincieID FK
    }

    Provincie {
        int ProvincieID PK
        string Provincie
        int LandID FK
    }

    Land {
        int LandID PK
        string Land
    }

    Hoofdrubriek {
        int HoofdrubriekID PK
        string Hoofdrubriek
    }

    Subrubriek {
        int SubrubriekID PK
        string Subrubriek
        int HoofdrubriekID FK
    }

    LeverancierRubriek {
        int LeverancierID FK
        int HoofdrubriekID FK
        int SubrubriekID FK
 }
 ```
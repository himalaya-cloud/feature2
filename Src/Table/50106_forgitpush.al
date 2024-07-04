table 60106 Gitpractice
{
    DataClassification = ToBeClassified;

    fields
    {
        field(60101; Himalaya; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(60102; HimalayaSJI; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(60103; HimalayaSharma; Boolean)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; Himalaya)
        {
            Clustered = true;
        }
    }
}
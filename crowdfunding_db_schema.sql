-- Creation of tables for 13-Crowdfunding-ETL-Challenge

-- Drop table if exists first in the reverse order of dependency
-- So delete first tables which does not have any foreign key depedency
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

-- Create table with least dependecny first
CREATE TABLE IF NOT EXISTS category (
    category_id varchar   PRIMARY KEY,
    category    varchar   NOT NULL
);

CREATE TABLE IF NOT EXISTS subcategory (
    subcategory_id varchar   PRIMARY KEY,
    subcategory    varchar   NOT NULL
);

CREATE TABLE IF NOT EXISTS contacts (
    contact_id   int       PRIMARY KEY,
    first_name   varchar   NOT NULL,
    last_name    varchar   NOT NULL,
    email        varchar   NOT NULL
);

CREATE TABLE IF NOT EXISTS campaign (
    cf_id           int      PRIMARY KEY,
    contact_id      int      NOT NULL,
    company_name    varchar  NOT NULL,
    description     varchar  NOT NULL,
    goal            float    NOT NULL,
    pledged         float    NOT NULL,
    outcome         varchar  NOT NULL,
    backers_count   int      NOT NULL,
    country         varchar  NOT NULL,
    currency        varchar  NOT NULL,
    launched_date   varchar  NOT NULL,
    end_date        varchar  NOT NULL,
    category_id     varchar  NOT NULL,
    subcategory_id  varchar  NOT NULL,
    CONSTRAINT      fk_Campaign_contact_id 
        FOREIGN KEY(contact_id)
        REFERENCES contacts(contact_id),
    CONSTRAINT      fk_Campaign_category_id
        FOREIGN KEY(category_id)
        REFERENCES category(category_id),
    CONSTRAINT      fk_Campaign_subcategory_id
        FOREIGN KEY(subcategory_id)
        REFERENCES subcategory(subcategory_id)
);


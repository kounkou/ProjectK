// <Item.h> -*- C++ -*-

// Copyright (C) 2017

/** @file Item.h
 *  The file is an abstract object representing
 *  an entity to be sold or bought by
 *  any client of the application.
 */

#ifndef ITEM_H
#define ITEM_H

#include <vector>
#include <string>
#include "Utils.h"

namespace amz {
    class Item {
    public:
        Item(std::string const& name, std::size_t quantity, std::vector<std::string> const& pictures,
              Price const& price, std::string const& description);

        virtual ~Item() {}

        // bunch of getters
        std::string              getName()        const;
        std::size_t              getQuantity()    const;
        std::vector<std::string> getPictures()    const;
        Price                    getPrice()       const;
        std::string              getDescription() const;

        // bunch of setters
        void setName(std::string const& __name);
        void setQuantity(std::size_t const& __quantity);
        void setPictures(std::vector<std::string> const& __pictures);
        void setPrice(Price const& __price);
        void setDescription(std::string const& __description);

        // describe function
        void describe() const;

    protected:
        std::string              _name;
        std::size_t              _quantity;
        std::vector<std::string> _pictures;
        Price                    _price;
        std::string              _description;
    };
}

#endif // ITEM_H

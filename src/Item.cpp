// <Item.cpp> -*- C++ -*-

// Copyright (C) 2017

/** @file Item.cpp
 *  The file is an abstract object representing
 *  an entity to be sold or bought by
 *  any client of the application.
 */

#include "Item.h"
#include <iostream>

typedef float Price;

namespace amz {
    /**
     * @brief Item::Item
     * constructor class with list initialization
     * @param name
     * @param quantity
     * @param pictures
     * @param price
     * @param description
     */
    Item::Item(std::string const& name, std::size_t quantity, std::vector<std::string> const& pictures,
          Price const& price, std::string const& description)
        : _name(name)
        , _quantity(quantity)
        , _pictures(pictures)
        , _price(price)
        , _description(description) {
    }

    /**
     * @brief Item::describe
     * This function will describe out the current object
     * of interest to the user
     */
    void Item::describe() const {
        std::cout << "_name        : " << _name        <<
                     "_quantity    : " << _quantity    <<
                     "_price       : " << _price       <<
                     "_description : " << _description <<
                     "_pictures    : " << std::endl;
        for (std::vector<std::string>::const_iterator it = _pictures.begin();
             it != _pictures.end();
             ++it) {
            std::cout << *it << std::endl;
        }
    }

    /**
     * @brief  Item::getName
     * @return std::string
     */
    std::string Item::getName() const {
        return _name;
    }

    /**
     * @brief Item::getQuantity
     * @return std::size_t
     */
    std::size_t Item::getQuantity() const {
        return _quantity;
    }

    /**
     * @brief Item::getPictures
     * @return std::vector<std::string>
     */
    std::vector<std::string> Item::getPictures() const {
        return _pictures;
    }

    /**
     * @brief Item::getPrice
     * @return Price
     */
    Price Item::getPrice() const {
        return _price;
    }

    /**
     * @brief Item::getDescription
     * @return std::string
     */
    std::string Item::getDescription() const {
        return _description;
    }

    /**
     * @brief setName
     * @param name
     */
    void Item::setName(std::string const& __name) {
        _name = __name;
    }

    /**
     * @brief Item::setQuantity
     * @param quantity
     */
    void Item::setQuantity(std::size_t const& __quantity) {
        _quantity = __quantity;
    }

    /**
     * @brief Item::setPictures
     * @param pictures
     */
    void Item::setPictures(std::vector<std::string> const& __pictures) {
        _pictures = __pictures;
    }

    /**
     * @brief Item::setPrice
     * @param price
     */
    void Item::setPrice(Price const& __price) {
        _price = __price;
    }

    /**
     * @brief Item::setDescription
     * @param description
     */
    void Item::setDescription(std::string const& __description) {
        _description = __description;
    }
}

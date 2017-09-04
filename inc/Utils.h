// <Utils.h> -*- C++ -*-

// Copyright (C) 2017

/** @file iitem.h
 *  The file is an abstract object representing
 *  an entity to be sold or bought by
 *  any client of the application.
 */

#ifndef UTILS_H
#define UTILS_H

#include <Qt> // oh !

namespace amz {

    // typedefining the price...
    typedef float Price;

    // These are the roles model
    enum Roles {
        NameRole        = Qt::UserRole + 1,
        QuantityRole    = Qt::UserRole + 2,
        PictureRole     = Qt::UserRole + 3,
        PriceRole       = Qt::UserRole + 4,
        DescriptionRole = Qt::UserRole + 5
    };
}

#endif // UTILS_H

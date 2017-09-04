// <DataProvider.h> -*- C++ -*-

// Copyright (C) 2017

/** @file DataProvider.h
 */

#ifndef DataProvider_H
#define DataProvider_H

#include "IDataProvider.h"

namespace amz {
    class DataProvider : public IDataProvider
    {
    public:
        DataProvider() {}
       ~DataProvider() {}

    private:
        DataProvider(DataProvider const& rhs);
        DataProvider& operator=(DataProvider const& rhs);
    };
}

#endif // DataProvider_H

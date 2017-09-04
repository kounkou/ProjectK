// <Application.h> -*- C++ -*-

// Copyright (C) 2017

/** @file Application.h
 */

#ifndef Application_H
#define Application_H

#include <memory>
#include "DataProvider.h"

class IDataProvider;

namespace amz {
    class Application {
    public:
        Application();
       ~Application();

        void overrideDataprovider(std::shared_ptr<IDataProvider> __dataProvider);

    private:
        Application(Application const& rhs);
        Application& operator=(Application const& rhs);

    private:
        IDataProvider* _dataProvider;
        DataProvider   _ownedDataProvider;
    };
}

#endif // Application_H

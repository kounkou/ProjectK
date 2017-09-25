// <Application.h> -*- C++ -*-

// Copyright (C) 2017

/** @file Application.h
 */

#ifndef Application_H
#define Application_H

#include <memory>
#include "DataProvider.h"

#include <QQmlApplicationEngine>
#include "ItemsModel.h"
#include "FilterProxyModel.h"
class QQmlContext;
#include <QSqlQuery>

class IDataProvider;

namespace amz {

    ///
    /// @brief CLASS Application
    ///        Application is the init class used by the application
    ///        to instanciate the application
    class Application {
    public:
        /// @brief the default constructor
        Application();

        /// @brief the destructor
       ~Application();

        /// @brief It overrides the data provider
        void overrideDataprovider(std::shared_ptr<IDataProvider> dataProvider);

        /// @brief It inits the application by loading all QML relevants elements
        bool init();

    private:
        /// @brief the copy constructor
        Application(Application const& rhs);

        /// @brief the assignment operator
        Application& operator=(Application const& rhs);

    private:
        /// @brief declares the data provider
        IDataProvider* _dataProvider;

        /// @brief declares the data provider owned instance
        DataProvider _ownedDataProvider;

        /// @brief declares the QML engine
        QQmlApplicationEngine _engine;

        /// @brief declares the context
        QQmlContext* _context;

        /// @brief declares the list model instance
        ItemsModel _listModel;

        /// @brief declares the filter model instance
        FilterProxyModel _filterModel;
    };
}

#endif // Application_H

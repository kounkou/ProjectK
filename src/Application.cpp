/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Application.cpp
///
/// DESCRIPTION
/// Application uses the gate to the dataprovider
/// to enable receiving commands from
/// the network
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

#include "Application.h"
#include "Logging.h"
#include <QQmlContext>
#include <QDebug>

namespace amz {
    ///////////////////////////////////////////////////
    /// FUNCTION Application::Application
    ///
    /// DESCRIPTION
    /// initialize the dataProvider with
    /// the ownedDataProvider
    ///////////////////////////////////////////////////
    Application::Application()
    : _dataProvider(&_ownedDataProvider)
    {
        LOG_ENTEREXIT;
    }

    ///////////////////////////////////////////////////
    /// FUNCTION Application::login
    ///////////////////////////////////////////////////
    bool Application::loginUser(const QString& login, const QString& password)
    {
        LOG_ENTEREXIT;

        ////////////////////// BEGIN LOGIN
        // Add the database connection
        QSqlDatabase m_db = QSqlDatabase::addDatabase("QMYSQL");
        //Set relevant settings
        m_db.setHostName("127.0.0.1");
        m_db.setDatabaseName("foo");
        m_db.setUserName(login);
        m_db.setPassword(password;

        // Open the database
        if (!m_db.open()) {
            qWarning() << __FUNCTION__ << "Failed to open main database; aborting...";
            return false;
        }

        ////////////////////// END LOGIN

        ////////////////////// BEGIN RETRIEVING ITEMS

        // Create query string
        QString queryString("select * from tbl1");
        QSqlQuery query(queryString, m_db);

        // Check if the query has executed properly
        if (!query.exec()) {
            qWarning() << __FUNCTION__ << ":" <<__LINE__<<"Failed to fetch ids";
            return false;
        }

        // Here I check whether the select has returned any results and append them to the list
        while(query.next()) {
            _listModel.addData(query.value(0).toString(),
                               query.value(1).toString(),
                               query.value(2).toString(),
                               query.value(3).toString(),
                               query.value(4).toString());
        }

        // Create filter model
        _filterModel.setSourceModel(&_listModel);
        _filterModel.setFilterRole(NameRole);
        _filterModel.setSortRole(NameRole);
        _context->setContextProperty("filterModel", &_filterModel);

        ////////////////////// END RETRIEVING ITEMS

        return true;
    }

    ///////////////////////////////////////////////////
    /// FUNCTION Application::init
    ///
    /// DESCRIPTION
    /// init function. The init function will download
    /// a database of items.
    ///
    /// RETURN
    /// The init status
    ///////////////////////////////////////////////////
    bool Application::init()
    {
        LOG_ENTEREXIT;

        _context = _engine.rootContext();
        _context->setContextProperty("model", (QObject *)this);
        _engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

        return true;
    }

    ///////////////////////////////////////////////////
    /// FUNCTION Application::~Application
    ///
    /// DESCRIPTION
    /// destructor function
    ///////////////////////////////////////////////////
    Application::~Application()
    {
        LOG_ENTEREXIT;
    }

    ///////////////////////////////////////////////////
    /// FUNCTION Application::overrideDataprovider
    ///
    /// DESCRIPTION
    /// An override function to override the DataProvider
    ///
    /// PARAMS
    /// param [in] dataProvider
    ///////////////////////////////////////////////////
    void Application::overrideDataprovider(std::shared_ptr<IDataProvider> dataProvider)
    {
        LOG_ENTEREXIT;

        _dataProvider = dataProvider.get();
    }
}

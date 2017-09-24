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

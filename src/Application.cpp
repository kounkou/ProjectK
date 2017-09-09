// Copyright (c) 2017 godbod, All rights reserved. 

////////////////////////////////////////////////////////////////////////////////
// FILE Template.h
//  
// DESCRIPTION
// Application uses the gate to the dataprovider
// to enable receiving commands from the network
//
// DESIGN DOCUMENTS
// none
//
// DATE          BY                         SPR          REMARKS
// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
//
////////////////////////////////////////////////////////////////////////////////

#include "Application.h"
#include "logging.h"

namespace amz {
    
    ////////////////////////////////////////////////////////////////////////////////
    // FUNCTION Application::Application
    //
    // DESCRIPTION
    // default constructor
    // initialize the dataProvider with the ownedDataProvider
    //
    // PARAMETERS
    // none
    ////////////////////////////////////////////////////////////////////////////////
    Application::Application()
        : _dataProvider(&_ownedDataProvider) 
    {
       LOG_TRACE_ENTEREXIT;
    }
    
    ////////////////////////////////////////////////////////////////////////////////
    // FUNCTION Application::~Application
    //
    // DESCRIPTION
    // destructor
    //
    // PARAMETERS
    // none
    ////////////////////////////////////////////////////////////////////////////////
    Application::~Application() 
    {
        LOG_TRACE_ENTEREXIT;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // FUNCTION Application::overrideDataprovider
    //
    // DESCRIPTION
    // dataProvider : shared_ptr of IDataProvider
    //
    // PARAMETERS
    // none
    ////////////////////////////////////////////////////////////////////////////////
    void Application::overrideDataprovider(std::shared_ptr<IDataProvider> dataProvider) 
    {
        LOG_TRACE_ENTEREXIT;
        _dataProvider = __dataProvider.get();
    }
}

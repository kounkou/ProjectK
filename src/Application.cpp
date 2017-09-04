// <Application.cpp> -*- C++ -*-

// Copyright (C) 2017

/** @file Application.cpp
 * Application uses the gate to the dataprovider
 * to enable receiving commands from
 * the network
 */

#include "Application.h"

namespace amz {
    /**
     * @brief Application::Application
     * initialize the dataProvider with
     * the ownedDataProvider
     */
    Application::Application()
        : _dataProvider(&_ownedDataProvider) {
    }

    /**
     * @brief Application::~Application
     * nothing to delete
     */
    Application::~Application() {
    }

    /**
     * @brief Application::overrideDataprovider
     * @param __dataProvider
     */
    void Application::overrideDataprovider(std::shared_ptr<IDataProvider> __dataProvider) {
        _dataProvider = __dataProvider.get();
    }
}

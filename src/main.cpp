/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE main.cpp
///
/// DESCRIPTION
/// This is the main file implementation
///
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

#include <QGuiApplication>
#include "Application.h"

///
/// @brief main file implementation
/// @param [in] argc : number of parameters
/// @param [in] argv : parameters given as char* []
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    amz::Application appli;
    appli.init();

    return app.exec();
}

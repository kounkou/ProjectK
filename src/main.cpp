// Copyright (c) 2017 godbod, All rights reserved. 

////////////////////////////////////////////////////////////////////////////////
// FILE Template.h
//  
// DESCRIPTION
// This is the main file implementation 
//
//
// DESIGN DOCUMENTS
// none 
//
// DATE          BY                         Issue #      REMARKS
// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
//
////////////////////////////////////////////////////////////////////////////////

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ItemsModel.h"
#include "FilterProxyModel.h"
#include <QQmlContext>

///
/// @brief main file implementation
/// @param [in] argc : number of parameters
/// @param [in] argv : parameters given as char* []
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    // QQmlApplicationEngine engine;
    // engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    //Create and populate list model instance
    amz::ItemsModel listModel;
    listModel.addData(
        "Raspberry",
        "5",
        "https://images.pexels.com/photos/302478/pexels-photo-302478.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$5.97",
        "Test is a new object"
    );

    listModel.addData(
        "Pastel",
        "5",
        "https://images.pexels.com/photos/42063/background-backgrounds-food-fruit-42063.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$6.00",
        "Test is a new object"
    );
    listModel.addData(
        "Smoothy",
        "5",
        "https://images.pexels.com/photos/161600/smoothie-fruit-beverage-drink-161600.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$5.90",
        "Test is a new object"
    );
    listModel.addData(
        "Strawberry",
        "5",
        "https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$1.50",
        "Test is a new object"
    );
    listModel.addData(
        "Mandarin",
        "5",
        "https://images.pexels.com/photos/327098/pexels-photo-327098.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$2.90",
        "Test is a new object"
    );
    listModel.addData(
        "Orange",
        "5",
        "https://images.pexels.com/photos/207085/pexels-photo-207085.jpeg?h=350&auto=compress&cs=tinysrgb",
        "$3.80",
        "Test is a new object"
    );

    //Create filter model
    amz::FilterProxyModel filterModel;
    filterModel.setSourceModel(&listModel);
    filterModel.setFilterRole(amz::NameRole);
    filterModel.setSortRole(amz::NameRole);

    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();
    context->setContextProperty("filterModel", &filterModel);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

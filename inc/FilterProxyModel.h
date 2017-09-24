// <FilterProxyModel.h> -*- C++ -*-

// Copyright (C) 2017

/** @file FilterProxyModel.h
 */

#ifndef FILTERPROXYMODEL_H
#define FILTERPROXYMODEL_H

#include <QSortFilterProxyModel>

namespace amz {

    class FilterProxyModel : public QSortFilterProxyModel
    {
        Q_OBJECT

    private:
        FilterProxyModel(FilterProxyModel const& rhs);
        FilterProxyModel& operator=(FilterProxyModel const& rhs);

    public:
        FilterProxyModel(QObject* parent = 0);
       ~FilterProxyModel();

        Q_INVOKABLE void setFilterString(const QString &string);
        Q_INVOKABLE void setSortOrder(bool checked);
    };
}

#endif // FILTERPROXYMODEL_H

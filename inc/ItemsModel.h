// <ItemsModel.h> -*- C++ -*-

// Copyright (C) 2017

/** @file ItemsModel.h
 */

#ifndef ITEMSMODEL_H
#define ITEMSMODEL_H

#include "Utils.h"
#include <QAbstractListModel>

namespace amz {

    class ItemsModel : public QAbstractListModel {
    public:
        ItemsModel();
       ~ItemsModel();

        void addData(const QString &unit, QString const& quantity, QString const& picture, QString const& price, QString const& description);
        int rowCount(const QModelIndex & parent = QModelIndex()) const;
        QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

    protected:
        QHash<int, QByteArray> roleNames() const;

    private:
        QStringList m_names;
        QStringList m_quantity;
        QStringList m_picture;
        QStringList m_price;
        QStringList m_description;
    };
}

#endif // ITEMSMODEL_H

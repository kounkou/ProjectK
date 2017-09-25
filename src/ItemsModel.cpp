/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE ItemsModel.cpp
///
/// DESCRIPTION
/// This ItemModel file
///
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

#include "ItemsModel.h"
#include <QAbstractListModel>
#include "Logging.h"

namespace amz {

    ///
    /// @brief constructor
    ItemsModel::ItemsModel()
    {
        LOG_ENTEREXIT
    }

    ///
    /// @brief destructor
    ItemsModel::~ItemsModel()
    {
        LOG_ENTEREXIT
    }

    ///
    /// @brief ItemsModel::addData
    /// @param unit
    /// @param quantity
    /// @param picture
    /// @param price
    /// @param description
    void ItemsModel::addData(const QString &unit, const QString &quantity, const QString &picture,
                             const QString &price, const QString &description)
    {
        LOG_ENTEREXIT

        beginInsertRows(QModelIndex(), rowCount(), rowCount());
        m_names.append(unit);
        m_quantity.append(quantity);
        m_picture.append(picture);
        m_price.append(price);
        m_description.append(description);
        endInsertRows();
    }

    ///
    /// @brief  ItemsModel::rowCount
    /// @param  parent
    /// @return the number of rows
    int ItemsModel::rowCount(const QModelIndex &parent) const
    {
        LOG_ENTEREXIT

        Q_UNUSED(parent);
        return m_names.count();
    }

    ///
    /// @brief ItemsModel::data
    /// @param index
    /// @param role
    /// @return Qvariant
    QVariant ItemsModel::data(const QModelIndex &index, int role) const
    {
        LOG_ENTEREXIT

        if (index.row() < 0 || index.row() >= m_names.count())
            return QVariant();

        const QString &name        = m_names[index.row()];
        const QString quantity     = m_quantity[index.row()];
        const QString &picture     = m_picture[index.row()];
        const QString &price       = m_price[index.row()];
        const QString &description = m_description[index.row()];

        if (role == NameRole)        return name;
        if (role == QuantityRole)    return quantity;
        if (role == PictureRole)     return picture;
        if (role == PriceRole)       return price;
        if (role == DescriptionRole) return description;

        return QVariant();
    }

    ///
    /// @brief ItemsModel::roleNames
    /// @return a QHash<int, QByteArray>
    QHash<int, QByteArray> ItemsModel::roleNames() const
    {
        LOG_ENTEREXIT

        QHash<int, QByteArray> roles;
        roles[NameRole]        = "name";
        roles[QuantityRole]    = "quantity";
        roles[PictureRole]     = "picture";
        roles[PriceRole]       = "price";
        roles[DescriptionRole] = "description";

        return roles;
    }
}

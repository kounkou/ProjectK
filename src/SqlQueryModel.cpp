#include "SqlQueryModel.h"
#include <QSqlRecord>
#include <QSqlField>


namespace amz {
    ///////////////////////////////////////////////////
    /// FUNCTION SqlQueryModel::SqlQueryModel
    ///
    /// DESCRIPTION
    /// constructor
    ///
    /// PARAMETERS
    /// Parent object
    ///////////////////////////////////////////////////
    SqlQueryModel::SqlQueryModel(QObject *parent)
        : QSqlQueryModel(parent)
    {
        LOG_ENTEREXIT;

    }

    ///////////////////////////////////////////////////
    /// FUNCTION SqlQueryModel::setQuery
    ///
    /// DESCRIPTION
    /// method to set the Sql query
    ///
    /// PARAMETERS
    /// query The query string
    /// db    The database
    ///////////////////////////////////////////////////
    void SqlQueryModel::setQuery(const QString &query, const QSqlDatabase &db)
    {
        LOG_ENTEREXIT;

        QSqlQueryModel::setQuery(query, db);
        generateRoleNames();
    }

    ///////////////////////////////////////////////////
    /// FUNCTION SqlQueryModel::setQuery
    ///
    /// DESCRIPTION
    /// method to set the Sql query overload
    ///
    /// PARAMETERS
    /// query The query string
    /// db    The database
    ///////////////////////////////////////////////////
    void SqlQueryModel::setQuery(const QSqlQuery & query)
    {
        LOG_ENTEREXIT;

        QSqlQueryModel::setQuery(query);
        generateRoleNames();
    }

    ///////////////////////////////////////////////////
    /// FUNCTION SqlQueryModel::generateRoleNames
    ///
    /// DESCRIPTION
    /// method to set the Sql query
    ///
    /// PARAMETERS
    /// none
    ///////////////////////////////////////////////////
    void SqlQueryModel::generateRoleNames()
    {
        m_roleNames.clear();
        for( int i = 0; i < record().count(); i ++) {
            m_roleNames.insert(Qt::UserRole + i + 1, record().fieldName(i).toUtf8());
        }
    }

    ///////////////////////////////////////////////////
    /// FUNCTION SqlQueryModel::data
    ///
    /// DESCRIPTION
    /// Method to update the data model
    ///
    /// PARAMETERS
    /// index The Model index
    /// role  The role model
    ///////////////////////////////////////////////////
    QVariant SqlQueryModel::data(const QModelIndex &index, int role) const
    {
        QVariant value;

        if(role < Qt::UserRole) {
            value = QSqlQueryModel::data(index, role);
        }
        else {
            int columnIdx = role - Qt::UserRole - 1;
            QModelIndex modelIndex = this->index(index.row(), columnIdx);
            value = QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
        }
        return value;
    }
}

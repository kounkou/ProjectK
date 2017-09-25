#ifndef SQLQUERYMODEL_H
#define SQLQUERYMODEL_H

#include <QSqlQueryModel>
#include "Logging.h"

namespace amz {

    class SqlQueryModel : public QSqlQueryModel
    {
        Q_OBJECT

    public:
        ///
        /// @brief SqlQueryModel
        /// @param parent
        explicit SqlQueryModel(QObject *parent = 0);

        ///
        /// @brief constructor
        /// @param [in] query
        /// @param [in] db
        void setQuery(const QString &query, const QSqlDatabase &db = QSqlDatabase());

        ///
        /// @brief overloaded constructor
        /// @param [in] query
        void setQuery(const QSqlQuery &query);

        ///
        /// @brief data
        /// @param [in] index
        /// @param [in] role
        /// @return
        QVariant data(const QModelIndex &index, int role) const;

        ///
        /// @brief roleNames
        /// @return a Hash of roles names
        QHash<int, QByteArray> roleNames() const
        {
            LOG_ENTEREXIT;

            return m_roleNames;
        }

    private:
        ///
        /// @brief generateRoleNames
        void generateRoleNames();

        ///
        /// @brief m_roleNames
        QHash<int, QByteArray> m_roleNames;
    };

}

#endif // SQLQUERYMODEL_H

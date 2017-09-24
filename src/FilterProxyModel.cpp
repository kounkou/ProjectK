#include "FilterProxyModel.h"
#include "Logging.h"

namespace amz {

    ///////////////////////////////////////////////////
    /// FUNCTION FilterProxyModel::FilterProxyModel
    ///
    /// DESCRIPTION
    /// The filter model constructor
    ///
    /// PARAMETERS
    /// parent object
    ///////////////////////////////////////////////////
    FilterProxyModel::FilterProxyModel(QObject *parent)
        : QSortFilterProxyModel(parent)
    {
        LOG_ENTEREXIT;

        setSortOrder(true);
    }

    ///////////////////////////////////////////////////
    /// FUNCTION FilterProxyModel::~FilterProxyModel
    ///
    /// DESCRIPTION
    /// The filter model destructor
    ///
    /// PARAMETERS
    /// none
    ///////////////////////////////////////////////////
    FilterProxyModel::~FilterProxyModel()
    {
        LOG_ENTEREXIT

    }

    ///////////////////////////////////////////////////
    /// FUNCTION FilterProxyModel::setFilterString
    ///
    /// DESCRIPTION
    /// The filter model destructor
    ///
    /// PARAMETERS
    /// str is the filtering string
    ///////////////////////////////////////////////////
    void FilterProxyModel::setFilterString(const QString& str)
    {
        LOG_ENTEREXIT;

        this->setFilterCaseSensitivity(Qt::CaseInsensitive);
        this->setFilterFixedString(str);
    }

    /**
     * @brief FilterProxyModel::setSortOrder
     * @param checked
     */
    ///////////////////////////////////////////////////
    /// FUNCTION FilterProxyModel::setSortOrder
    ///
    /// DESCRIPTION
    /// setSortOrder is a function that will set the type of ordering
    /// of the list
    ///
    /// PARAMETERS
    /// checked is the state of the ordering type
    ///////////////////////////////////////////////////
    void FilterProxyModel::setSortOrder(bool checked)
    {
        LOG_ENTEREXIT;

        if(checked) {
            this->sort(0, Qt::DescendingOrder);
        } else {
            this->sort(0, Qt::AscendingOrder);
        }
    }
}

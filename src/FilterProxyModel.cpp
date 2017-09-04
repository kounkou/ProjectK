#include "FilterProxyModel.h"

namespace amz {
    /**
     * @brief FilterProxyModel::FilterProxyModel
     * @param parent
     */
    FilterProxyModel::FilterProxyModel(QObject *parent)
        : QSortFilterProxyModel(parent) {
        setSortOrder(true);
    }

    /**
     * @brief FilterProxyModel::~FilterProxyModel
     */
    FilterProxyModel::~FilterProxyModel() {
    }

    /**
     * @brief FilterProxyModel::setFilterString
     * @param string
     */
    void FilterProxyModel::setFilterString(QString string) {
        this->setFilterCaseSensitivity(Qt::CaseInsensitive);
        this->setFilterFixedString(string);
    }

    /**
     * @brief FilterProxyModel::setSortOrder
     * @param checked
     */
    void FilterProxyModel::setSortOrder(bool checked) {
        if(checked) {
            this->sort(0, Qt::DescendingOrder);
        } else {
            this->sort(0, Qt::AscendingOrder);
        }
    }
}

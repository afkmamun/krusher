class InvoiceItemsViewModel extends BaseViewModel {
    constructor($scope,$filter)
    {
        super($scope,$filter,new sfInvoiceItemsSrv());
    }
}
class emEmployeeCallsModel extends BaseModel {
    constructor(p) {
        super(p);
        this.p = p;
    }

    get(){
        super.post();
        let p = this.p; delete this.p;
        this.emID       = p.emID;
        this.emName     = p.emName;
        this.items      = []; for (var k in p.items) {this.items.push(new emEmployeeCallsModel(p.items[k]).item());} //p.items;
        return this;
    }

    post(){
        super.post();
        let p = this.p; delete this.p;
        //one day ago
        let a = new Date().setDate(new Date().getDate()-1);
        this.dateFrom   = p.dateFrom            ? p.dateFrom    : new Date(a).toString("yyyy-MM-dd");
        this.dateTo     = p.dateTo              ? p.dateTo      : new Date().toString("yyyy-MM-dd");
        return this;
    }

    item(){
        let p = this.p; delete this.p;
        for (var k in p){
            this.data       = k;
            this.qty        = p[k];
        }
        return this;
    }
}
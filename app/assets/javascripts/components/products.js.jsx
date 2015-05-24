function toTitleCase(str)
{
  return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

String.prototype.trunc =
  function(n,useWordBoundary){
    var toLong = this.length>n,
      s_ = toLong ? this.substr(0,n-1) : this;
    s_ = useWordBoundary && toLong ? s_.substr(0,s_.lastIndexOf(' ')) : s_;
    return  toLong ? s_ + '&hellip;' : s_;
  };

var Products = React.createClass({
  getInitialState: function() {
    return {
      data: [],
      message: '',
      search: '',
      sale: false
    };
  },
  update: function(data, message){
    if (data.length > 0) {
      this.setState({data: data, message: message});
    } else {
      this.setState({message: message});
    }
  },
  filter: function(search){
    this.setState({search: search})
  },
  handleSale: function(e){
    this.setState({sale: e.target.checked})
  },
  componentDidMount: function(){
    var array = $.map(this.props, function(value, index) {
      return [value];
    });
    this.setState({data: array});
  },
  render: function() {
    return (
      <div className="products container">
        <div className="row">
          <div className="col-md-2">
            <Controls filter={this.filter} handleSale={this.handleSale} />
          </div>
          <div className="col-md-8">
            <p>{this.state.message}</p>
            <div className="row">
              <ProductList data={this.state.data} search={this.state.search} sale={this.state.sale} />
            </div>
          </div>
          <div className="col-md-2">
            <div className="panel panel-default">
              <ul className="list-group">
                <li className="list-group-item"></li>
                <li className="list-group-item"></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
});

var Controls = React.createClass({
  handleFilter: function(e){
    var category = React.findDOMNode(this.refs.filter).value.trim();
    this.props.filter(category);
  },
  render: function(){
    return (
      <div className="row panel panel-default">
        <div className="panel-heading">
          <h1>Products</h1>
        </div>
        <ul className="list-group">
          <li className="list-group-item">
            <input type="text" onChange={this.handleFilter} className="form-control"
                   placeholder="Search by Category" ref="filter" />
          </li>
          <li className="list-group-item">
            <label>
              <input type="checkbox" ref="complete" onChange={this.props.handleSale} />
              On Sale
            </label>
          </li>
        </ul>
      </div>
    );
  }
});

var ProductList = React.createClass({
  render: function() {
    var search = this.props.search;
    var sale = this.props.sale;
    var saleCheck = function(sale, sale_price){
      if(sale){
        return sale_price === '0.0';
      } else {return true;}
    };
    console.log(this.props);
    var productNodes = this.props.data.map(function (product) {
      if (product.category.indexOf(search) > -1){
        if (saleCheck(sale, product.sale_price)){
          return (
            <Product key={product.id} name={product.name} price={product.price}
                     sale_price={product.sale_price} img={product.img} description={product.description}
                     category={product.category} img={product.img} />
          );
        }
      }
    });
    return (
        <div>
          {productNodes}
        </div>
    );
  }
});

var Product = React.createClass({
  render: function(){
    var image = "fa fa-5x fa-" + this.props.img;
    return (
      <div className="product col-md-4">
        <h3>{toTitleCase(this.props.name)}</h3>
        <PriceComponent price={this.props.price} sale_price={this.props.sale_price} />
        <div><i className={image}></i></div>
        <p><strong>{this.props.description.trunc(200, true)}</strong></p>
        <p>Category: {toTitleCase(this.props.category)}</p>
      </div>
    );
  }
});

var PriceComponent = React.createClass({
  render: function(){
    var price;
    if (this.props.sale_price === "0.0") {
      price = <Price price={this.props.price} />;
    } else {
      price = <SalePrice price={this.props.price} sale_price={this.props.sale_price} />;
    }
    return (
        <div>
          {price}
        </div>
    );
  }
});

var Price = React.createClass({
  render: function(){
    return (
      <div>
        <p>Price: {this.props.price}</p>
      </div>
    );
  }
});

var SalePrice = React.createClass({
  render: function(){
    return(
      <div>
        <p>Price: <s>{this.props.price}</s></p>
        <p>Sale Price: <strong>{this.props.sale_price}</strong></p>
      </div>
    );
  }
});
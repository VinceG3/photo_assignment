var PaginationLink = React.createClass({
  propTypes: {
    pageNumber: React.PropTypes.number,
    active: React.PropTypes.bool,
    handlePageChange: React.PropTypes.func
  },

  handleClick: function (e) {
    page = e.target.textContent
    this.props.handlePageChange(parseInt(page))
  },

  render: function() {
    classname = ""
    retval = ""
    if (this.props.active) {
      retval = (
        <a href="#" onClick={this.handleClick} className = "active">
          <div className="pagenum">
            {this.props.pageNumber}
          </div>
        </a>
      );
    } else {
      retval = (
        <a href="#" onClick={this.handleClick}>
          <div className="pagenum">
            {this.props.pageNumber}
          </div>
        </a>
      )
    }
    return retval
  }
});

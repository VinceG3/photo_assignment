var Pagination = React.createClass({
  propTypes: {
      numPages: React.PropTypes.number,
      activePage: React.PropTypes.number,
      onPageChange: React.PropTypes.func
  },

  render: function() {
    var numbers = [];
    for (i = 0; i < this.props.numPages; i++) { 
      if (i + 1 == this.props.activePage) {
        numbers.push(
          <PaginationLink pageNumber={i + 1} key={i + 1} active={true} />
        )        
      } else {
        numbers.push(
          <PaginationLink 
            pageNumber={i + 1}
            key={i + 1} 
            handlePageChange={this.props.onPageChange} />
        )        
      }
    }
    return (
      <div className='pagination'>
        {numbers}
      </div>
    );
  }
});

var ShowUser = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    email: React.PropTypes.string,
    website: React.PropTypes.string,
    albums: React.PropTypes.array,
    showingPage: React.PropTypes.number
  },

  getInitialState() {
    return {
      showingPage: 1,
    };
  },

  handlePageChange: function(pageNum) {
    this.setState({
      showingPage: pageNum
    })
  },

  render: function() {
    window.component = this
    var rows = [];
    beginningIndex = this.state.showingPage * 4 - 4
    endingIndex = beginningIndex + 4
    var shown_albums = this.props.albums.slice(beginningIndex, endingIndex)

    shown_albums.forEach(function(album) {
      rows.push(<AlbumRow album={album} key={album.id} />);
    });
    return (
      <div id="show_user">
        <p>
          <strong>Name: </strong>
          {this.props.user.name}
        </p>

        <p>
          <strong>Email: </strong>
          {this.props.user.email}
        </p>

        <p>
          <strong>Website: </strong>
          {this.props.user.website}
        </p>
        <div className="inline-header"><h2>Albums</h2></div>
        <Pagination 
          numPages={Math.ceil(this.props.albums.length / 4)}
          activePage={this.state.showingPage}
          key="1"
          onPageChange={this.handlePageChange}/>
        <table className='table'>
          <thead>
            <tr>
              <th>Title</th>
              <th>Thumbnail</th>
            </tr>
          </thead>
          <tbody>
            {rows}
          </tbody>
        </table>
      </div>
    )
  }
});

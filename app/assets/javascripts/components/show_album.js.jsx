var ShowAlbum = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    user_name: React.PropTypes.string,
    photos: React.PropTypes.array
  },

  render: function() {
    var photos = [];
    this.props.photos.forEach(function(photo) {
      photos.push(<PhotoThumb photo={photo} key={photo.id} />)
    })
    return (
      <div id='show_album'>
        <p>
          <strong>Title: </strong>
          {this.props.album.title}
        </p>

        <p>
          <strong>User: </strong>
          {this.props.album.user_name}
        </p>
        <p>
          {photos}
        </p>
      </div>
    );
  }
});

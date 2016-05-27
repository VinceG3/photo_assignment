var AlbumRow = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    thumbnail_url: React.PropTypes.string
  },

  render: function() {
    var url = "/albums/" + this.props.album.id
    return (
      <tr>
        <td>
          <a href={url}>{this.props.album.title}</a>
        </td>
        <td>
          <img src={this.props.album.thumbnail_url} />
        </td>
      </tr>
    );
  }
});

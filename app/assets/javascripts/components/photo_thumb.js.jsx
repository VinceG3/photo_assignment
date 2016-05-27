var PhotoThumb = React.createClass({
  propTypes: {
    thumbnail_url: React.PropTypes.string
  },

  render: function() {
    url = "/photos/" + this.props.photo.id
    return (
      <a href={url}>
        <img src={this.props.photo.thumbnail_url} />
      </a>
    );
  }
});

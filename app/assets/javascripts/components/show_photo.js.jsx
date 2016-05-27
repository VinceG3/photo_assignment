var ShowPhoto = React.createClass({
  propTypes: {
      src: React.PropTypes.string,
      title: React.PropTypes.string
  },

  render: function() {
    return (
      <div id="show_photo">
        <p>
          <img src={this.props.photo.url} />
        </p>

        <p>
          {this.props.photo.title}
        </p>
      </div>
    );
  }
});

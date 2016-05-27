var UserRow = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    email: React.PropTypes.string,
    website: React.PropTypes.string
  },

  render: function() {
    var url = "/users/" + this.props.user.id
    return (
      <tr>
        <td><a href={url}>{this.props.user.name}</a></td>
        <td>{this.props.user.email}</td>
        <td>{this.props.user.website}</td>
        <td>
          <a href={url} data-confirm="Are you sure?" rel='nofollow' data-method='delete'>
            Destroy
          </a>
        </td>
      </tr>
    );
  }
});

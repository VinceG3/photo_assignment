var ListUsers = React.createClass({
  render: function () {
    var rows = [];
    this.props.users.forEach(function(user) {
      rows.push(<UserRow user={user} key={user.name} />);
    });
    return (
      <div id='list_users'>
      <h1>Listing Users</h1>

      <table className='table'>
        <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Website</th>
            <th colSpan="2"></th>
          </tr>
        </thead>
        <tbody>
        {rows}
        </tbody>

      </table>

      <p><a href="/users/new">New User</a></p>

      </div>
  )}
})

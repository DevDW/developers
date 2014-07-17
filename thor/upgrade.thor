class Default
  desc 'upgrade', 'Update to the latest version of docsmith'
  def upgrade
    log 'Pulling the latest version of docsmith...'
    system 'git pull git@github.com:Linode/docsmith.git master'

    log 'Updating dependencies...'
    system 'bundle install --deployment'
  end
end
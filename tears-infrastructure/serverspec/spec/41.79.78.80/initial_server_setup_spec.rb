require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

packages = [
	'mysql-common',
	'mysql-server',
	'mysql-server-5.5',	
	'nginx',
	'nginx-common',
	'nginx-core',
	'php5-common',
	'php5-fpm',
	'php5-json',
	'php5-mysql']

	packages.each do|p|
      describe package(p) do
        it { should be_installed }
      end
    end
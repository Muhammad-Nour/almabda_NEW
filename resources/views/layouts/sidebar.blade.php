<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">

  <div style="text-align: center">
    <a href="{{ route('admindashboard') }}">
      <img src="{{ asset('design/images/side-logo.jpg') }}" style="width: 230px">
    </a>
  </div>
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    {{--
    <div class="user-panel d-flex">
      <div class="image">
        <img src="{{ asset('design/images/user.png') }}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">{{ auth()->user()->name }}</a>
      </div>
    </div>

    --}}

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
           with font-awesome or any other icon font library -->

           <li class="nav-item">
            <a href="{{ route('admindashboard') }}" class="nav-link {{ request()->routeIs('admindashboard') ? 'active' : '' }}">
              <i class="nav-icon fa fa-th-large "></i>
              <p>{{ __('site.dasboard') }}</p>
            </a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('settings.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.settings') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('settings.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('settings.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @can('customs')
          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('customs.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.customs') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('customs.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('customs.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan('customs')

          @can('partners')
          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('partners.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.partners') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('partners.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('partners.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan('partners')

          @can('contacts')
          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('contacts.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.contacts') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('contacts.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('contacts.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan('partners')

          @can('projects')
          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('projects.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.projects') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('projects.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('projects.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan('projects')

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('sliders.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-sliders-h"></i>
              <p>
                {{ __('site.slider') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('sliders.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('sliders.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('categories.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.categories') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('categories.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('categories.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @can('products')
          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('products.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                {{ __('site.products') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('products.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('products.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('admins.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-lock"></i>
              <p>
                {{ __('site.users') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('admins.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('admins.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('users.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-lock"></i>
              <p>
                {{ __('site.clients') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('users.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('users.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link {{ request()->routeIs('roles.*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-lock"></i>
              <p>
                {{ __('site.roles') }}
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('roles.index') }}" class="nav-link ">
                  <i class="fas fa-list nav-icon"></i>
                  <p>{{ __('site.show') }}</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('roles.create') }}" class="nav-link">
                  <i class="fas fa-plus nav-icon"></i>
                  <p>{{ __('site.add') }}</p>
                </a>
              </li>
            </ul>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

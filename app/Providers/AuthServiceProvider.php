<?php

namespace App\Providers;

use App\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use App\Post;
use App\Policies\PostPolicy;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
        Post::class => PostPolicy::class


    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();


        /**
         * Define Gate for admin user role
         * Returns true if user role is set to admin
         **/
        Gate::define('isAdmin', function($user) {
            return $user->role->title == 'admin';
        });
        /**
         * Define Gate for editor user role
         * Returns true if user role is set to editor
         **/
        Gate::define('isProperty', function($user) {
            return $user->role->title == 'property';
        });
        /**
         * Define Gate for guest user role
         * Returns true if user role is set to guest
         **/
        Gate::define('isUser', function($user) {
            return $user->role->title == 'user';
        });
    }
}



















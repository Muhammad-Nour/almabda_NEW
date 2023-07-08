<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductGalleryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomepageController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\CategoryController;
use Laravel\Fortify\Http\Controllers\AuthenticatedSessionController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\CustomController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/' , [HomepageController::class, 'index'])->name('home');

Route::middleware('auth:admin')->group(function(){

    Route::get('admin', [DashboardController::class, 'index'])->name('admindashboard');
    Route::get('logout', [LoginController::class, 'logout'])->name('logout');

    Route::group(['middleware' => ['auth']], function() {
        Route::resource('admins', AdminController::class);
        Route::resource('roles', RoleController::class);
    });
});

Route::group(['middleware' => ['auth:admin']], function() {
    Route::resource('products', ProductController::class);
    Route::resource('users', UserController::class);
    Route::resource('categories', CategoryController::class);
    Route::resource('sliders', SliderController::class);
    Route::resource('galleries', ProductGalleryController::class);
    Route::resource('settings', SettingController::class);
    Route::resource('customs', CustomController::class);
    Route::resource('partners', PartnerController::class);
    Route::resource('projects', ProjectController::class);
    Route::resource('contacts', ContactController::class);

    Route::get('products/{product}/editMainImages',[ProductController::class,'editMainImages'])->name('product.editMainImages');

    Route::put('products/{product}/updateMainImage',[ProductController::class,'updateMainImage'])->name('product.updateMainImage');

    Route::PUT('products/{product}/deleteMainImage',[ProductController::class,'deleteMainImages'])->name('product.deleteMainImages');

    Route::get('products/{product}/details',[ProductController::class,'getDetails'])->name('product.details');
    Route::get('projects/{project}/details',[ProjectController::class,'getDetails'])->name('project.details');


    Route::post('products/add/images',[ProductController::class,'addImage'])->name('add.images');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

require_once __DIR__ .'/jetstreamRoute.php';
require_once __DIR__ .'/routes.php';


<?php

use App\Http\Controllers\CategoryControler;
use App\Http\Controllers\dashobard;
use App\Http\Controllers\Forgotpasswordcontroller;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ResetPasswordController;
use App\Http\Controllers\Usercontroller;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/register',function(){
    return view('register');
});
Route::post('registeruser',[Usercontroller::class,'registeruser']);

// ye he dashobard ka route 
Route::get('dashboard',[dashobard::class,'index'])->name('dashboard')->middleware('auth');



// ye user k leye route he 

Route::get('userdashboard',function(){

return view('userdashboard');

})->name('userdashboard');



// ye he admin ka route dashoboard k leye is me humne product ka Controller is leye use kea he k humne us controler me function lekha he jis me product category or user count ho rahy he 
Route::get('admin',[ProductController::class,'dashboard'])->name('admin');

// yaha se admin logout ka route shoro he 
Route::get('adminlogout',function(){
return view('login');
})->name('adminlogout');
Route::post('adminlogout',function(){
return view('login');
})->name('adminlogout');
// yaha se login ka route shoro he 
Route::get('login',function(){
    return view('login');
})->name('login');

Route::post('loginuser',[LoginController::class,'loginuser']);

// yaha se logout wala shoro he 

Route::get('logout',function(){
Auth::logout();
return redirect('login')->with('success','logout out Succesfully');


});

// yaha se forgotpassword wala route shoro he 

Route::get('forgotpassword',function(){
    return view('forgotpassword');
});

Route::post('forgotpassword',[Forgotpasswordcontroller::class,'resetlink']);


// Show Reset Password Form (with token)
Route::get('/reset-password/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');

// Handle Reset Password Submission
Route::post('/reset-password', [ResetPasswordController::class, 'reset'])->name('password.update');

// yaha se admin add user wala route shoro he jo main dashboard ky side bar se araha he 
Route::get('adminadduser',[Usercontroller::class,'adduser'])->name('adminadduser');

// admin jb user ko add kreyga uska post ka function 

Route::post('useraddbyadmin',[Usercontroller::class,'usrerfromdashboard'])->name('useraddbyadmin');

// View Users Wala route yaha se shoro he admin jb user ko dekhna chahy 

Route::get('viewusers',[Usercontroller::class,'allusers'])->name('viewusers');

// ye yaha se edit user wala route shoro he 
Route::get('edituser{id}',[Usercontroller::class,'selectuser'])->name('edituser');

// ye ab yaha se hm edituser waly form ka jo action he mean jaha user ko update krna he wo route he  
Route::post('updateuser{id}',[Usercontroller::class,'upduser'])->name('updateuser');

// ye yaha se userdelete wala route shoro he jo admin kreyga 
Route::get('deleteuser{id}',[Usercontroller::class,'dltuser'])->name('deleteuser');


// category wala route 

Route::get('addcategory',function(){
    return view('addcategories');

})->name('addcategory');

Route::post('categorystore', [CategoryControler::class,'adddata'])->name('categorystore');

Route::get('viewcategory',[CategoryControler::class,'showcategory'])->name('viewcategory');

// category edit wala route yaha se shoro he 

Route::get('category-edit{id}',[CategoryControler::class,'edit'])->name('category-edit');

// category update wala route yaha se shoro he 

Route::post('caetgory-update/{id}',[CategoryControler::class,'update'])->name('caetgory-update');

// yaha se category delete wala kam shoro he 

Route::get('category-delete{id}',[CategoryControler::class,'delete'])->name('category-delete');



// yaha se dashboard ky products ka kam shoro he 
Route::get('dashboard',[ProductController::class,'dashboard'])->name('dashboard');





// ye add product wala route he  ye yaha se hm addproduct wala kam kr rahy he jb koi add product pr click kry to hmy categories ko form me dynamically show krwana he is leye hm categories ko compact kr rahy he addproduct pr taky waha aesy access kr paey

Route::get('addproduct',[CategoryControler::class,'category'])->name('addproduct');

// product yaha is route pr insert ho raha he 

Route::post('insertproduct',[ProductController::class,'insertproduct'])->name('insertproduct');

// product view ka route yaha se shoro he jb koi dashboard se view product pr click kry to ye route chaeleyga 

Route::get('viewproduct',[ProductController::class,'selectproducts'])->name('viewproduct');

// yaha se update product ka kamn shoro he 
Route::get('updateproduct/{id}',[ProductController::class,'updateproduct'])->name('updateproduct');

// ye update krny ky bad wala post ka route he product ka 

Route::post('updprodcut{id}',[ProductController::class,'updatedone'])->name('updprodcut');

// yaha se product delete wala route start he 

Route::get('deleteproduct{id}',[ProductController::class,'dltproduct'])->name('deleteproduct');
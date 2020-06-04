<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePropertysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('propertys', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->enum('status',['true','false'])->default('false');
            $table->text('description');
            $table->timestamps();
        });

        Schema::table('propertys', function (Blueprint $table) {
            $table->unsignedBigInteger('categorie_id');

            $table->foreign('categorie_id')->references('id')->on('categories');
        });
        Schema::table('propertys', function (Blueprint $table) {
            $table->unsignedBigInteger('user_id');

            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('propertys');
    }
}

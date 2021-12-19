<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tips', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('tipper_name')->nullable();
            $table->string('title');
            $table->string('tip_text')->nullable();
            $table->string('coin_name')->nullable();
            $table->integer('price_at_time_of_tip');
            $table->integer('calculated_tip_price');
            $table->enum('tip_direction', ['up', 'down']);
            $table->enum('tip_reason', ['influencer talks', 'intuition', 'goverment']);
            $table->string('reason_user_description');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tips');
    }
}

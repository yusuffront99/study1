<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'npm','name','age','major','class'
    ];

    public function study()
    {
        return $this->belongsTo(Study::class,'student_id','id');
    }
}

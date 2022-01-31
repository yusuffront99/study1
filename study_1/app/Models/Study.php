<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Study extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id','modul','grade'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class,'student_id','id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id', 
        'image'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class, 'student_id','id');
    }
}

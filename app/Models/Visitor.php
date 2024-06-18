<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Notifications\Notifiable;

class Visitor extends Model
{
    use HasFactory;
    use Notifiable;

    protected $fillable = [
        'first_name',
        'last_name',
        'phone_number',
        'email',
        'logout_time'
    ];

    /**
     * The purposes that belong to the visitor
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function purposes(): BelongsToMany
    {
        return $this->belongsToMany(Department::class, 'department_visitor_table', 'visitor_id', 'department_id')->withPivot('status', 'finished_at');
    }
}

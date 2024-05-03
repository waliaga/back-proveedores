<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_usuarios';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'sid', 'usuario', 'password', 'email', 'profile_picture', 'remember_token', 'ttl', 'wrong_login_attempt',
        'date_wrong_login_attempt', 'client_ip', 'code', 'status', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'date_wrong_login_attempt' => 'datetime',
    ];

    /**
     * @return mixed
     */
    public  function  getJWTIdentifier()
    {
        return  $this->getKey();
    }

    /**
     * @return array
     */
    public  function  getJWTCustomClaims()
    {
        return [];
    }

    /**
     * @param $password
     */
    public function setPasswordAttribute($password)
    {
        if (!empty($password)) {
            $this->attributes['password'] = bcrypt($password);
        }
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }

}

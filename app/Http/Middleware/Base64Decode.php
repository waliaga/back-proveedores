<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Base64Decode
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $request->merge(
            [
                'usuario'       => base64_decode($request->usuario),
                'password'      => base64_decode($request->password)
            ]
        );
        return $next($request);

    }
}

<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(Request $request)
    {
        $request->only(['email', 'password']);

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(
                [
                    'status' => 'error',
                    'message' => 'Credenciais inválidas'
                ], Response::HTTP_UNAUTHORIZED);
        }

        $token = $user->createToken($request->email)->plainTextToken;

        return response()->json(
            [
                'status' => 'success',
                'user' => $user,
                'token' => $token
            ], Response::HTTP_OK);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        $user->tokens()->delete();

        return response()->json(
            [
                'status' => 'success',
                'message' => 'Logout realizado com sucesso'
            ], Response::HTTP_OK);
    }

    public function registro(Request $request)
    {
        
        try{
                $request->validate([
                    'name' => 'required|max:255',
                    'email' => 'required|email|unique:users',
                    'password' => 'required|min:4',
                ]);
                
                $user = User::create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'password' => Hash::make($request->password),
                ]);

                $token = $user->createToken($request->email)->plainTextToken;

                return response()->json(
                    [
                        'status' => 'success',
                        'user' => $user,
                        'token' => $token
                    ], Response::HTTP_CREATED);
            }
            catch (\Exception $e){
                return response()->json(
                    [
                        'status' => 'error',
                        'message' => 'Erro ao registrar usuário: ' . $e->getMessage()
                    ], Response::HTTP_BAD_REQUEST);
            }
    }

    public function validateToken(Request $request)
    {
        $user = $request->user();

        if ($user) {
            return response()->json(
                [
                    'status' => 'success',
                    'message' => 'Token válido',
                    'user' => $user
                ], Response::HTTP_OK);
        } else {
            return response()->json(
                [
                    'status' => 'error',
                    'message' => 'Token inválido'
                ], Response::HTTP_UNAUTHORIZED);
        }
    }
}
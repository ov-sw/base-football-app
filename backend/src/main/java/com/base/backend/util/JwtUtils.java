package com.base.backend.util;

import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.base.backend.model.security.UserPrincipal;

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.SignatureException;

@Component
public class JwtUtils {

    @Value("${app.jwt.secret}")
    private String jwtSecret;

    @Value("${app.jwt.expiration}")
    private int jwtExpirationMs;

    /**
     * CREACIÓN: Toma la identidad verificada y la mete en un String cifrado.
     */
    public String generateJwtToken(UserPrincipal userPrincipal) {
        return Jwts.builder()
                .setSubject(userPrincipal.getUsername()) // El email es el "dueño" del token
                .claim("role", userPrincipal.getUser().getRole().name()) // Metemos el ROL dentro [cite: 355]
                .setIssuedAt(new Date())
                .setExpiration(new Date((new Date()).getTime() + jwtExpirationMs))
                .signWith(SignatureAlgorithm.HS512, jwtSecret)
                .compact();
    }

    /**
     * VALIDACIÓN: Verifica que el token no haya sido manipulado y que la firma
     * sea la nuestra.
     */
    public boolean validateJwtToken(String authToken) {
        try {
            Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(authToken);
            return true;
        } catch (SignatureException e) {
            // "Alguien intentó falsificar la firma"
        } catch (ExpiredJwtException e) {
            // "El tiempo se acabó, el usuario debe loguearse de nuevo"
        }
        return false;
    }

    public String getUserNameFromJwtToken(String token) {
        return Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody().getSubject();
    }
}

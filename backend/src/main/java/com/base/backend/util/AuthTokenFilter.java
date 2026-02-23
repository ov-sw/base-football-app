package com.base.backend.util;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import com.base.backend.service.security.CustomUserDetailsService;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * EXPLICACIÓN: Filtro que se ejecuta una vez por cada petición. Revisa el
 * encabezado 'Authorization', valida el JWT y autentica al usuario.
 */
public class AuthTokenFilter extends OncePerRequestFilter {

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        try {
            // 1. Extraemos el token del encabezado (Header)
            String jwt = parseJwt(request);

            // 2. Si el token existe y es válido, procedemos a identificar al usuario
            if (jwt != null && jwtUtils.validateJwtToken(jwt)) {
                String username = jwtUtils.getUserNameFromJwtToken(jwt);

                // 3. Cargamos los detalles del usuario desde la base de datos
                UserDetails userDetails = userDetailsService.loadUserByUsername(username);

                // 4. Creamos el objeto de autenticación con sus roles (Authorities)
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
                        userDetails, null, userDetails.getAuthorities());

                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

                // 5. ESTABLECEMOS LA SEGURIDAD: Spring ahora sabe quién es el usuario
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        } catch (Exception e) {
            logger.error("No se pudo establecer la autenticación del usuario: {}", e);
        }

        // Continuamos con la cadena de filtros (deja pasar la petición)
        filterChain.doFilter(request, response);
    }

    /**
     * MÉTODO AUXILIAR: Busca el String 'Bearer <token>' y devuelve solo el
     * token.
     */
    private String parseJwt(HttpServletRequest request) {
        String headerAuth = request.getHeader("Authorization");

        if (StringUtils.hasText(headerAuth) && headerAuth.startsWith("Bearer ")) {
            return headerAuth.substring(7);
        }

        return null;
    }
}

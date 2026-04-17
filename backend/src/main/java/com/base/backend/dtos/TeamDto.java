package com.base.backend.dtos;

/**
 * Este DTO lo usamos para transportar los datos del equipo entre el cliente y el servidor.
 * Evitamos exponer la entidad completa para no lidiar con problemas de recursión 
 * o exponer campos internos como el listado de partidos.
 */
public record TeamDto(
    Long id,
    String name,
    String logoUrl,
    String city,
    boolean isRegistered,
    int followerCount,
    Long delegateId // Solo pasamos el ID del delegado para simplificar la carga
) {}
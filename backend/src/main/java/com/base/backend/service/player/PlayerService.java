package com.base.backend.service.player;

import com.base.backend.dtos.PlayerDto;
import com.base.backend.model.player.NonRegisteredPlayer;
import com.base.backend.model.player.Player;
import com.base.backend.model.player.RegisteredPlayer;
import com.base.backend.repository.PlayerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PlayerService {

    private final PlayerRepository playerRepository;

    @Transactional(readOnly = true)
    public List<PlayerDto> findAll() {
        return playerRepository.findAll().stream()
                .map(this::convertToDto)
                .collect(Collectors.toList());
    }

    @Transactional
    public PlayerDto createPlayer(PlayerDto dto) {
        if (playerRepository.existsByIdCode(dto.idCode())) {
            throw new RuntimeException("El código de jugador " + dto.idCode() + " ya está en uso.");
        }

        // Decidimos qué hijo de Player instanciar
        Player player = dto.registered() ? new RegisteredPlayer() : new NonRegisteredPlayer();
        
        // Seteamos los campos comunes definidos en la clase padre
        player.setNickname(dto.nickname());
        player.setBirthDate(dto.birthDate());
        player.setIdCode(dto.idCode());
        player.setDescription(dto.description());
        player.setImageUrl(dto.imageUrl());

        Player savedPlayer = playerRepository.save(player);
        return convertToDto(savedPlayer);
    }

    // Helper para convertir la jerarquía de Player a un DTO plano
    private PlayerDto convertToDto(Player player) {
        return new PlayerDto(
            player.getId(),
            player.getNickname(),
            player.getBirthDate(),
            player.getIdCode(),
            player.getDescription(),
            player.getImageUrl(),
            player instanceof RegisteredPlayer, // Comprobamos el tipo de instancia
            (player instanceof RegisteredPlayer) ? ((RegisteredPlayer) player).getUserAccount().getId() : null,
            player.getTotalGoals(),
            player.getTotalGames()
        );
    }
}
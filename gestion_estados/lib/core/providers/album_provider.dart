import 'package:flutter/material.dart';
import 'package:gestion_estados/domain/model/album/gateway/album_gateway.dart';

import 'package:gestion_estados/domain/use_cases/album/album_use_cases.dart';


class AlbumProvider extends ChangeNotifier{
  final AlbumGateway albumGateway;
  late GetAlbumUseCase _albumUseCase;

  AlbumProvider({required this.albumGateway});

  GetAlbumUseCase get albumUseCase {
    _albumUseCase = GetAlbumUseCase(albumGateway);
    return _albumUseCase;
  }
}

#!/bin/bash

flatpak remove dev.vencord.vesktop -y
rm -rf build-dir/ .flatpak-builder/
flatpak-builder --user --install --force-clean build-dir dev.vencord.vesktop.yml


#!/bin/bash

# Verification script for dnf and ccache installation in containers
# This script can be used to verify that dnf and ccache are properly installed

echo "=== Testing dnf and ccache installation in Slicer Build Environment containers ==="

echo "After building the containers, you can verify the installations with:"
echo ""

echo "For CentOS7 container:"
echo "  docker run --rm slicer/buildenv-qt5-centos7:latest bash -c 'dnf --version && ccache --version'"
echo ""

echo "For AlmaLinux8 container:"
echo "  docker run --rm slicer/buildenv-qt5-almalinux8-gcc14:latest bash -c 'dnf --version && ccache --version'"
echo ""

echo "Expected behavior:"
echo "- Both containers should have dnf available"
echo "- Both containers should have ccache available"
echo "- CentOS7 gets dnf via EPEL repository installation"
echo "- AlmaLinux8 already had dnf, but now also has ccache"
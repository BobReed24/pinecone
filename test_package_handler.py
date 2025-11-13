#!/usr/bin/env python3
"""
Test suite for package_handler module to verify LPPO fixes.
"""
import sys
sys.path.insert(0, '/home/runner/work/pinecone/pinecone')

from lib.packages import packages
from lib.package_handler import PackageHandler


def test_package_structure():
    """Test that packages list has correct structure (groups of 4)."""
    print("Test 1: Package list structure validation")
    
    # Should have multiple of 4 items
    assert len(packages) % 4 == 0, f"Package list should have multiple of 4 items, got {len(packages)}"
    
    print(f"  ✓ Package list has {len(packages)} items ({len(packages)//4} packages)")
    print()


def test_get_package_url():
    """Test get_package_url for all packages."""
    print("Test 2: get_package_url()")
    
    handler = PackageHandler(packages)
    
    expected = {
        'http-server': 'https://github.com/BobReed24/pinecone-libs/raw/refs/heads/main/http-server.py',
        'help': 'https://raw.githubusercontent.com/BobReed24/pinecone/refs/heads/main/lib/help.py',
        'battery': 'https://github.com/BobReed24/pinecone-libs/raw/refs/heads/main/battery.py',
        'drsize': 'https://github.com/BobReed24/pinecone-libs/raw/refs/heads/main/drsize.py',
        'cls': 'https://github.com/BobReed24/pinecone-libs/raw/refs/heads/main/cls.py'
    }
    
    for pkg_name, expected_url in expected.items():
        actual_url = handler.get_package_url(pkg_name)
        assert actual_url == expected_url, f"Expected URL for {pkg_name}: {expected_url}, got: {actual_url}"
        print(f"  ✓ {pkg_name}: {actual_url}")
    
    # Test non-existent package
    assert handler.get_package_url('nonexistent') is None, "Non-existent package should return None"
    print(f"  ✓ Non-existent package returns None")
    print()


def test_get_package_dep():
    """Test get_package_dep for all packages."""
    print("Test 3: get_package_dep()")
    
    handler = PackageHandler(packages)
    
    expected = {
        'http-server': 'flask',
        'help': 'termcolor',
        'battery': 'psutil',
        'drsize': '',
        'cls': ''
    }
    
    for pkg_name, expected_dep in expected.items():
        actual_dep = handler.get_package_dep(pkg_name)
        assert actual_dep == expected_dep, f"Expected dep for {pkg_name}: '{expected_dep}', got: '{actual_dep}'"
        dep_display = actual_dep if actual_dep else '(none)'
        print(f"  ✓ {pkg_name}: {dep_display}")
    
    # Test non-existent package
    assert handler.get_package_dep('nonexistent') is None, "Non-existent package should return None"
    print(f"  ✓ Non-existent package returns None")
    print()


def test_get_package_ver():
    """Test get_package_ver for all packages."""
    print("Test 4: get_package_ver()")
    
    handler = PackageHandler(packages)
    
    expected = {
        'http-server': 'V0.1.0',
        'help': 'V0.1.9',
        'battery': 'V1.0.0',
        'drsize': 'V1.0.0',
        'cls': 'V1.0.0'
    }
    
    for pkg_name, expected_ver in expected.items():
        actual_ver = handler.get_package_ver(pkg_name)
        assert actual_ver == expected_ver, f"Expected version for {pkg_name}: {expected_ver}, got: {actual_ver}"
        print(f"  ✓ {pkg_name}: {actual_ver}")
    
    # Test non-existent package
    assert handler.get_package_ver('nonexistent') is None, "Non-existent package should return None"
    print(f"  ✓ Non-existent package returns None")
    print()


def test_all_packages_accessible():
    """Test that all packages in the list are accessible."""
    print("Test 5: All packages accessible")
    
    handler = PackageHandler(packages)
    
    # Extract all package names from the list
    package_names = [packages[i] for i in range(0, len(packages), 4)]
    
    for pkg_name in package_names:
        url = handler.get_package_url(pkg_name)
        dep = handler.get_package_dep(pkg_name)
        ver = handler.get_package_ver(pkg_name)
        
        assert url is not None, f"Package {pkg_name} URL should not be None"
        assert dep is not None, f"Package {pkg_name} dependency should not be None (can be empty string)"
        assert ver is not None, f"Package {pkg_name} version should not be None"
        
        print(f"  ✓ {pkg_name}: url={url[:50]}..., dep={dep if dep else '(none)'}, ver={ver}")
    
    print()


def test_no_false_matches():
    """Test that dependencies/URLs/versions are not matched as package names."""
    print("Test 6: No false matches for dependencies, URLs, or versions")
    
    handler = PackageHandler(packages)
    
    # Test some dependencies, URLs, and versions that should NOT be found as packages
    false_names = [
        'flask',  # dependency
        'termcolor',  # dependency
        'psutil',  # dependency
        'V1.0.0',  # version
        'V0.1.0',  # version
        'https://github.com/BobReed24/pinecone-libs/raw/refs/heads/main/battery.py'  # URL
    ]
    
    for name in false_names:
        url = handler.get_package_url(name)
        assert url is None, f"'{name}' should not be found as a package, but got URL: {url}"
        print(f"  ✓ '{name}' correctly not found as package")
    
    print()


def test_install_logic():
    """Test that install method can handle packages with and without dependencies."""
    print("Test 7: Install logic validation")
    
    handler = PackageHandler(packages)
    
    # Test packages with dependencies
    for pkg in ['http-server', 'help', 'battery']:
        url = handler.get_package_url(pkg)
        dep = handler.get_package_dep(pkg)
        ver = handler.get_package_ver(pkg)
        
        assert url is not None, f"Package {pkg} should have URL"
        assert dep, f"Package {pkg} should have dependency"
        assert ver is not None, f"Package {pkg} should have version"
        print(f"  ✓ {pkg}: has dependency '{dep}'")
    
    # Test packages without dependencies
    for pkg in ['drsize', 'cls']:
        url = handler.get_package_url(pkg)
        dep = handler.get_package_dep(pkg)
        ver = handler.get_package_ver(pkg)
        
        assert url is not None, f"Package {pkg} should have URL"
        assert dep == '', f"Package {pkg} should have empty dependency, got: '{dep}'"
        assert ver is not None, f"Package {pkg} should have version"
        print(f"  ✓ {pkg}: has no dependency (empty string)")
    
    print()


def main():
    """Run all tests."""
    print("=" * 70)
    print("LPPO (List Package Parsing Operations) Test Suite")
    print("=" * 70)
    print()
    
    try:
        test_package_structure()
        test_get_package_url()
        test_get_package_dep()
        test_get_package_ver()
        test_all_packages_accessible()
        test_no_false_matches()
        test_install_logic()
        
        print("=" * 70)
        print("✓ ALL TESTS PASSED!")
        print("=" * 70)
        return 0
    except AssertionError as e:
        print()
        print("=" * 70)
        print(f"✗ TEST FAILED: {e}")
        print("=" * 70)
        return 1
    except Exception as e:
        print()
        print("=" * 70)
        print(f"✗ UNEXPECTED ERROR: {e}")
        print("=" * 70)
        import traceback
        traceback.print_exc()
        return 1


if __name__ == "__main__":
    sys.exit(main())

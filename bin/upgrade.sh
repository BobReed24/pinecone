sudo rm pinecone/command_pinecone /pinecone/lib/package_handler.py /pinecone/lib/packages.py /pinecone/lib/__init__.py 
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/command_pinecone && sudo mv command_pinecone /pinecone/command_pinecone
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/package_handler.py && sudo mv package_handler.py /pinecone/lib/package_handler.py
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/packages.py && sudo mv packages.py /pinecone/lib/packages.py
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/__init__.py && sudo mv __init__.py /pinecone/lib/__init__.py

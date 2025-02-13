sudo rm pinecone/command_pinecone /pinecone/lib/package_handler.py /pinecone/lib/packages.py /pinecone/lib/__init__.py 
wget https://www.dropbox.com/scl/fi/hs6zjmllst3okux3zax68/command_pinecone?rlkey=f5kjmqhu9bqwbjj3c6vvd2wbl&st=g4mty82l&dl=1 && sudo mv command_pinecone /pinecone/command_pinecone && sudo chmod +x /pinecone/command_pinecone
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/package_handler.py && sudo mv package_handler.py /pinecone/lib/package_handler.py
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/packages.py && sudo mv packages.py /pinecone/lib/packages.py
wget https://github.com/BobReed24/pinecone/raw/refs/heads/main/lib/__init__.py && sudo mv __init__.py /pinecone/lib/__init__.py

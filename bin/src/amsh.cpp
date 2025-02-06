int solve(Node* root,int& res){
	if(root==NULL)
	return 0;

	int l=solve(root->left,res);
	int r=solve(root->right,res);

	int temp=max(l,r)+1;
	int ans=max(temp,l+r);
	res=max(res,ans);
	
	return temp;
}

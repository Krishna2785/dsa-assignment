#include<iostream>
using namespace std;

struct BTNODE{
       BTNODE * lc;
         int data;
       BTNODE * rc;
    };
    
class BST {
     private : BTNODE *root;
     
     public : 
              BST () {
              root =nullptr;
              }
              void createbst(void);
              void traverse(void);
              void inorder(BTNODE*root);
              
   };

void BST :: createbst(){

  int i,n;
  BTNODE *par,*temp,*newnp;
  cout<<"how many values to be inserted into bst:";
  cin>>n;
  cout<<"enter the value:";
  
  
  for(i=1;i<=n;i++){
      newnp=new BTNODE;
      cin>> newnp->data;
      newnp->lc=newnp->rc=nullptr;
      if (i==1){
         root =newnp;
         }
      else{
         par =nullptr;
         temp=root;
         while(temp!=nullptr){
            par=temp;
            if(newnp->data< temp->data){
               temp=temp->lc;
            }
            else{
              temp=temp->rc;
            }
         }
         if (newnp->data< par->data){
            par ->lc =newnp;
         }
         else{
           par ->rc=newnp;
         }
      }  
  }
}

void BST :: inorder(BTNODE *temp){ 
   if (temp){
      inorder (temp->lc);
      cout <<\n <<temp->data;
      inorder (temp -> rc);
      cout <<" ";
   }
  }
  
void BST :: traverse (){
 inorder (root);

}

int main () {
 BST t;
 t.createbst();
 t.traverse();
 return 0;
}

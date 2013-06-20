.class Lcom/instagram/android/login/fragment/LookupFragment$2;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LookupFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$2;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$2;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #calls: Lcom/instagram/android/login/fragment/LookupFragment;->doLookup()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$200(Lcom/instagram/android/login/fragment/LookupFragment;)V

    .line 116
    return-void
.end method

.class Lcom/instagram/android/fragment/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/instagram/android/fragment/NewsFragment$4;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/NewsFragment$4;->this$0:Lcom/instagram/android/fragment/NewsFragment;

    sget-object v1, Lcom/instagram/android/fragment/NewsFragment;->MODE_NEWS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/instagram/android/fragment/NewsFragment;->switchToMode(IZ)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/NewsFragment;->access$500(Lcom/instagram/android/fragment/NewsFragment;IZ)V

    .line 153
    return-void
.end method

.class Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;
.super Landroid/os/Handler;
.source "SuggestedUserFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/SuggestedUserFragment;Lcom/instagram/android/fragment/SuggestedUserFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;-><init>(Lcom/instagram/android/fragment/SuggestedUserFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/fragment/SuggestedUserFragment$ReceivedStatusUpdateHandler;->this$0:Lcom/instagram/android/fragment/SuggestedUserFragment;

    #getter for: Lcom/instagram/android/fragment/SuggestedUserFragment;->mAdapter:Lcom/instagram/android/adapter/SuggestedUserAdapter;
    invoke-static {v0}, Lcom/instagram/android/fragment/SuggestedUserFragment;->access$000(Lcom/instagram/android/fragment/SuggestedUserFragment;)Lcom/instagram/android/adapter/SuggestedUserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

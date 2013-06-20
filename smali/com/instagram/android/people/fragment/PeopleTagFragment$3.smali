.class Lcom/instagram/android/people/fragment/PeopleTagFragment$3;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$3;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$3;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagFragment;->saveTagUpdates()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$300(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    .line 131
    return-void
.end method

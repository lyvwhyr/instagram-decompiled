.class Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/people/widget/PeopleTagsLayout$3;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout$3;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;->this$1:Lcom/instagram/android/people/widget/PeopleTagsLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;->this$1:Lcom/instagram/android/people/widget/PeopleTagsLayout$3;

    iget-object v0, v0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;->this$1:Lcom/instagram/android/people/widget/PeopleTagsLayout$3;

    iget-object v1, v1, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;->val$view:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeView(Landroid/view/View;)V

    .line 337
    return-void
.end method

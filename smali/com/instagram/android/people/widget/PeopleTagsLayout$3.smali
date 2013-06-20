.class Lcom/instagram/android/people/widget/PeopleTagsLayout$3;
.super Lcom/instagram/android/widget/SimpleAnimationListener;
.source "PeopleTagsLayout.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

.field final synthetic val$view:Lcom/instagram/android/people/widget/PeopleTagView;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/PeopleTagView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iput-object p2, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;->val$view:Lcom/instagram/android/people/widget/PeopleTagView;

    invoke-direct {p0}, Lcom/instagram/android/widget/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$3;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout$3$1;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout$3;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.class Lcom/instagram/android/people/widget/PeopleTagsLayout$1;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"

# interfaces
.implements Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

.field final synthetic val$tagViews:Ljava/util/LinkedList;

.field final synthetic val$tags:Lcom/instagram/android/people/model/PeopleTagCollection;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Ljava/util/LinkedList;Lcom/instagram/android/people/model/PeopleTagCollection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iput-object p2, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->val$tagViews:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->val$tags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagsLayout()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    const/4 v1, 0x0

    #calls: Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V
    invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->access$000(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/PeopleTagsLayout$TagsLayoutListener;)V

    .line 115
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->val$tagViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagView;

    .line 116
    iget-object v3, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->this$0:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout$1;->val$tags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {v1}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->animateViewIn(Lcom/instagram/android/people/widget/PeopleTagView;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

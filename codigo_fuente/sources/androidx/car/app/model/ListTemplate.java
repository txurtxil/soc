package androidx.car.app.model;

import androidx.car.app.messaging.model.ConversationItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ListTemplate implements e40 {
    static final int MAX_ALLOWED_ITEMS = 100;
    static final int MAX_MESSAGES_PER_CONVERSATION = 10;
    @Deprecated
    private final ActionStrip mActionStrip;
    private final List<Action> mActions;
    private final Header mHeader;
    @Deprecated
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final List<SectionedItemList> mSectionedLists;
    private final ItemList mSingleList;
    @Deprecated
    private final CarText mTitle;

    public ListTemplate(nl nlVar) {
        this.mIsLoading = nlVar.a;
        this.mTitle = nlVar.d;
        this.mHeaderAction = nlVar.e;
        this.mSingleList = nlVar.b;
        this.mSectionedLists = s8.C(nlVar.c);
        this.mActionStrip = nlVar.f;
        this.mActions = s8.C(nlVar.g);
        this.mHeader = nlVar.h;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ol] */
    public static List<SectionedItemList> getTruncatedCopy(List<SectionedItemList> list) {
        ?? obj = new Object();
        obj.a = MAX_ALLOWED_ITEMS;
        ArrayList arrayList = new ArrayList();
        for (SectionedItemList sectionedItemList : list) {
            arrayList.add(SectionedItemList.create(truncate(sectionedItemList.getItemList(), obj), sectionedItemList.getHeader().toCharSequence()));
            if (obj.a <= 0) {
                break;
            }
        }
        return arrayList;
    }

    public static ItemList truncate(ItemList itemList, ol olVar) {
        sj sjVar = new sj(itemList);
        ArrayList arrayList = sjVar.a;
        arrayList.clear();
        for (rj rjVar : itemList.getItems()) {
            if (!(rjVar instanceof ConversationItem)) {
                if (olVar.a < 1) {
                    break;
                }
                Objects.requireNonNull(rjVar);
                arrayList.add(rjVar);
                olVar.a--;
            } else {
                ConversationItem conversationItem = (ConversationItem) rjVar;
                if (olVar.a < 2) {
                    break;
                }
                fb fbVar = new fb(conversationItem);
                int i = olVar.a - 1;
                olVar.a = i;
                int min = Math.min(i, 10);
                int size = conversationItem.getMessages().size();
                int min2 = Math.min(size, min);
                fbVar.f = conversationItem.getMessages().subList(size - min2, size);
                arrayList.add(new ConversationItem(fbVar));
                olVar.a -= min2;
            }
        }
        if (sjVar.c != null) {
            int size2 = arrayList.size();
            if (size2 != 0) {
                int i2 = sjVar.b;
                if (i2 < size2) {
                    int size3 = arrayList.size();
                    int i3 = 0;
                    while (i3 < size3) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        rj rjVar2 = (rj) obj;
                        if (ItemList.getOnClickDelegate(rjVar2) == null) {
                            if (ItemList.getToggle(rjVar2) != null) {
                                c2.g("Items that belong to selectable lists can't have a toggle");
                                return null;
                            }
                        } else {
                            c2.g("Items that belong to selectable lists can't have an onClickListener. Use the OnSelectedListener of the list instead");
                            return null;
                        }
                    }
                } else {
                    throw new IllegalStateException("The selected item index (" + i2 + ") is larger than the size of the list (" + size2 + ")");
                }
            } else {
                c2.g("A selectable list cannot be empty");
                return null;
            }
        }
        return new ItemList(sjVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListTemplate)) {
            return false;
        }
        ListTemplate listTemplate = (ListTemplate) obj;
        if (this.mIsLoading == listTemplate.mIsLoading && Objects.equals(this.mTitle, listTemplate.mTitle) && Objects.equals(this.mHeaderAction, listTemplate.mHeaderAction) && Objects.equals(this.mSingleList, listTemplate.mSingleList) && Objects.equals(this.mSectionedLists, listTemplate.mSectionedLists) && Objects.equals(this.mActionStrip, listTemplate.mActionStrip) && Objects.equals(this.mActions, listTemplate.mActions) && Objects.equals(this.mHeader, listTemplate.mHeader)) {
            return true;
        }
        return false;
    }

    @Deprecated
    public ActionStrip getActionStrip() {
        return this.mActionStrip;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public Header getHeader() {
        Header header = this.mHeader;
        if (header != null) {
            return header;
        }
        if (this.mTitle == null && this.mHeaderAction == null && this.mActionStrip == null) {
            return null;
        }
        yh yhVar = new yh();
        CarText carText = this.mTitle;
        if (carText != null) {
            yhVar.c = carText;
            f9.e.b(carText);
        }
        Action action = this.mHeaderAction;
        if (action != null) {
            yhVar.b(action);
        }
        ActionStrip actionStrip = this.mActionStrip;
        if (actionStrip != null) {
            for (Action action2 : actionStrip.getActions()) {
                Objects.requireNonNull(action2);
                yhVar.a.add(action2);
            }
        }
        return yhVar.a();
    }

    @Deprecated
    public Action getHeaderAction() {
        return this.mHeaderAction;
    }

    public List<SectionedItemList> getSectionedLists() {
        List<SectionedItemList> list = this.mSectionedLists;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public ItemList getSingleList() {
        return this.mSingleList;
    }

    @Deprecated
    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mTitle, this.mHeaderAction, this.mSingleList, this.mSectionedLists, this.mActionStrip, this.mHeader);
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public nl toBuilder() {
        return new nl(this);
    }

    public String toString() {
        return "ListTemplate";
    }

    private ListTemplate() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mHeaderAction = null;
        this.mSingleList = null;
        List list = Collections.EMPTY_LIST;
        this.mSectionedLists = list;
        this.mActionStrip = null;
        this.mActions = list;
        this.mHeader = null;
    }
}

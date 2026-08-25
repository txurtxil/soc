package defpackage;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: lb  reason: default package */
/* loaded from: classes.dex */
public abstract class lb extends BaseAdapter implements Filterable {
    public boolean a;
    public boolean b;
    public Cursor c;
    public int d;
    public jb e;
    public kb f;
    public mb g;

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                jb jbVar = this.e;
                if (jbVar != null) {
                    cursor2.unregisterContentObserver(jbVar);
                }
                kb kbVar = this.f;
                if (kbVar != null) {
                    cursor2.unregisterDataSetObserver(kbVar);
                }
            }
            this.c = cursor;
            if (cursor != null) {
                jb jbVar2 = this.e;
                if (jbVar2 != null) {
                    cursor.registerContentObserver(jbVar2);
                }
                kb kbVar2 = this.f;
                if (kbVar2 != null) {
                    cursor.registerDataSetObserver(kbVar2);
                }
                this.d = cursor.getColumnIndexOrThrow("_id");
                this.a = true;
                notifyDataSetChanged();
            } else {
                this.d = -1;
                this.a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (this.a && (cursor = this.c) != null) {
            return cursor.getCount();
        }
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.a) {
            this.c.moveToPosition(i);
            if (view == null) {
                m30 m30Var = (m30) this;
                view = m30Var.j.inflate(m30Var.i, viewGroup, false);
            }
            a(view, this.c);
            return view;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [mb, android.widget.Filter] */
    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.g == null) {
            ?? filter = new Filter();
            filter.a = this;
            this.g = filter;
        }
        return this.g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        Cursor cursor;
        if (this.a && (cursor = this.c) != null) {
            cursor.moveToPosition(i);
            return this.c;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        Cursor cursor;
        if (!this.a || (cursor = this.c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.c.getLong(this.d);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.a) {
            if (this.c.moveToPosition(i)) {
                if (view == null) {
                    m30 m30Var = (m30) this;
                    view = m30Var.j.inflate(m30Var.h, viewGroup, false);
                    view.setTag(new l30(view));
                    ((ImageView) view.findViewById(R.id.edit_query)).setImageResource(m30Var.o);
                }
                a(view, this.c);
                return view;
            }
            c2.g(t20.d(i, "couldn't move cursor to position "));
            return null;
        }
        c2.g("this should only be called when the cursor is valid");
        return null;
    }
}

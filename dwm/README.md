# DWM configurations

### Patches
[Full gaps](https://dwm.suckless.org/patches/fullgaps/)  
[Autostart](https://dwm.suckless.org/patches/autostart/)  
[IPC](https://dwm.suckless.org/patches/ipc/)  
[A custome patch](https://github.com/Rashad-707/rhombuses/blob/main/dwm/patches/03-top-padding.diff) I have made to add a top space for the bar so windows will not overlay, you can modify the space as you want. 

For the **side widgets**, adding a space is a bit tricky, because I've already installed full gaps patch, making a patch for that is difficult so here how you can you do it if you also using gap patch: 
```
void
tile(Monitor *m)
{
	unsigned int i, n, h, mw, my, ty;
	Client *c;

	for (n = 0, c = nexttiled(m->clients); c; c = nexttiled(c->next), n++);
	if (n == 0)
		return;

	if (n > m->nmaster)
		mw = m->nmaster ? m->ww * m->mfact : 0;
	else
			mw = m->ww - m->gappx - 450;
		for (i = 0, my = ty = m->gappx, c = nexttiled(m->clients); c; c = nexttiled(c->next), i++)
		if (i < m->nmaster) {
			h = (m->wh - my) / (MIN(n, m->nmaster) - i) - m->gappx;
			resize(c, m->wx + m->gappx + 450, m->wy + my, mw - (2*c->bw) - m->gappx, h - (2*c->bw), 0);
			my += HEIGHT(c) + m->gappx;
		} else {
			h = (m->wh - ty) / (n - i) - m->gappx;
			resize(c, m->wx + mw + m->gappx + 450, m->wy + ty, m->ww - mw - (2*c->bw) - 2*m->gappx -450, h - (2*c->bw), 0);
			ty += HEIGHT(c) + m->gappx;
		}
}
```
In this function (in `dwm.c`), the`450`  that I've added is for making a room for the widgets, you can modify this number as you need.

For the **center widgets** you have to add the following rule into `config.h` so the widget will appear only in the first tag
 ```
 { "eww",			NULL,       NULL,       1 << 0,	    		1,           -1 },
 ```

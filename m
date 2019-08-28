Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA4A056D
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 16:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CNwuILxPNLMLT1KgKgw7l50hR9epyF2P6fuFYQRrok=; b=sbEXbYBKU6mbyg
	0Rudy7e94pEIB1tewEldzrf1rpI6yIb4ZG3BgK3mDBAOO8IOdPe64AyqcwFKjHZSk7UG9EpxOG68+
	POfbIvMuCNcLBho+xraPi6hqcyDw1SXjzSEOQ4efyZ6Qr0WJQDx1+M9isB3s0ad30nBhMnU0N5E8g
	6TG4WbuxnEkgVhRPA4z87epsRlUHpGYtCaBk9EzofH8cEq8pJgkri+gN58AxtkEtrA0XpDH3bUZaX
	wQpVwDZui9XFbZywrpOMhiMdb9nbViNt+Dx0VRFT+vJRonCyWQX4DDnAsAONsv74inYCtlrODSr5t
	DeAKtzs08GQPJQ6+H5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zNr-0000Ux-1P; Wed, 28 Aug 2019 14:57:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zNi-0000Ti-1j
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 14:57:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id bj8so107574plb.4
 for <linux-nvme@lists.infradead.org>; Wed, 28 Aug 2019 07:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JzE5osCTB92XAPpUB75wCbGts3OVhlEyRxVtEnEhM+s=;
 b=VjafpiHn+H/Yn3ttsfJr5HQonWbXr70KXEmx0gnO39ej1X0lllUFu7YbyJzR5Xmb9X
 pY0MEvyRHBq6SoRV4pw+e/OmRF/9Ehmn4pnpjmXbIoDrLQYFA8C9P9aGUbIOlna4K/I4
 mT+IWsYtQgekyP8NBtddxS1iUw6KL5tX04Dx7XgdvJNuYVNLJ5pUu/TqaSLavXroCTwk
 DROvd2xkRwR6S5fsE5R6gJvu2pWY2Ge2zJVIHxb2DOwQdxx5MBbCwd4EcRuUXTEofiat
 opgF80qTA4p6UTx+mzD7884oIHIhoISj9+zM2f/MYFY07q2OMiOfrYacY/cVAXX67/j8
 ujdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JzE5osCTB92XAPpUB75wCbGts3OVhlEyRxVtEnEhM+s=;
 b=SjYSf4AtQmjDUhu9scgKhn38NhOlBRznHvvP4UxfLKQMTMLTeHomfLi+XaWkZ9x/3X
 lX6xjLLGaBNnLk7Q+NWrAcFCXQnetF6kBP0It2lRW+qpeK+l9gutsO/nFLC+9dCMedli
 XdwuYLTSJJMwxImqzaSItpcyFF2cBhhd45vTqxPGROU2e20C4vpIcyEeGdW0funb38rK
 NQbgrrJhuvtFOkWaLSxuLabx9O+wTPDsTt4x2nvWPGpvRj77T4+qm37EEioWfYu3SuDX
 YS6vYNVPPUzSBEsVpAC2wqqlCTT5JS75bwEZTfgk5eBDJ+lMdcrq1p99wnLcFnV+tXG0
 KPzg==
X-Gm-Message-State: APjAAAUenzy9Qdwp3TaB/ZkO+3sGhWEnj202TbwHTMII5bzRDjWW1Lej
 6KgsvAGMijDW0yloGNRYnmohQ4TC3aUaN4d8dvU=
X-Google-Smtp-Source: APXvYqx4jFzQQN92tBres1dfrzux0bEqo1UfkwxDaRPm7h+C4Zv52PksySBqfNdYulxwW35s56T3DlTv/QuLEuZvtpY=
X-Received: by 2002:a17:902:426:: with SMTP id
 35mr4859364ple.192.1567004222800; 
 Wed, 28 Aug 2019 07:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd> <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
 <20190819143842.GA25401@amd> <7c4c4853-7e3a-0618-92a0-337e248e2b4c@gmail.com>
 <c937b7e0-02c6-ae9a-aaf7-16a2ef29886d@gmail.com>
 <CAC5umyjxkeR3rhf3XZvwkxLvc-0ENEkQfOLnk8A12Qazr9Et8w@mail.gmail.com>
 <86309c4f-bcee-182c-369f-fcc883f379c6@gmail.com>
 <CAC5umyibEMrxhZv0TyS6hYHR+oyj2Oby+LVsjrYmMV8u-chXRQ@mail.gmail.com>
 <1f7928a1-61ba-72f0-fd03-2208856cd8b8@gmail.com>
In-Reply-To: <1f7928a1-61ba-72f0-fd03-2208856cd8b8@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 28 Aug 2019 23:56:51 +0900
Message-ID: <CAC5umygq7p63sAnL+cqe35RqXpFDv=CyuEMiWGQy76=_uq8ZHg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_075706_122204_C1DACF41 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDjmnIgyOOaXpSjmsLQpIDY6MjMgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gT24gOC8yNy8xOSA0OjAzIFBNLCBBa2lub2J1IE1pdGEgd3Jv
dGU6Cj4gPiAyMDE55bm0OOaciDI15pelKOaXpSkgMDo1MyBKYWNlayBBbmFzemV3c2tpIDxqYWNl
ay5hbmFzemV3c2tpQGdtYWlsLmNvbT46Cj4gPj4KPiA+PiBPbiA4LzIzLzE5IDY6MDAgUE0sIEFr
aW5vYnUgTWl0YSB3cm90ZToKPiA+Pj4gMjAxOeW5tDjmnIgyMOaXpSjngaspIDM6MzggSmFjZWsg
QW5hc3pld3NraSA8amFjZWsuYW5hc3pld3NraUBnbWFpbC5jb20+Ogo+ID4+Pj4KPiA+Pj4+IE9u
IDgvMTkvMTkgODoyMiBQTSwgSmFjZWsgQW5hc3pld3NraSB3cm90ZToKPiA+Pj4+PiBPbiA4LzE5
LzE5IDQ6MzggUE0sIFBhdmVsIE1hY2hlayB3cm90ZToKPiA+Pj4+Pj4gT24gU2F0IDIwMTktMDgt
MTcgMjI6MDc6NDMsIEphY2VrIEFuYXN6ZXdza2kgd3JvdGU6Cj4gPj4+Pj4+PiBPbiA4LzE3LzE5
IDQ6NTUgUE0sIFBhdmVsIE1hY2hlayB3cm90ZToKPiA+Pj4+Pj4+PiBPbiBGcmkgMjAxOS0wOC0x
NiAwMTo1OTo1OCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4+Pj4+Pj4+PiBUaGlzIGFsbG93cyBM
RURzIHRvIGJlIGNvbnRyb2xsZWQgYnkgYmxvY2sgZGV2aWNlIGFjdGl2aXR5Lgo+ID4+Pj4+Pj4+
Pgo+ID4+Pj4+Pj4+PiBXZSBhbHJlYWR5IGhhdmUgbGVkdHJpZy1kaXNrIChMRUQgZGlzayBhY3Rp
dml0eSB0cmlnZ2VyKSwgYnV0IHRoZSBsb3dlcgo+ID4+Pj4+Pj4+PiBsZXZlbCBkaXNrIGRyaXZl
cnMgbmVlZCB0byB1dGlsaXplIGxlZHRyaWdfZGlza19hY3Rpdml0eSgpIHRvIG1ha2UgdGhlCj4g
Pj4+Pj4+Pj4+IExFRCBibGluay4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gVGhlIExFRCBibG9j
ayBkZXZpY2UgdHJpZ2dlciBkb2Vzbid0IHJlcXVpcmUgdGhlIGxvd2VyIGxldmVsIGRyaXZlcnMg
dG8KPiA+Pj4+Pj4+Pj4gaGF2ZSBhbnkgaW5zdHJ1bWVudGF0aW9uLiBUaGUgYWN0aXZpdHkgaXMg
Y29sbGVjdGVkIGJ5IHBvbGxpbmcgdGhlIGRpc2sKPiA+Pj4+Pj4+Pj4gc3RhdHMuCj4gPj4+Pj4+
Pj4+Cj4gPj4+Pj4+Pj4+IEV4YW1wbGU6Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IGVjaG8gYmxv
Y2stbnZtZTBuMSA+IC9zeXMvY2xhc3MvbGVkcy9kaXkvdHJpZ2dlcgo+ID4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4gTGV0cyB1c2Ugb25lIHRyaWdnZXIgImJsb2NrIiBhbmQgaGF2ZSB0aGUgZGV2aWNlIGFz
IGEgcGFyYW1ldGVyLAo+ID4+Pj4+Pj4+IHBsZWFzZS4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFdl
IGFscmVhZHkgaGF2ZSAxMDAwIGNwdSB0cmlnZ2VycyBvbiAxMDAwIGNwdSBtYWNoaW5lcywgYW5k
IHllcywgaXRzIGEKPiA+Pj4+Pj4+PiBkaXNhc3RlciB3ZSdsbCBuZWVkIHRvIGZpeC4gTGV0cyBu
b3QgcmVwZWF0IHRoZSBzYW1lIG1pc3Rha2UgaGVyZS4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEkg
Z3Vlc3MgaXQgbWF5IGJlIHNsaWdodGx5IG1vcmUgd29yay4gU29ycnkgYWJvdXQgdGhhdC4KPiA+
Pj4+Pj4+Cj4gPj4+Pj4+PiBXZSBzaG91bGQgYmUgYWJsZSB0byBsaXN0IGF2YWlsYWJsZSBibG9j
ayBkZXZpY2VzIHRvIHNldCwKPiA+Pj4+Pj4+IHNvIHRoZSBwcm9ibGVtIHdvdWxkIGJlIG5vdCBh
dm9pZGVkIGFueXdheS4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gU2hvdWxkIHdlPyBXZSBuZWVkIHRvIGxp
c3QgdHJpZ2dlcnMsIGJ1dCB3ZSBtYXkgbm90IGxpc3QgYWxsIHRoZSBkZXZpY2VzLi4uCj4gPj4+
Pj4KPiA+Pj4+PiBUaGlzIGlzIHNpbWlsYXIgdG8gdXNicG9ydCB0cmlnZ2VyIHRoYXQgbGlzdHMg
YXZhaWxhYmxlCj4gPj4+Pj4gcG9ydHMgYXMgZmlsZXMgaW4gYSBzdWItZGlyZWN0b3J5LiBXZSBt
aWdodCBldmVudHVhbGx5IGdvCj4gPj4+Pj4gaW4gdGhpcyBkaXJlY3Rpb24uCj4gPj4+Pgo+ID4+
Pj4gSSBtdXN0IHdpdGhkcmF3IHRoaXMgc3RhdGVtZW50LiBUaGlzIGlzIG5vdCBzaW1pbGFyIHRv
IHVzYnBvcnQKPiA+Pj4+IHRyaWdnZXIuIFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgd2l0aCBsZWR0
cmlnLWJsb2NrIHdlIGhhdmUgc2VwYXJhdGUKPiA+Pj4+IHRyaWdnZXJzIHBlciBlYWNoIGRldmlj
ZSBhbmQgSSBhbSBub3QgYXdhcmUgaWYgdGhlcmUgaXMgc29tZSBjZW50cmFsaXplZAo+ID4+Pj4g
bWVjaGFuaXNtIHNpbWlsYXIgdG8gYmxvY2tpbmdfbm90aWZpZXJfY2hhaW4gKHVzYl9ub3RpZmll
cl9saXN0Cj4gPj4+PiBpbiBkcml2ZXJzL3VzYi9jb3JlL25vdGlmeS5jKSBhdmFpbGFibGUgZm9y
IGJsb2NrIGRldmljZXMsIHRoYXQKPiA+Pj4+IHdvdWxkIGFsbG93IHRvIGdhdGhlciBhbGwgYXZh
aWxhYmxlIGJsb2NrIGRldnMgdW5kZXIgY29tbW9uIHRyaWdnZXIuCj4gPj4+Pgo+ID4+Pj4gTW9y
ZW92ZXIgSSByZW1lbWJlciBHcmVnIG9uY2UgZGlzY291cmFnZWQgdXNpbmcgbm90aWZpZXIgY2hh
aW5zCj4gPj4+PiBhcyB0aGV5IGFyZSB1bnNhZmUsIHNvIHdlIHdvdWxkIG5lZWQgc29tZSBvdGhl
ciBzb2x1dGlvbiBhbnl3YXkuCj4gPj4+Cj4gPj4+IEkgc3RhcnQgdGhpbmtpbmcgdGhhdCB3ZSBz
aG91bGQgaW1wbGVtZW50IHRoZSBMRUQgYmxvY2sgZGV2aWNlIGFjdGl2aXR5Cj4gPj4+IHRyaWdn
ZXIgaW4gdXNlcnNwYWNlLiAgVGhlIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBmaXJzdGx5IGFjdGl2
YXRlcwo+ID4+PiBvbmUtc2hvdCBMRUQgdHJpZ2dlciBhbmQgcGVyaW9kaWNhbGx5IHJlYWRzIC9z
eXMvYmxvY2svPGRpc2s+L3N0YXQgYW5kCj4gPj4+IHdyaXRlcyAvc3lzL2NsYXNzL2xlZHMvPGxl
ZD4vc2hvdCBpZiB0aGVyZSBpcyBhbnkgZGlzayBhY3Rpdml0eS4KPiA+Pgo+ID4+IFRoaXMgd291
bGQgc3Vib3B0aW1hbCBzb2x1dGlvbi4gSSBoYXZlIGFub3RoZXIgaWRlYSAtIGxldCdzIGdldCBi
YWNrCj4gPj4gdG8gdGhlIGltcGxlbWVudGF0aW9uIG9mIGxlZHRyaWctYmxrIGluIGdlbmhkLmMu
IFdlIHdvdWxkIGJlIHJlZ2lzdGVyaW5nCj4gPj4gb25lIHRyaWdnZXIgb24gbW9kdWxlIGluaXRp
YWxpemF0aW9uIGluIGEgZnVuY3Rpb24gd2l0aCBfX2luaXQgbW9kaWZpZXIuCj4gPj4gVGhlbiB3
ZSB3b3VsZCBuZWVkIHRvIGFkZC9yZW1vdmUgdHJpZ2dlcnMgdG8gdGhlIGxlZHRyaWctYmxrIGlu
Cj4gPj4gcmVnaXN0ZXJfYmxrZGV2KCkvdW5yZWdpc3Rlcl9ibGtkZXYoKS4gQW5kIHJlZ2lzdGVy
ZWQgdHJpZ2dlcnMgd291bGQKPiA+PiBiZSBsaXN0ZWQgaW4gYmxvY2tfZGV2cyBkaXJlY3Rvcnkg
Y3JlYXRlZCBieSB0aGUgdHJpZ2dlci4KPiA+Pgo+ID4+IFlvdSBjYW4gY29tcGFyZSBob3cgZHJp
dmVycy91c2IvY29yZS9sZWR0cmlnLXVzYnBvcnQuYyBtYWludGFpbnMKPiA+PiBzaW1pbGFyIGRp
cmVjdG9yeSBvZiB1c2IgcG9ydHMuCj4gPgo+ID4gSXQgY291bGQgYmUgcG9zc2libGUsIGJ1dCBJ
IGhhdmUgeWV0IGFub3RoZXIgaWRlYS4gIFdoYXQgYWJvdXQgaW50cm9kdWNpbmcKPiA+IC9wcm9j
L2xlZC10cmlnZ2VycyBhbmQgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L2N1cnJlbnQtdHJpZ2dlcj8K
PiA+IFRoZSAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vdHJpZ2dlciB3aWxsIGJlIG9ic29sZXRlZCBi
eSB0aGVzZSB0d28gZmlsZXMuCj4gPgo+ID4gVGhlIC9wcm9jL2xlZC10cmlnZ2VycyBpcyByZWFk
IG9ubHkgYW5kIG5vIFBBR0VfU0laRSBsaW1pdGF0aW9uIGJ5IHRoZQo+ID4gc2VxX2ZpbGUgaW50
ZXJmYWNlLiAgU28gd2UgY2FuIGxpc3QgYWxsIHRyaWdnZXJzIGluIHRoaXMgZmlsZS4KPiA+Cj4g
PiBUaGUgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L2N1cnJlbnQtdHJpZ2dlciBpcyBhbG1vc3QgaWRl
bnRpY2FsIHRvCj4gPiAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vdHJpZ2dlci4gIFRoZSBvbmx5IGRp
ZmZlcmVuY2UgaXMgdGhhdAo+ID4gJ2N1cnJlbnQtdHJpZ2dlcicgb25seSBzaG93cyB0aGUgY3Vy
cmVudCB0cmlnZ2VyIG5hbWUuCj4KPiBUaGVyZSdzIG5vdCBuZWVkIHRvIGNvbWUgdXAgd2l0aCB5
ZXQgYW5vdGhlciB0cmlnZ2VyIGludGVyZmFjZS4KPiBXZSBqdXN0IG5lZWQgdG8gY29udmVydCBz
eXNmcyB0cmlnZ2VyIGF0dHJpYnV0ZSB0eXBlIHRvIGJpbmFyeS4KCk9LLCBJJ2xsIHRyeSBpdC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK

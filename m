Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C79F22F3
	for <lists+linux-nvme@lfdr.de>; Thu,  7 Nov 2019 00:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of7xQQuJ/dyNTsOEhDZQylUZ+i1TNU/tMZtC+f0+vgE=; b=WAV1QcTSAfts+W
	bkNq01+lIh2XPdyRUg4GtU5rwFEY6NTURdA88A6gC+rr4Pv1vFaO33yEfcETfyJAtl+huraFkGVrv
	MTBd4HD2WEN+sRWZk9Xteo05NRwKubKt5+UO/mSdVHzZGmBtKGNzEPQogs8oqwY9o8mvYWcHrIHWQ
	Q+f8mIldVnJwL34P7zt1uVIYFEfQJ5BieSrqtojGxKpFq4nd9WkKGkRrAFuALtZuvoYHF5wJ2stcl
	ke/8QUJyAA2trYG8bfyhTTa1ArOuGUjKeSrFNzNDrbUMKN53y4UgOFr/AtAjQ7DagV+HmQCstzjhc
	SLsdI95iknxgJDpgw7dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSVCn-0006gq-R0; Wed, 06 Nov 2019 23:59:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSVCg-0006g7-Ts
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 23:59:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id f4so81738lfk.7
 for <linux-nvme@lists.infradead.org>; Wed, 06 Nov 2019 15:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DYf8aAMmRvjXUQpfphEhKk+3TLfQLLQK5Utz/xmwQg4=;
 b=eNEWXheYDRU8KdxiR6Eq6OKP9rbfiwIXWnSwfYK3lptAs0cRbbRl01t9JcVXalaIh5
 y5sxUuHGokzteBEcjK8mBHHkoLq7JHMnn23V5W2mJhBUiIUgrvl3oF1pq+sr1z6cBJxv
 w3eHDjFYfJezAaK/NsMEUKVVIZJ5TFDG0We2gyWI/AhQ9SkdJVHsJ0ZneMp9Jx+SgXap
 z+nmvDEKuEG02F8kN6/mSP+9g9L/m4RB4Wh4NGMx1ahdpnOvw+Wkbk/+oPC0sNKgqNHa
 y7BNrhoLlxgtUoxnGZN71FSRLbeSQtVJfsGUeU2dF8SNF0Z5rBiZap12A/JP43u9aKuf
 FaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DYf8aAMmRvjXUQpfphEhKk+3TLfQLLQK5Utz/xmwQg4=;
 b=h1nnrDNlPR9k3j46AtRQAfNEGGTk7DhAxolP5bWJIP9YUEMBlesmVTX8fcS6bS6KO0
 qJ64i+T4aVfiU5xuYwNwmaCd1umOKtYoowxRRSfVR8Ffz00vvGoikXi+YRwXqF9AaGEc
 96NslUkb26u/ZCo6aYEslxvnJ47lsSs25fN0SVKAOSsgeNZzkVUmOCJfDuzy8WBCmZwW
 v63ZDjxjZ/89Qqj+I6+bB1M4HdsN+QoZshUfEUC5RBp1AmJ3gTGqPAGvKiCEaDZKY5V1
 77G3cveAxdR16+hRY9wgKnSqfMCgvI/UJkfsnS62KjmheM66HFn9sJp+rva4tcFFTkgB
 30ww==
X-Gm-Message-State: APjAAAV1pbCxzlPXn54HzK2hbNWpy+V0cXvORlbePJ1sHK+4mnzJeqkj
 FmKAVyHkVhzbFcDYln7Qfou+kxZt1eLdGWzQFQk=
X-Google-Smtp-Source: APXvYqztjgeRQgd01HKyl8vySOmEV7cS+8kabNLlMrm2GoVNxgvas+z4ZglnjF6coc9mkDxpziUQPrtI7QW8056NeqM=
X-Received: by 2002:a19:6454:: with SMTP id b20mr69757lfj.159.1573084748421;
 Wed, 06 Nov 2019 15:59:08 -0800 (PST)
MIME-Version: 1.0
References: <20191029223214.18889-1-linux@roeck-us.net>
 <20191030005327.GC15332@redsun51.ssa.fujisawa.hgst.com>
 <20191106212921.GA7020@amd>
In-Reply-To: <20191106212921.GA7020@amd>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 6 Nov 2019 15:58:56 -0800
Message-ID: <CAFXsbZrGudirV7j9=h_BHG3HGAVs_zGRpgz7J4DRy2SxioVvLQ@mail.gmail.com>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_155910_988129_E9F3DE3F 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiA+ID4gU2lnbmVkLW9mZi1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+
ID4KPiA+IFRoaXMgbG9va3MgZmluZSB0byBtZSwgYnV0IEknbGwgd2FpdCBhIGZldyBtb3JlIGRh
eXMgdG8gc2VlIGlmIHRoZXJlIGFyZQo+ID4gYW55IGFkZGl0aW9uYWwgY29tbWVudHMuLgo+Cj4g
VXNlciB3YW50cyB0byBrbm93IHRlbXBlcmF0dXJlIG9mIC9kZXYvc2RhLi4uIGFuZCB3ZSBhbHJl
YWR5IGhhdmUgYW4KPiB1c2Vyc3BhY2UgdG9vbHMga25vd2luZyBhYm91dCBzbWFydCwgZXRjLi4u
CgpBdCBsZWFzdCBmb3IgbXkgdXNlIGNhc2VzLCBiZWluZyBhYmxlIHRvIHVzZSB0aGUgdGhlcm1h
bCBzdWJzeXN0ZW0gb2YKdGhlIGtlcm5lbCB0byBjb29sIHRoaW5ncyBkb3duIHdoZW4gdGhlIFNT
RCBnZXRzIHRvbyBob3QgaXMgaW1wb3J0YW50LgpJcyB0aGVyZSBhIHdheSB0byBkbyB0aGlzIHdp
dGggdXNlcnNwYWNlIHRvb2xzIGZlZWRpbmcgYmFjayB0byB0aGUKa2VybmVsJ3MgdGhlcm1hbCBz
dWJzeXN0ZW0/Cgo+Cj4gcGF2ZWxAYW1kOi9kYXRhL2ZpbG0kIHN1ZG8gaGRkdGVtcCAvZGV2L3Nk
YQo+IC9kZXYvc2RhOiBTVDEwMDBMTTAxNC0xRUoxNjQ6IDQ4wrBDCj4KPiBJIHNlZSB3ZSBhbHNv
IGhhdmUgc2Vuc29ycyBmcmFtZXdvcmsgYnV0IGl0IGRvZXMgX25vdF8gaGFuZGxlCj4gaGFyZGRy
aXZlIHRlbXBlcmF0dXJlcy4KPgo+IERvZXMgaXQgbmVlZCBzb21lIGtpbmQgb2YgdW5pZmljYXRp
b24/IFNob3VsZCBOVk1lIGRldmljZXMgZXhwb3NlCj4gIlNNQVJUIiBpbmZvcm1hdGlvbiBpbiB0
aGUgc2FtZSB3YXkgb3RoZXIgU1NEcyBkbz8KPgo+IEJlc3QgcmVnYXJkcywKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGF2
ZWwKPiAtLQo+IChlbmdsaXNoKSBodHRwOi8vd3d3LmxpdmVqb3VybmFsLmNvbS9+cGF2ZWxtYWNo
ZWsKPiAoY2Vza3ksIHBpY3R1cmVzKSBodHRwOi8vYXRyZXkua2FybGluLm1mZi5jdW5pLmN6L35w
YXZlbC9waWN0dXJlL2hvcnNlcy9ibG9nLmh0bWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK

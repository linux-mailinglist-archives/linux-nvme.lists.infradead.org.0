Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF6199B9B
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZdy/p5XcuEj4pv7OxMQ7D3fwCGOv2oJsH5IMprpTkg=; b=QRxdHF6feetq3e
	EUSE6/YxRU6iPiA6Drk1qSHXMb+r4SJFdQymnkmPYiMEjpeK7ZEIIj4v6FRzUW6e+o0QTSXO91aGN
	KGfnxwM0uvWVaXJHRs188gdvLxm8UPnxIKetSuIuiS2UQQ49AbQWXHwCtgl2rLfibR4mQnTZP6i+B
	uMLTwXETh5ahtfbWnFfz3jvg8XhPz29OTkPqNuKGWs0YGEW3rL+2+sqm66O92oogRjSG8f7H7DIhj
	kBiygEbGq025MBmnbRzkxXvvacjl+DQE/sAg5lG18qWnicAH6hl21EQoJI+/zult95YHlzIoxJtrU
	hNTWu2Yv/mRY2h7p4FDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJnd-0004wE-QU; Tue, 31 Mar 2020 16:31:37 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnY-0004ud-GY
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:31:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id k13so23697424qki.2
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3e9ikjR7lUfigAH3hUl/FtkvucG7jL188AkHtbtxXwU=;
 b=JFffBG1O7hZhrL4iWKk+o5lwqbdFv84JlaqpK1TtGAaPpOY13zvdft43vmDz/CcmTQ
 nIHnNWsxIL0clp4kNgoxK0yQlGE98tVc7k9BZ+Aqj6wYm5nS2HCVA2SbKrU9fXydw8IB
 iWd7CDUllGJqvAqA8gggeh9RXn3bjDLGVF8C90bnvIopC1wIOhQ36QT3f0aufrC/iC/T
 SYPRvEgdHQcCB9EB5fGpEsED3mwVOy9S3w3yMl9SdggcVFZBQW9UvaTeJ2Both4xMGzZ
 lDLNirOa07shniq/V7jr1WOxVJ3IVPZJQlvZa+1IcsAKyOO8UT9j4q1l9/1ctw0DOTLF
 A+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3e9ikjR7lUfigAH3hUl/FtkvucG7jL188AkHtbtxXwU=;
 b=BazCHu4kGz8guKeR3N67XtE1XfQ4eik7FYr0OmI2db9wtvJBr+jTBL7nu30mrrqLh1
 opNCvwLoVaMtzQxEku9xnjV8Hr7212odjRlEdy4WHBtCIKBcB9S2xK+79hLYzgkMomWI
 RlAWot/kU5iobJCuXOElMHhBJe/ab9pnzjqsb/ok3zf98G7Wivb6IL47J2TZgkZ0dGWK
 XlNkiuNS7Cr2gR7iXPLTFTWYUF0UzArrwV9YnwzMoCz8VgyFMU0dHIkBOHvt/ofn3j4I
 tzFy002t9JNK7+0Ru0gvaQPQkvE+WeeJ4E2DaqJH42HIT4sXh1uyYP/JxFNnpv4VZoEx
 eGeA==
X-Gm-Message-State: ANhLgQ11zr/eFXE4yQwa2WTlNj3aj13cM9EIn7sWXD9RGe3FzjYAi8/F
 hWuotUmYB4PHwQMDjSc/f+XSdx01sUN5zzgp8Xg=
X-Google-Smtp-Source: ADFU+vv7XLsSmd0U+NVmBqN6EeeGNyZH+7V3R7M+qo+XNg5DADsMkKTg2jxXha8xl3BLAFxZYuJpn4eJIrre1h9PmJM=
X-Received: by 2002:a37:bf06:: with SMTP id p6mr5907892qkf.477.1585672288628; 
 Tue, 31 Mar 2020 09:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1580786525.git.zhangweiping@didiglobal.com>
 <20200204154200.GA5831@redsun51.ssa.fujisawa.hgst.com>
 <CAA70yB5qAj8YnNiPVD5zmPrrTr0A0F3v2cC6t2S1Fb0kiECLfw@mail.gmail.com>
 <CAA70yB62_6JD_8dJTGPjnjJfyJSa1xqiCVwwNYtsTCUXQR5uCA@mail.gmail.com>
 <20200331143635.GS162390@mtj.duckdns.org>
 <CAA70yB51=VQrL+2wC+DL8cYmGVACb2_w5UHc4XFn7MgZjUJaeg@mail.gmail.com>
 <20200331155139.GT162390@mtj.duckdns.org> <20200331155257.GA22994@lst.de>
In-Reply-To: <20200331155257.GA22994@lst.de>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Wed, 1 Apr 2020 00:31:17 +0800
Message-ID: <CAA70yB6PYH-W8-RRd7nxXOvpg6n+_-h_BLm6JA3EbLmsYG-ZSw@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and nvme
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_093132_543757_7455DA19 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zwp10758[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zwp10758[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, cgroups@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IOS6jjIwMjDlubQz5pyIMzHml6Xlkajkuowg
5LiL5Y2IMTE6NTLlhpnpgZPvvJoKPgo+IE9uIFR1ZSwgTWFyIDMxLCAyMDIwIGF0IDExOjUxOjM5
QU0gLTA0MDAsIFRlanVuIEhlbyB3cm90ZToKPiA+IEhlbGxvLAo+ID4KPiA+IE9uIFR1ZSwgTWFy
IDMxLCAyMDIwIGF0IDExOjQ3OjQxUE0gKzA4MDAsIFdlaXBpbmcgWmhhbmcgd3JvdGU6Cj4gPiA+
IERvIHlvdSBtZWFucyBkcm9wIHRoZSAiaW8ud3JyIiBvciAiYmxraW8ud3JyIiBpbiBjZ3JvdXAs
IGFuZCB1c2UgYQo+ID4gPiBkZWRpY2F0ZWQgaW50ZXJmYWNlCj4gPiA+IGxpa2UgL2Rldi94eHgg
b3IgL3Byb2MveHh4Pwo+ID4KPiA+IFllcywgc29tZXRoaW5nIGFsb25nIHRoYXQgbGluZS4gR2l2
ZW4gdGhhdCBpdCdzIG52bWUgc3BlY2lmaWMsIGl0J2QgYmUgYmVzdCBpZgo+ID4gdGhlIGludGVy
ZmFjZSByZWZsZWN0cyB0aGF0IHRvbyAtIGUuZy4gdGhyb3VnaCBhIGZpbGUgdW5kZXIKPiA+IC9z
eXMvYmxvY2svbnZtZSovZGV2aWNlLy4gSmVucywgQ2hyaXN0b3BoLCB3aGF0IGRvIHlvdSBndXlz
IHRoaW5rPwo+Cj4gSSdtIHByZXR0eSBzdXJlIEkgdm9pY2VkIG15IG9waW5pb24gYmVmb3JlIC0g
SSB0aGluayB0aGUgTlZNZSBXUlIKPiBxdWV1ZWluZyBjb25jZXB0IGlzIGNvbXBsZXRlbHkgYnJv
a2VuIGFuZCBJIGRvIG5vdCB0aGluZyB3ZSBzaG91bGQKPiBzdXBwb3J0IGl0IGF0IGFsbC4KSGkg
Q2hyaXN0b3BoLAoKV291bGQgeW91IGxpa2UgdG8gc2hhcmUgbW9yZSBkZXRhaWwgYWJvdXQgd2h5
IE5WTWUgV1JSIGlzIGJyb2tlbj8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK

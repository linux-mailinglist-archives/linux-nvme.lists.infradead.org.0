Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5C12682
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 05:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AmwSx88Ero5+L7jE+7aInX9n84pSjk6MR9Uf8amknw=; b=NgEvAU+n89trE9
	8WiYRw2a7rnfv/jMtfztchw3bzdO0+6VN7Wdf9tzhKCEJ8GA/tn5GhNgmeMudJPxJ80eXjQFk09dL
	BF1ytdTucmT0wSjegOU56yedp9g0AT31dCMMlR+ZXRfGuddBB0KE0Yy+QvsM74Iya2m+PxVCmoqzB
	8OeKYvVqr+N423+cmIQyH3wBSbiBmODtA/XF77MFJeoQ133aI5JgCC4S6XmxUF6++NLb+kYUAlxwo
	u/8Q1LQo8xXUAj/TNRdNRs7mm+IGykbf/YEh7bHnRMLF4e5nFGB2CEdVKMfOzo5ig7sQkMyi5b61v
	cH90bTbLdlnwAJUzBELw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMP1m-0002oU-CB; Fri, 03 May 2019 03:38:26 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMP1h-0002o5-IW
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 03:38:22 +0000
Received: by mail-pg1-x52e.google.com with SMTP id t22so2028287pgi.10
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 20:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vYq3LLgVuFl+Q4Cfesc/hNih9b2VH/+j6MEqw1Odz0c=;
 b=ZQuKYFlB5bt+x6kvfiPga6EKU9dz2+5hc5tVns/3D7hxiCaQaNmsH7UqDEaU2Sj39C
 t/oHNX3E10jYVn0GMG/2xNbqCspNHbQGQKemn9nq6X24fP6AU3NoqZl575bRK322lMKz
 RUSEOR9jKyziJTKWY1HaUK0j2498zn6YPwFVuBu4Jyh5DEsi3hM8NL6MLLjjDfIC6lX6
 GZPo8mozNR3pHbuAYFq0TLXoMJ9OPABvHQXfo1EkszAfJZVmCJk44j//HJI2qLwQ+uI8
 77mLFG+JGItOvhSwZbt2JzJc6STCqS7FHxZamY0e5MvI1NLFNmyhOoFNfIFB4ThrzkAp
 s+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vYq3LLgVuFl+Q4Cfesc/hNih9b2VH/+j6MEqw1Odz0c=;
 b=eUdjccO8+d6CQNamNSeC3/QiOdWTjUgA1bUE1jkC3IyX1kTUGendGocT6FrVPmMXzL
 xi5eikUmqiXlevp/CEPzP2IYuOiJiM7Z4CZRFr/yNJZAHvWelkzsFnNB2Nklm59ytmPg
 WCnB4JRlize+r6HxfM+XbM38YRs6arGe2s2JV6216z0mk/3m0xAJgcK5gKX29sU1Cj8X
 R5jKBjZOeS5C10c0cwys/A3qoUMCtfwjSH0n1iHhDrHrvpzwLSxEHNzNelU8y9RGzWy1
 6CrLV4zjSfQKGFr+rt/01rrjHn4tjVlvRjYnDTIOKtkqjqKoECL59shvxQt5tVQYANaP
 YJsw==
X-Gm-Message-State: APjAAAUfMZWFIfX+MRmPCYXsDt3pterHsRfWtrzTUGf7bLSOoRmsQJLO
 DEwo+JMzCwFzvRZRrHuV1cdUXFDl7Q9YQMv8umoVk5ug
X-Google-Smtp-Source: APXvYqzKuTFTwoC86bQ2qw6iOJ8RsxTkS0HUuiYFSODFmG4a+zwmdQpfNpDDK9/uJA/fSWJIbqg2wn/tqVvfW2sNtA0=
X-Received: by 2002:a62:5542:: with SMTP id j63mr7923162pfb.34.1556854699491; 
 Thu, 02 May 2019 20:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
In-Reply-To: <20190502125722.GA28470@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Fri, 3 May 2019 12:38:08 +0900
Message-ID: <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
To: Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_203821_611695_1BCA43FC 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgy5pelKOacqCkgMjI6MDMgS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVs
LmNvbT46Cj4KPiBPbiBUaHUsIE1heSAwMiwgMjAxOSBhdCAwNTo1OToxN1BNICswOTAwLCBBa2lu
b2J1IE1pdGEgd3JvdGU6Cj4gPiBUaGlzIGVuYWJsZXMgdG8gY2FwdHVyZSBzbmFwc2hvdCBvZiBj
b250cm9sbGVyIGluZm9ybWF0aW9uIHZpYSBkZXZpY2UKPiA+IGNvcmVkdW1wIG1hY2hhbmlzbSwg
YW5kIGl0IGhlbHBzIGRpYWdub3NlIGFuZCBkZWJ1ZyBpc3N1ZXMuCj4gPgo+ID4gVGhlIG52bWUg
ZGV2aWNlIGNvcmVkdW1wIGlzIHRyaWdnZXJlZCBiZWZvcmUgcmVzZXR0aW5nIHRoZSBjb250cm9s
bGVyCj4gPiBjYXVzZWQgYnkgSS9PIHRpbWVvdXQsIGFuZCBjcmVhdGVzIHRoZSBmb2xsb3dpbmcg
Y29yZWR1bXAgZmlsZXMuCj4gPgo+ID4gLSByZWdzOiBOVk1lIGNvbnRyb2xsZXIgcmVnaXN0ZXJz
LCBpbmNsdWRpbmcgZWFjaCBJL08gcXVldWUgZG9vcmJlbGwKPiA+ICAgICAgICAgcmVnaXN0ZXJz
LCBpbiBudm1lLXNob3ctcmVncyBzdHlsZSB0ZXh0IGZvcm1hdC4KPgo+IFlvdSdyZSBzdXBwb3Nl
ZCB0byB0cmVhdCBxdWV1ZSBkb29yYmVsbHMgYXMgd3JpdGUtb25seS4gU3BlYyBzYXlzOgo+Cj4g
ICBUaGUgaG9zdCBzaG91bGQgbm90IHJlYWQgdGhlIGRvb3JiZWxsIHJlZ2lzdGVycy4gSWYgYSBk
b29yYmVsbCByZWdpc3Rlcgo+ICAgaXMgcmVhZCwgdGhlIHZhbHVlIHJldHVybmVkIGlzIHZlbmRv
ciBzcGVjaWZpYy4KCk9LLiAgSSdsbCBleGNsdWRlIHRoZSBkb29yYmVsbCByZWdpc3RlcnMgZnJv
bSByZWdpc3RlciBkdW1wLiAgSXQgd2lsbCB3b3JrCm91dCB3aXRob3V0IHRoZSBpbmZvcm1hdGlv
biBpZiB3ZSBoYXZlIHNuYXBzaG90IG9mIHRoZSBxdWV1ZXMuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

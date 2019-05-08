Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BDC17DA9
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 18:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7tyovgba6M7tb/P6mQCmAylQfcZzXXb3rdg2mIFn0Y=; b=CUyI1w8t4k+gGr
	FTR+WuGP57eIx90hAWqvsnLNIJ8Pjef9SCxNm8Mp0NVEyBjxUN2lJmnbo/J5kMEQWw6N0zeimf2+4
	giy/Q0Q18qv8OBhGDYT6HIS22T12sf3N7uXkcP4T98HkU3Ec1Dm3f5Vur759qNuu70tzTbHTO+Yw4
	Dn3xSMvQxa0zQik8BiRKVQwlPfhbm/LFVC/vuQ7X5MeHRKus9v5a2g8phOFZECG03REYkWo5MshH3
	6BcFSa/qukbrhlPEOjblrdZEA/n+hIazSjtgZvwHceS1cPRtcIUBoJ54ZWDXAxYqevl8MvyaAEAgy
	Fzgh0E4o7bJYXXUZapMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP1j-0007Lz-6m; Wed, 08 May 2019 16:02:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP1c-0007Lc-Qf
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 16:02:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so10722869pfi.4
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 09:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=77RyMHazvG2msNzM8pf8/kJ6r9tk7sPVLtMCVG2udcU=;
 b=cOJDWf8ZIA/Ztag3fTZVNI6DZMHUE4a4eeOEZVSOp91ZKk0KrcswOhR0Zo/c/+bof/
 49MqhaXjc9e6ElZm7SZYJct/HYTSN3DoW1IWHeHqNluelE0GsgW6g8v8s2CZzrgOJy4M
 RvdeVrJKq2Z1b3F2NFCDe1h2Y4c7Y8/7S105h6gZq0duJKTwi5Zye+vNqjkh2krT2kL4
 y2lR20qSM5vElIGf+zKpVKiYhQgbgHfzUk2q/WmtbnefHitR5DUDvUHxkbDHkCC+wa/q
 vRgS9c3dliKpalhmN8dXj64Gc133LJn633t9ahWzP9ZsCbWgC8XxXBs8yuRPJO3V+cU1
 L9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=77RyMHazvG2msNzM8pf8/kJ6r9tk7sPVLtMCVG2udcU=;
 b=WJegZOv4X5smomxzbiWwncH2Dwis+V2Qq4ymR3upWxt3C0B+Yqr7a639T8Oi3g2l0A
 rInfZq5susC+bqpr/uVWj6bxssCkmkW9iBnHQxgG1q1iQXOIRvObpmoAUnwGfF1Wi+c5
 BceQEL6vXxA17LxAuxrajA2DKoCIAdqi7zB+GfAcBWJPscBvHalAuZNO5rU8JzEtwHSj
 cpsBw+AY1n/mPBc1OVKl30BQxj/h4u5Rve+BzfEwtLPl/ZByehe542lUxr+LbqnsPxAg
 TbON/LsrqbIRHXKV22WUBbzXC7dbQI709zN7T3MMERQIqNtRxBCHhKeXHaxGpZoAQ2uR
 vFhA==
X-Gm-Message-State: APjAAAUXhZEch7Iczu1iDGdtMvx6o6fHKJXc0913w1Exvx5AtSfWvVPA
 LfBz6MsKHHi5TMopAkytoWCf2+FJAlhsn65jXjM=
X-Google-Smtp-Source: APXvYqyz/wjMooRJ76q0YSf0rxiwBcHqiAK7CCzsRN1O/AvgVg2wK45uSoc3yGKVWNRBs3YLRFDYF3XbDcDe+HdCSlM=
X-Received: by 2002:a63:5c5b:: with SMTP id n27mr38008342pgm.52.1557331352209; 
 Wed, 08 May 2019 09:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
 <CGME20190507171318epcas5p129bb73b39447d62a7d266ed461687488@epcms2p3>
 <20190507170733.GA6783@localhost.localdomain>
 <20190508002534epcms2p3acacda8460fcfb7f2b978411b74bbbd5@epcms2p3>
In-Reply-To: <20190508002534epcms2p3acacda8460fcfb7f2b978411b74bbbd5@epcms2p3>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 9 May 2019 01:02:21 +0900
Message-ID: <CAC5umyjsC_ECC4c_fS5QhVY1JgfSLx6ecEPVua=0j=K+JaiFpQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
To: minwoo.im@samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090232_887847_5BC44C70 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg45pelKOawtCkgOToyNSBNaW53b28gSW0gPG1pbndvby5pbUBzYW1zdW5nLmNv
bT46Cj4KPiA+IFRoaXMgaXMgYSBiaXQgb2YgYSBtaW5lIGZpZWxkLiBUaGUgc2h1dGRvd25fbG9j
ayBpcyBoZWxkIHdoZW4gcmVjbGFpbWluZwo+ID4gcmVxdWVzdHMgdGhhdCBkaWRuJ3Qgc2VlIGEg
cmVzcG9uc2UuIElmIHlvdSdyZSBob2xkaW5nIGl0IGhlcmUgYW5kIHlvdXIKPiA+IHRlbGVtZXRy
eSBsb2cgcGFnZSB0aW1lcyBvdXQsIHdlJ3JlIGdvaW5nIHRvIGRlYWRsb2NrLiBBbmQgc2luY2Ug
dGhlCj4gPiBjb250cm9sbGVyIGlzIHByb2JhYmx5IGluIGEgYnVnZ2VyZWQgc3RhdGUgd2hlbiB5
b3UgdHJ5IHRvIHJldHJpZXZlIG9uZSwKPiA+IEkgd291bGQgZ3Vlc3MgYW4gdW5yZWNvdmVyYWJs
ZSB0aW1lb3V0IGlzIHRoZSBtb3N0IGxpa2VseSBvdXRjb21lLgo+Cj4gQWtpbm9idSwKPgo+IEkg
YWN0dWFsbHkgYWdyZWUgd2l0aCBLZWl0aCdzIG9uZS4gIEluIG15IGV4cGVyaWVuY2UsIHRoZXJl
IHdhcyBhbHdheXMgaW50ZXJuYWwKPiBlcnJvciBpbnNpZGUgZGV2aWNlIHdoZW4gdGltZW91dCBv
Y2N1cnMgaW4gbnZtZSBkcml2ZXIgd2hpY2ggbWVhbnMgdGhlCj4gZm9sbG93aW5nIGNvbW1hbmQg
bWlnaHQgbm90IGJlIGNvbXBsZXRlZCBkdWUgdG8gbGFjayBvZiByZXNwb25zZSBmcm9tCj4gZGV2
aWNlLgoKVGhlIG52bWVfY29yZWR1bXAoKSBpcyAuY29yZWR1bXAoKSBjYWxsYmFjayBvZiBkZXZp
Y2VfZHJpdmVyIHdoaWNoIGlzCmNhbGxlZCB3aGVuIGFueXRoaW5nIGlzIHdyaXR0ZW4gdG8gdGhl
IC9zeXMvZGV2aWNlcy8uLi4vY29yZWR1bXAuClByb3ZpZGluZyB0aGlzIGNhbGxiYWNrIGlzIG9w
dGlvbmFsLCBidXQgc2ltcGx5IHJlbW92aW5nIHRoaXMgbWFudWFsCmRldmljZSBjb3JlZHVtcCBt
ZXRob2QgaXMgYSBiaXQgaW5jb252ZW5pZW50LgoKU28gaW5zdGVhZCBvZiBkaXJlY3RseSByZXRy
aWV2aW5nIHRoZSBzbmFwc2hvdCB3aXRoIHRoZSBzaHV0ZG93bl9sb2NrIGhlbGQKaW4gdGhpcyBj
YWxsYmFjaywgSSdsbCBjaGFuZ2UgdGhpcyB0byBqdXN0IHNjaGVkdWxpbmcgdGhlIHJlc2V0IHdv
cmssIGFuZAp0aGUgYWN0dWFsIGRldmljZSBjb3JlZHVtcCB3aWxsIGJlIHRyaWdnZXJlZCBieSB0
aGUgc2FtZSBwcm9jZWR1cmUgdGhhdCBpcwppbXBsZW1lbnRlZCBpbiB0aGUgcGF0Y2ggNy83LiAg
VGhlcmVmb3JlIHRlbGVtZXRyeSBsb2cgaXMgcmV0cmlldmVkIG9ubHkKd2hlbiB0aGUgY29udHJv
bGxlciBpcyBzdWNjZXNzZnVsbHkgcmVjb3ZlcmVkIGZyb20gdGhlIGNyYXNoLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

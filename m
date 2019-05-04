Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E052C13A9F
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 16:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxrGAAUnSahI2AC40sAfnUbonOY4l461+PPcCEMaIV4=; b=ZiSaGV5PmT8wk3
	8MCTYDGGHLI7oygvnIwyY3V26yl1Qfu+aPCxBWOMdmvfSIM9ZmDcKpWRtv9X6bGsGHnrZ3ULtJpgd
	DpjfIVHi0akDP+rCuQnjGqbVPi8EQS3w+UHic/DVPuVyDeNhS127szckBGgIUBXmt8hma2kzIb3aJ
	Yb6uw1+WzUgBuIPCOTRvfTXIRhgUTGRuNwuW6UHfTTfjtBcjaSEGts2ScFUoa4aZj7U95LDJzbEZM
	OO3s7k+1bopTkof+SrrmKHb36uoiTLwEU4osQWsGNOEYqGxQ5HpGg1WpI1xKSdg1eJzycoHgn4oj4
	5Ek6eLdRns5O+JeO2/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvme-0000Xc-R5; Sat, 04 May 2019 14:37:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvma-0000XI-KG
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 14:36:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so4168555pgi.10
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 07:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3/UhKsCGkW4s6b3CKLSpWg03k2UImtt0PnOB2N02e3E=;
 b=rVTjYVBl38TZ1yBXffS6DjJV4YNwnABswrZ+TCLs6fD5UhADPj7DgToHW0h/bXLgqQ
 kfcrY4jK1VlXfRQaGiHJhoMq+5vgoq6yba1hnjV/OfPeVpcxei6RT/lBQvgON/KaYTs2
 hL8KXipjeKNmuLjlacRIvlGCdVABXceYeVfkzdmtxXtQE8cuoTwnChoWX/iIgCGz7xUD
 j1HV9RevkOT+BKVwvqBOh3znIvMThd0uHxVy9+lc04uxvbEHmkW8WbAPluPycVNFkMye
 75XOIbTePGnaDHmO9SPEIOOuyDOWutWnUvuJ4HxRq10qa9mQuYyaNThjRCaM3CdSsSiF
 pXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3/UhKsCGkW4s6b3CKLSpWg03k2UImtt0PnOB2N02e3E=;
 b=ttQJ/ytmNARm5zdZNixg26KzR8+7pWricGoZMU8KJVb3ysJaH53GNrqdkpN9NTPDgV
 RZ18PEzt3YO+7P+dWCv0TwsqVnYhBL+PJrPnOhnBvjRbqRqoECiW8ELt69AWIrFrIEPw
 70yiatWiBjY/mSuAdWIMsk9T3oeP1UmgO9MBT8KKdpCmWwGiwipqluxWntbk+PuTO6/8
 M6P0+kAJKWEb3iomK7N4gQgXYD0z99JSFu1/HEE/pMI33ssgyKW/qgTsN/4Zi2XlEwiB
 tLIhslr+Uab53oXVZ4PGqmjnDuCn8gdu2sOtbmQJ+oPfEhR5rooxUavFVcRp5Mf1ax1l
 K+cQ==
X-Gm-Message-State: APjAAAUIc4gS0NQ8F2MvXhART+5rEuqQLC8DfiBOhAJBpUk+vpp/AAX6
 nxC9ID3r/3Bw3HFnBlI1kAxH85EhFVGXHYEeqeQ=
X-Google-Smtp-Source: APXvYqxxlP38m6Yla41WSRx+7y8oQXHn/Bax/14XGYPPPuFOSLTT/RRUqfiOPW6k63m/lqFx4aSGAHuFK0kL3yp9n+A=
X-Received: by 2002:aa7:9214:: with SMTP id 20mr19486575pfo.202.1556980615110; 
 Sat, 04 May 2019 07:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
 <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
 <20190503121232.GB30013@localhost.localdomain> <20190503122035.GA21501@lst.de>
 <CAC5umyiGbDNCtzhJioR_2EV6-6xMuZXOMThCizwJEMHi+KqxAw@mail.gmail.com>
 <61bf6f0b-4087-cfb3-1ae6-539f18b5b6ea@gmail.com>
In-Reply-To: <61bf6f0b-4087-cfb3-1ae6-539f18b5b6ea@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 4 May 2019 23:36:44 +0900
Message-ID: <CAC5umygP5cQHQk2ytpNbV5yY-tQ1E-FayMugOfg5gTmnpYtnjQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_073656_690130_67607E38 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg05pelKOWcnykgMTg6NDAgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWls
LmNvbT46Cj4KPiBIaSBBa2lub2J1LAo+Cj4gT24gNS80LzE5IDE6MjAgUE0sIEFraW5vYnUgTWl0
YSB3cm90ZToKPiA+IDIwMTnlubQ15pyIM+aXpSjph5EpIDIxOjIwIENocmlzdG9waCBIZWxsd2ln
IDxoY2hAbHN0LmRlPjoKPiA+Pgo+ID4+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDA2OjEyOjMy
QU0gLTA2MDAsIEtlaXRoIEJ1c2NoIHdyb3RlOgo+ID4+PiBDb3VsZCB5b3UgYWN0dWFsbHkgZXhw
bGFpbiBob3cgdGhlIHJlc3QgaXMgdXNlZnVsPyBJIHBlcnNvbmFsbHkgaGF2ZQo+ID4+PiBuZXZl
ciBlbmNvdW50ZXJlZCBhbiBpc3N1ZSB3aGVyZSBrbm93aW5nIHRoZXNlIHZhbHVlcyB3b3VsZCBo
YXZlIGhlbHBlZDoKPiA+Pj4gZXZlcnkgZGV2aWNlIHRpbWVvdXQgYWx3YXlzIG5lZWRlZCBkZXZp
Y2Ugc3BlY2lmaWMgaW50ZXJuYWwgZmlybXdhcmUKPiA+Pj4gbG9ncyBpbiBteSBleHBlcmllbmNl
Lgo+ID4KPiA+IEkgYWdyZWUgdGhhdCB0aGUgZGV2aWNlIHNwZWNpZmljIGludGVybmFsIGxvZ3Mg
bGlrZSB0ZWxlbWV0cnkgYXJlIHRoZSBtb3N0Cj4gPiB1c2VmdWwuICBUaGUgbWVtb3J5IGR1bXAg
b2YgY29tbWFuZCBxdWV1ZXMgYW5kIGNvbXBsZXRpb24gcXVldWVzIGlzIG5vdAo+ID4gdGhhdCBw
b3dlcmZ1bCBidXQgaGVscHMgdG8ga25vdyB3aGF0IGNvbW1hbmRzIGhhdmUgYmVlbiBzdWJtaXR0
ZWQgYmVmb3JlCj4gPiB0aGUgY29udHJvbGxlciBnb2VzIHdyb25nIChJT1csIGl0J3Mgc29tZXRp
bWVzIG5vdCBlbm91Z2ggdG8ga25vdwo+ID4gd2hpY2ggY29tbWFuZHMgYXJlIGFjdHVhbGx5IGZh
aWxlZCksIGFuZCBpdCBjYW4gYmUgcGFyc2VkIHdpdGhvdXQgdmVuZG9yCj4gPiBzcGVjaWZpYyBr
bm93bGVkZ2UuCj4KPiBJJ20gbm90IHByZXR0eSBzdXJlIEkgY2FuIHNheSB0aGF0IG1lbW9yeSBk
dW1wIG9mIHF1ZXVlcyBhcmUgdXNlbGVzcyBhdCBhbGwuCj4KPiBBcyB5b3UgbWVudGlvbmVkLCBz
b21ldGltZXMgaXQncyBub3QgZW5vdWdoIHRvIGtub3cgd2hpY2ggY29tbWFuZCBoYXMKPiBhY3R1
YWxseSBiZWVuIGZhaWxlZCBiZWNhdXNlIHdlIG1pZ2h0IHdhbnQgdG8ga25vdyB3aGF0IGhhcHBl
bmVkIGJlZm9yZSBhbmQKPiBhZnRlciB0aGUgYWN0dWFsIGZhaWx1cmUuCj4KPiBCdXQsIHRoZSBp
bmZvcm1hdGlvbiBvZiBjb21tYW5kcyBoYW5kbGVkIGZyb20gZGV2aWNlIGluc2lkZSB3b3VsZCBi
ZSBtdWNoCj4gbW9yZSB1c2VmdWwgdG8gZmlndXJlIG91dCB3aGF0IGhhcHBlbmVkIGJlY2F1c2Ug
aW4gY2FzZSBvZiBtdWx0aXBsZSBxdWV1ZXMsCj4gdGhlIGFyYml0cmF0aW9uIGFtb25nIHRoZW0g
Y291bGQgbm90IGJlIHJlcHJlc2VudGVkIGJ5IHRoaXMgbWVtb3J5IGR1bXAuCgpDb3JyZWN0LgoK
PiA+IElmIHRoZSBpc3N1ZSBpcyByZXByb2R1Y2libGUsIHRoZSBudm1lIHRyYWNlIGlzIHRoZSBt
b3N0IHBvd2VyZnVsIGZvciB0aGlzCj4gPiBraW5kIG9mIGluZm9ybWF0aW9uLiAgVGhlIG1lbW9y
eSBkdW1wIG9mIHRoZSBxdWV1ZXMgaXMgbm90IHRoYXQgcG93ZXJmdWwsCj4gPiBidXQgaXQgY2Fu
IGFsd2F5cyBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuCj4KPiBJZiB0aGUgbWVtb3J5IGR1bXAgaXMg
YSBrZXkgdG8gcmVwcm9kdWNlIHNvbWUgaXNzdWVzLCB0aGVuIGl0IHdpbGwgYmUKPiBwb3dlcmZ1
bAo+IHRvIGhhbmQgaXQgdG8gYSB2ZW5kb3IgdG8gc29sdmUgaXQuICBCdXQgSSdtIGFmcmFpZCBv
ZiBpdCBiZWNhdXNlIHRoZQo+IGR1bXAgbWlnaHQKPiBub3QgYmUgYWJsZSB0byBnaXZlIHJlbGF0
aXZlIHN1Ym1pdHRlZCB0aW1lcyBhbW9uZyB0aGUgY29tbWFuZHMgaW4gcXVldWVzLgoKSSBhZ3Jl
ZSB0aGF0IG9ubHkgdGhlIG1lbW9yeSBkdW1wIG9mIHF1ZXVlcyBkb24ndCBoZWxwIG11Y2ggdG8g
cmVwcm9kdWNlCmlzc3Vlcy4gIEhvd2V2ZXIgd2hlbiBhbmFseXppbmcgdGhlIGN1c3RvbWVyLXNp
ZGUgaXNzdWVzLCB3ZSB3b3VsZCBsaWtlIHRvCmtub3cgd2hldGhlciB1bnVzdWFsIGNvbW1hbmRz
IGhhdmUgYmVlbiBpc3N1ZWQgYmVmb3JlIGNyYXNoLCBlc3BlY2lhbGx5IG9uCmFkbWluIHF1ZXVl
LgoKPiA+PiBZZXMuICBBbHNvIG5vdCB0aGF0IE5WTWUgbm93IGhhcyB0aGUgJ2RldmljZSBpbml0
aWF0ZWQgdGVsZW1ldHJ5Jwo+ID4+IGZlYXV0dXJlLCB3aGljaCBpcyBqdXN0IGEgd2lyZWQgbmFt
ZSBmb3IgZGV2aWNlIGNvcmVkdW1wLiAgV2lyaW5nIHRoYXQKPiA+PiB1cCBzbyB0aGF0IHdlIGNh
biBlYXNpbHkgcHJvdmlkZSB0aGF0IGRhdGEgdG8gdGhlIGRldmljZSB2ZW5kb3Igd291bGQKPiA+
PiBhY3R1YWxseSBiZSBwcmV0dHkgdXNlZnVsLgo+ID4KPiA+IFRoaXMgdmVyc2lvbiBvZiBudm1l
IGNvcmVkdW1wIGNhcHR1cmVzIGNvbnRyb2xsZXIgcmVnaXN0ZXJzIGFuZCBlYWNoIHF1ZXVlLgo+
ID4gU28gYmVmb3JlIHJlc2V0dGluZyBjb250cm9sbGVyIGlzIGEgc3VpdGFibGUgdGltZSB0byBj
YXB0dXJlIHRoZXNlLgo+ID4gSWYgd2UnbGwgY2FwdHVyZSBvdGhlciBsb2cgcGFnZXMgaW4gdGhp
cyBtZWNoYW5pc20sIHRoZSBjb3JlZHVtcCBwcm9jZWR1cmUKPiA+IHdpbGwgYmUgc3BsaXR0ZWQg
aW50byB0d28gcGhhc2VzIChiZWZvcmUgcmVzZXR0aW5nIGNvbnRyb2xsZXIgYW5kIGFmdGVyCj4g
PiByZXNldHRpbmcgYXMgc29vbiBhcyBhZG1pbiBxdWV1ZSBpcyBhdmFpbGFibGUpLgo+Cj4gSSBh
Z3JlZSB3aXRoIHRoYXQgaXQgd291bGQgYmUgbmljZSBpZiB3ZSBoYXZlIGEgaW5mb3JtYXRpb24g
dGhhdCBtaWdodCBub3QKPiBiZSB0aGF0IHBvd2VyZnVsIHJhdGhlciB0aGFuIG5vdGhpbmcuCj4K
PiBCdXQsIGNvdWxkIHdlIHJlcXVlc3QgY29udHJvbGxlci1pbml0aWF0ZWQgdGVsZW1ldHJ5IGxv
ZyBwYWdlIGlmCj4gc3VwcG9ydGVkIGJ5Cj4gdGhlIGNvbnRyb2xsZXIgdG8gZ2V0IHRoZSBpbnRl
cm5hbCBpbmZvcm1hdGlvbiBhdCB0aGUgcG9pbnQgb2YgZmFpbHVyZQo+IGxpa2UgcmVzZXQ/Cj4g
SWYgdGhlIGR1bXAgaXMgZ2VuZXJhdGVkIHdpdGggdGhlIHRlbGVtZXRyeSBsb2cgcGFnZSwgSSB0
aGluayBpdCB3b3VsZAo+IGJlIGdyZWF0Cj4gdG8gYmUgYSBjbHVlIHRvIHNvbHZlIHRoZSBpc3N1
ZS4KCk9LLiAgTGV0IG1lIHRyeSBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

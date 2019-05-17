Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03A521A41
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 17:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gzuz1ks/LDC4/NHa4Db0TfuNofhtaEjZALfBmWiBA4=; b=imtruF/iNa0k5D
	4X64qQQ2TaLYjW5g3TNCRWjS3ObluqP74m4wg1vle6I9NZd66PGuzkNMraA0Cw0+RmXPR2sYqrqeJ
	MqFe3le3kbSVOSVMZpg7J+bgPEJEkxfA2JRtuSX6f/JbPuAkM8Tk32bqN2HQiyPq1UsQ9gf9tg7Ii
	L5OcuOQov1dPthCZuw94LUQefwel8cinF7tDvm8CSNKJDkUFfBurQQFZPT/1jLY7tuFld/EBT61l8
	I9EK5Ny8DwlSuQu77wMguAsUxC5CoVA6VQhpyh02sa4OTgRl+2+7qfv7tn23wKpMSPnXmdCK6x01J
	2Dm4d5ja3y2+Gkle5TeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReOX-0004Vr-Fn; Fri, 17 May 2019 15:03:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReOS-0004VT-6g
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 15:03:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id t87so3830025pfa.2
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 08:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bpa5IRDaWH9sXJl/aEabEY9DCe09+HD4zaqj2HKoED8=;
 b=qOOESBdbzJt4KK3Ne509sVUKzDyae5zngU3OXXam4J631XY5LrwePBA/4laJd2jrIV
 apNoUPg7rVFXU1RXij1pbAtEetN+gMNKRzQGQED1OcTqnJPoOOEfatnpaq4zzYaJdwug
 +63prhEIbWU2GbXA0JhX6J1zqCiCT55hfIlOyXM+OW8UvJbU9MR2gaCp2sZB0JcUGj1t
 D/OuBQKgzb7c4ku8eR0D3UDv4/ZmYkFNT3Xi4DA+4wj4L37lOR84zSJJqrZu5hNAMYzM
 p1m5FyfASdz4fAu2XsthdMuUE4cQYXYKM6gSGFjGj/y/fn+U6GELyXKGPQb+qDqvui1V
 xp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bpa5IRDaWH9sXJl/aEabEY9DCe09+HD4zaqj2HKoED8=;
 b=SDH8jSvv2XClX/HZTDbJJAOv48GhPe63riQ0T92tvtSSP4rcOsxpQmDOvfmj0Stsj3
 GmtGSN0IFPV2XXZiZ7A8ja9p8Rf3aE0b/607d4L5R4tBBAdSHBsASwjvYs+g01R5zTsc
 Cy+mQTm0nWk6y5de/0d+EpPqI9GIxdvbowyPuHY0tXks4R/AGoo5ynMsfTqFyuAYAXwA
 sJHe6kt4/O9AVIFSBuE/f5trd7D6gFO5CKvjC2gn5u28Se/smjq68uXxZQEr/eWudG2g
 Hs4hQ9AS7zSLRSGMhwExTonw7qohQyPVrr1cD75grtx4yKusMJeVJjPvhW/0VDyxcJLf
 bEDg==
X-Gm-Message-State: APjAAAVSrMPpTrbEm5yvJppC3GHlOPnWZfb1KOsKNujCDyQACnQGwszQ
 yOJd9tbMefW57ybKtiPDdCskByDRxEL2XJFjtwdmQgda
X-Google-Smtp-Source: APXvYqxbmoC59Lg6EZ84spXFCvkj8Jqc2HY+TahDcuSMkoc+sFn/JGYToPgSG+m/Ka+WutC5oobDuf0/a+MtHVApHtg=
X-Received: by 2002:aa7:9e51:: with SMTP id z17mr60518630pfq.212.1558105409847; 
 Fri, 17 May 2019 08:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <dcb16af2-acb9-eff1-a2f9-ff8154381723@intel.com>
In-Reply-To: <dcb16af2-acb9-eff1-a2f9-ff8154381723@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 18 May 2019 00:03:18 +0900
Message-ID: <CAC5umyin1HBpvFRv4RsvWmccysimhcHbP7bs12EcZ5-KZ4PwgA@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_080332_246388_846B8C25 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxN+aXpSjph5EpIDY6MjUgSGVpdGtlLCBLZW5uZXRoIDxrZW5uZXRoLmhlaXRr
ZUBpbnRlbC5jb20+Ogo+Cj4KPgo+IE9uIDUvMTUvMjAxOSA5OjE3IEFNLCBBa2lub2J1IE1pdGEg
d3JvdGU6Cj4gPiBUaGUgTlZNZSBjb250cm9sbGVyIHJlcG9ydHMgdXAgdG8gbmluZSB0ZW1wZXJh
dHVyZSB2YWx1ZXMgaW4gdGhlIFNNQVJUIC8KPiA+IEhlYWx0aCBsb2cgcGFnZSAodGhlIGNvbXBv
c2l0ZSB0ZW1wZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEgdGhyb3VnaAo+ID4gdGVt
cGVyYXR1cmUgc2Vuc29yIDgpLgo+ID4gVGhlIHRlbXBlcmF0dXJlIHRocmVzaG9sZCBmZWF0dXJl
IChGZWF0dXJlIElkZW50aWZpZXIgMDRoKSBjb25maWd1cmVzIHRoZQo+ID4gYXN5bmNocm9ub3Vz
IGV2ZW50IHJlcXVlc3QgY29tbWFuZCB0byBjb21wbGV0ZSB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBp
cwo+ID4gY3Jvc3NlZCBpdHMgY29ycmVzcG9pbmRpbmcgdGVtcGVyYXR1cmUgdGhyZXNob2xkLgo+
ID4KPiA+IFRoaXMgYWRkcyBpbmZyYXN0cnVjdHVyZSB0byBwcm92aWRlIHRoZXNlIHRlbXBlcmF0
dXJlcyBhbmQgdGhyZXNob2xkcyB2aWEKPiA+IHRoZXJtYWwgem9uZSBkZXZpY2VzLgo+ID4KPiA+
IFRoZSBudm1lX3RoZXJtYWxfem9uZXNfcmVnaXN0ZXIoKSBjcmVhdGVzIHVwIHRvIG5pbmUgdGhl
cm1hbCB6b25lIGRldmljZXMKPiA+IGZvciB2YWxpZCB0ZW1wZXJhdHVyZSBzZW5zb3JzIGluY2x1
ZGluZyBjb21wb3NpdGUgdGVtcGVyYXR1cmUuCj4gPgo+ID4gL3N5cy9jbGFzcy90aGVybWFsL3Ro
ZXJtYWxfem9uZVswLSpdOgo+ID4gICAgICB8LS0tdGVtcDogVGVtcGVyYXR1cmUKPiA+ICAgICAg
fC0tLXRyaXBfcG9pbnRfMF90ZW1wOiBPdmVyIHRlbXBlcmF0dXJlIHRocmVzaG9sZAo+ID4gICAg
ICB8LS0tdHJpcF9wb2ludF8wX2h5c3Q6IFVuZGVyIHRlbXBlcmF0dXJlIHRocmVzaG9sZAo+ID4K
PiA+IFRoZSB0aGVybWFsX3pvbmVbMC0qXSBjb250YWlucyBhIHN5bWxpbmsgdG8gdGhlIGNvcnJl
c3BvaW5kaW5nIG52bWUgZGV2aWNlLgo+ID4gT24gdGhlIG90aGVyIGhhbmQsIHRoZSBmb2xsb3dp
bmcgc3ltbGlua3MgdG8gdGhlIHRoZXJtYWwgem9uZSBkZXZpY2VzIGFyZQo+ID4gY3JlYXRlZCBp
biB0aGUgbnZtZSBkZXZpY2Ugc3lzZnMgZGlyZWN0b3J5Lgo+ID4KPiA+IC0gbnZtZV90ZW1wMDog
Q29tcG9zaXRlIHRlbXBlcmF0dXJlCj4gPiAtIG52bWVfdGVtcDE6IFRlbXBlcmF0dXJlIHNlbnNv
ciAxCj4gPiAuLi4KPiA+IC0gbnZtZV90ZW1wODogVGVtcGVyYXR1cmUgc2Vuc29yIDgKPiA+Cj4g
PiBUaGUgbnZtZV90aGVybWFsX3pvbmVzX3VucmVnaXN0ZXIoKSByZW1vdmVzIHRoZSByZWdpc3Rl
cmVkIHRoZXJtYWwgem9uZQo+ID4gZGV2aWNlcyBhbmQgc3ltbGlua3MuCj4gPgo+ID4gQ2M6IFpo
YW5nIFJ1aSA8cnVpLnpoYW5nQGludGVsLmNvbT4KPiA+IENjOiBFZHVhcmRvIFZhbGVudGluIDxl
ZHViZXp2YWxAZ21haWwuY29tPgo+ID4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fu
b0BsaW5hcm8ub3JnPgo+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNjaEBpbnRlbC5jb20+
Cj4gPiBDYzogSmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+ID4gQ2M6IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPgo+ID4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgMzY4ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiAgIGRyaXZlcnMvbnZtZS9o
b3N0L252bWUuaCB8ICAyNCArKysrCj4gPiAgIGluY2x1ZGUvbGludXgvbnZtZS5oICAgICB8ICAg
NCArCj4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgMzkyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBiL2RyaXZl
cnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gaW5kZXggMTcyNTUxYi4uYTkxNWM2YiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gKysrIGIvZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jCj4gPiArCj4gPiArc3RhdGljIGludCBudm1lX3R6X3R5cGVfdG9fc2Vuc29yKGNv
bnN0IGNoYXIgKnR5cGUpCj4gPiArewo+ID4gKyAgICAgaW50IHNlbnNvcjsKPiA+ICsKPiA+ICsg
ICAgIGlmIChzc2NhbmYodHlwZSwgIm52bWVfdGVtcCVkIiwgJnNlbnNvcikgIT0gMSkKPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArCj4gPiArICAgICBpZiAoc2Vuc29yIDwg
MCB8fCBzZW5zb3IgPiA4KQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICsK
PiA+ICsgICAgIHJldHVybiBzZW5zb3I7Cj4gPiArfQo+Cj4gSSBrbm93IHRoaXMgaGFzIGJlZW4g
ZGlzY3Vzc2VkIGJ1dCBpdCBib3RoZXJzIG1lIHRoYXQgdGhpcyBjYW4gcmV0dXJuIGEKPiBuZWdh
dGl2ZSAoZXJyb3IgY29kZSkgYnV0IHRoZW4gdGhlIGNhbGxlcnMgb2YgdGhpcyBmdW5jdGlvbiBk
b24ndCBjaGVjawo+IGZvciBlcnJvcnMuIElmIHlvdSBjYW4gcHJldmVudCB0aGUgZXJyb3IgY29u
ZGl0aW9ucywgY2FuICdzZW5zb3InIGJlCj4gdHJlYXRlZCBhcyB1bnNpZ25lZD8KClNvdW5kcyBn
b29kLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

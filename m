Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F554E9B
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 14:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QvyYNErbg5AXMHvCVlPFAAicCJwxnasxHr2K3ARO7M=; b=bDCFH70T5glwVX
	T2KOIeayqYugTBVYakV7nHTJNm7oeNgnzt/DEWIZop+eS5b3EDdzLkB1o/gko2O9Rxvd98Eqb3YPs
	JhvVJtzCfqzxCaYHunTglTKJ4ltuj7OikLN0YwFlLOeFPYWmtrnh/d/sF2U67hANFvGHIExQAydqu
	rjiwioKQRMtGR2XcjpHwhZkpaEC0Kc3a/muL9JIpCGklCmvh4CD2iOxu4XMdu7OpQUpJL3l2bmD8d
	lB0HzlnyCmXzfmxP0yCI9NDIPIKLuOLCPRdM0wp0tgyc0YeGhBl8Kx4ecKWVh5kdLUHCR4hC4lWCn
	y/bU6HrGF9ZkmF3tA7lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkMj-0003lr-Uh; Tue, 25 Jun 2019 12:16:02 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkIQ-0006IP-Q8
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 12:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1561464692;
 s=strato-dkim-0002; d=rohdewald.de;
 h=References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=8F3bAdiFbuQPrUZ4E7t1l5jFbQA+8KnOVs0ubsfP0d4=;
 b=gERfzrwHK2kN5/8njjp4wRT00s5dKRKHyaxlMaoWX3K0FvObR86ACAFMpZz56i7flr
 qeVs50dM0nlSAqRY71sJJqhYYOnMS4p3+Z3DKrBDKi7CjgsNckYhy3viXRvYkXe79vXE
 4xgepXucOr6heEoYAzeB/dWVlMN9h/oyhSuHwGpi6xG6x0qByFeccy7cVy12AhFHlPBv
 FsC+bqcxxVEzAiQDacq9Qd1VHo8qo3FlFSc64MxMB+J2n15/dJNxFSgu1UPppuHXUkdU
 8a/Svp280VPeFmZCk5S8zDlyX1prUJZrt5xV3QWpv8JiHGMs0zBeG7MccO5ciHmklnMu
 FtgA==
X-RZG-AUTH: ":O2MIc0epdfgAjoV+frHI3UhxNCLBO5P+YT7khnlEaB0/xTIC/6v6hbEcd4t3zIbpGQPXJPtfE+RucQ=="
X-RZG-CLASS-ID: mo00
Received: from skull.home by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id K00eaav5PCB8UHq
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 25 Jun 2019 14:11:08 +0200 (CEST)
Message-ID: <336692273232ee2441e30e7e2a1c542201854010.camel@rohdewald.de>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
From: Wolfgang Rohdewald <wolfgang@rohdewald.de>
To: Christoph Hellwig <hch@lst.de>, Ming Lei <ming.lei@redhat.com>
Date: Tue, 25 Jun 2019 14:11:04 +0200
In-Reply-To: <20190625095013.GA1353@lst.de>
References: <92778741dff3723fc94cd75df3043adc9c8bf21a.camel@rohdewald.de>
 <20190625091704.GA30606@ming.t460p>
 <CAOSXXT5PgPJqouD0G7qJjar5tmy-9z+wWdFMqpD2K1=5vQZ+HA@mail.gmail.com>
 <20190625094532.GA11214@ming.t460p> <20190625095013.GA1353@lst.de>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_051135_602051_392DF72D 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRGksIDIwMTktMDYtMjUgYXQgMTE6NTAgKzAyMDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3Rl
Ogo+IE9uIFR1ZSwgSnVuIDI1LCAyMDE5IGF0IDA1OjQ1OjM1UE0gKzA4MDAsIE1pbmcgTGVpIHdy
b3RlOgo+ID4gT24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDY6Mzg6NThQTSArMDkwMCwgS2VpdGgg
QnVzY2ggd3JvdGU6Cj4gPiA+IFRoZSBmaXJzdCB0d28gc2cgZWxlbWVudHMgc2hvdWxkIGhhdmUg
YmVlbiBtZXJnZWQgdG8gb25lIGFuZCB3b3VsZCBoYXZlCj4gPiA+IGF2b2lkZWQgdGhlIGVycm9y
LiBUaGUgYnVnIGlzIGtlcm5lbCwgbm90aGluZyB0byBkbyB3aXRoIHRoZSBkZXZpY2UuCj4gPiAK
PiA+IFRoZSBkZWZhdWx0IG1heCBzZWdtZW50IHNpemUgaXMgNjRrLCBzbyB0aGUgZmlyc3QgdHdv
IGNhbid0IGJlIG1lcmdlZC4KPiA+IAo+ID4gQW5kIHRoZSAxc3Qgc2cgc2hvdWxkIGhhdmUgYmVl
biBkaXNwYXRjaGVkIGFzIHNpbmdsZSByZXF1ZXN0Lgo+IAo+IFdlbGwsIHRoYXQgaXMgZXhhY3Rs
eSB3aGF0IEkgZml4ZWQgd2l0aCBteSBwYXRjaGVzIHRoYXQgd2VudCBpbnRvCj4gNS4yLiAgTG9v
a3MgbGlrZSB3ZSBuZWVkIHRvIGJhY2twb3J0IHRob3NlIGFzIHdlbGwuCj4gCj4gV29sZmdhbmcs
IGNhbiB5b3UgdHJ5IHRoZSBsYXRlc3QgNS4yLXJjIGdpdCB0cmVlPwoKNS4yLjAtcmM2IHdvcmtz
IGZpbmUuCgpEbyB5b3Ugc3RpbGwgd2FudCBtZSB0byBhcHBseSBudm1lX2R1bXBfcnEoKSB0byA1
LjEgZm9yIGZpbmRpbmcgdGhlIHJvb3QgY2F1c2U/CgotLSAKbWl0IGZyZXVuZGxpY2hlbiBHcsO8
c3NlbgoKV29sZmdhbmcgUm9oZGV3YWxkCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=

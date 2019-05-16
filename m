Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4DA20F98
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 22:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJfaD6q4NC0GvbSaNv2MotNtIYFf3QMjbsAlkjiTnmM=; b=BvE8BX/2MfLTEY
	F678KLB8NTPZLgAnSN/7neOeVNmubO6F3Xp54wjjGe3Ej+0g/Qu3eZ6GfXZaJR6p2SwozEoyMWCpW
	h7RiUSBX4OONamSB9HbxPtipDxV00Huyi4w7I2uk5ea2/9Q5qbvecEmThP1bXA93KrpmDDSfT8jad
	sHC/jyw6ZW8uCb+i7KBEZiGtQi7SFVdT+l8vSQQ1DEfop4XH5AkYkmS0sYQlw7mFYV6Ttcm2n0GSS
	4HuFAckWcHKS9t/qBHGyC5/z1Dv11CEf1En2br1BJbAJyps0cvlhnSBz0EviLGqGCsrD5ivUSxFu8
	e41eMMEJ8Xsji6wOw5ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMx2-0000ki-T6; Thu, 16 May 2019 20:26:04 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMwx-0000jl-MC
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 20:26:01 +0000
Received: by mail-ot1-f50.google.com with SMTP id i8so4651685oth.10
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 13:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4m+JLhnXy8xUlhQ/ekYkPwMP/HOBGnP6vyXp0PiWhrc=;
 b=chJXco2w2rTdvb6R4849j3KFsC6UqVuLhdEFLPkEN1F/f5oEN+EBFBNvg4up00Jn2X
 UGwz9dRDde27bagipbZ7JW8HnGllRUodGXvCmrUFBUNEGUP3WWT+SKC4odyOQLGqgQJ7
 qOg3046fCuz6Ks49wdHvlIhuONxVSHo/0Ntizohe+l++Q0n+TZ0nWgRNLaF4zeWDlTn/
 D2q0Nzvm/x/my8XnY/RH+0mmN8yudDUe/TrPVuoO0CBTvT+6FRv8JnF8voFl+OFCK17G
 PynDElNKKK3WiXVgG2P+0KsMa0KoKGHZb0C9/z9gDmRHHeBMTRBC6KC17qLDHOJzxv8Y
 gdow==
X-Gm-Message-State: APjAAAVcsNyvSNV//cdSns+X0x5R0KIQnTkNRQeFx4mmAeiDR06mqYy3
 UaGjOLHAqHv3N5Vz9YziFQaWHiemMyeBq+G8wMo=
X-Google-Smtp-Source: APXvYqyUCvd/su2eRm2zSBw3VgretQx/XLWfJvEzB72lhVqpeYRfnc2w+oH92XUyZFlZKHhpUTbCPMl06SzFI/7wvSw=
X-Received: by 2002:a9d:7dd5:: with SMTP id k21mr5733995otn.167.1558038358618; 
 Thu, 16 May 2019 13:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
In-Reply-To: <20190516193822.GA23853@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 16 May 2019 22:25:47 +0200
Message-ID: <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_132559_721141_044BE0FE 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgOTo0MyBQTSBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDY6MzM6NTZQTSArMDAw
MCwgTWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20gd3JvdGU6Cj4gPiA+ID4+IFRoZW4sIHlvdSBj
YW4gcG9wdWxhdGUgbnZtZV9kZXZfcG1fb3BzIGFzIGZvbGxvd3M6Cj4gPiA+ID4+Cj4gPiA+ID4+
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyA9IHsKPiA+ID4gPj4gICAgIC5zdXNwZW5k
ID0gbnZtZV9zdXNwZW5kLAo+ID4gPiA+PiAgICAgLnJlc3VtZSA9IG52bWVfcmVzdW1lLAo+ID4g
PiA+PiAgICAgLmZyZWV6ZSA9IG52bWVfc2ltcGxlX3N1c3BlbmQsCj4gPiA+ID4+ICAgICAudGhh
dyA9IG52bWVfc2ltcGxlX3Jlc3VtZSwKPiA+ID4gPj4gICAgIC5wb3dlcm9mZiA9IG52bWVfc2lt
cGxlX3N1c3BlbmQsCj4gPiA+ID4+ICAgICAucmVzdG9yZSA9IG52bWVfc2ltcGxlX3Jlc3VtZSwK
PiA+ID4gPj4gfTsKPiA+ID4gPj4KPiA+ID4gPj4gYW5kIGl0IHNob3VsZCBhbGwgd29yay4KPiA+
ID4gPgo+ID4gPiA+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXJzLCBJJ2xsIGdpdmUgdGhhdCBpZGVh
IGEgc2hvdC4KPiA+ID4KPiA+ID4gVGhhbmtzIGZvciB5b3VyIHdvcmssIEnigJl2ZSB0ZXN0ZWQg
eW91ciBwYXRjaCBzZXJpZXMgb24gdG9wIG9mIG52bWUtNS4yIGJyYW5jaC4gSXQKPiA+ID4gd29y
a3Mgd2VsbCBvbmNlIEkgYXBwbHkgZmxhZyBQQ0lfREVWX0ZMQUdTX05PX0QzLgo+ID4gPiBBZnRl
ciBzb21lIGRpZ2dpbmcgSSB0aGluayBpdOKAmXMgYW5vdGhlciBidWcgdGhvdWdoOgo+Cj4gLi4u
Lgo+Cj4gPiA+IHBjaV9wbV9zdXNwZW5kX25vaXJxKCkgZ2V0cyBjYWxsZWQgdHdpY2U6Cj4gPiA+
IFsgICA3MC4zNTg3NzldIG52bWUgMDAwMDowMzowMC4wOiBQQ0kgUE06IFN1c3BlbmQgcG93ZXIg
c3RhdGU6IEQwCj4gPiA+IFsgICA3MC40OTY5MDhdIG52bWUgMDAwMDowMzowMC4wOiBQQ0kgUE06
IFN1c3BlbmQgcG93ZXIgc3RhdGU6IEQzaG90Cj4gPiA+IFNvIGl04oCZcyBzdGlsbCBiZWluZyBw
dXQgdG8gRDMuCj4gPiA+Cj4gPiA+IEnigJlsbCBjaGVjayB3aHkgdGhpcyBidWcgaGFwcGVucy4K
PiA+ID4KPiA+ID4gS2FpLUhlbmcKPiA+Cj4gPiBDYW4geW91IHBsZWFzZSB0cnkgdGhpcyBwYXRj
aDoKPiA+IGh0dHBzOi8vY2hyb21pdW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJvbWl1
bW9zL3RoaXJkX3BhcnR5L2tlcm5lbC8rLzE2MTI0MzcKPiA+Cj4gPiBJdCBoYXNuJ3QgYmVlbiBz
dWJtaXR0ZWQgdXBzdHJlYW0geWV0LCBidXQgc2hvdWxkIHNvb24gYW5kIEkgdGhpbmsgaXQgd2ls
bCBmaXggdGhpcyBiZWhhdmlvci4KCkkgd29uZGVyIGhvdy4KCj4KPiBJZiB3ZSdyZSBnb2luZyB0
byByZXBsYWNlIG91ciBTSU1QTEVfREVWX1BNX09QUyBhcyBSYWZhZWwgc3VnZ2VzdHMsCj4gbWln
aHQgYXMgd2VsbCBhZGQgYSAuc3VzcGVuZF9ub2lycSBjYWxsYmFjay4gV2UgY2FuIGp1c3Qgc2F2
ZSB0aGUKPiBzdGF0ZSBhZ2FpbiB0byB3b3JrIGFyb3VuZCB0aGlzIHRvby4KClJlbGF4LCBwcmV0
dHkgcGxlYXNlLiAgU2F2aW5nIHRoZSBzdGF0ZSBhZ2FpbiBzaG91bGRuJ3QgYmUgbmVjZXNzYXJ5
LgoKTGV0J3MgZmlyc3QgdW5kZXJzdGFuZCB3aGF0J3MgZ29pbmcgb24uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

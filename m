Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194A417D95
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 17:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YmHa/O9X2EifT5C9y4y2neG7xNqXtTdqX7dML35eh4=; b=SY2I3VPyojDx4l
	WjSvv7aS4Eie+suKsjDNOp6te94xD75aCojLkuwwNwg9msIZf//+/3TIg/eB0WDoFk2PS/HHOb7Ta
	FthPLeEINO+93RwhmrMPsmeTbre941HXayyStKyrCCoWfDm5b7epE1kKB3Nk7ZLhbPHG9ui3Ktli5
	eWrtWim1m5o6uTLEuijCaW5/NCbDFBJ6/URWYpuYRYGF5VAC3KQRoAzWUpVAj/aQzmwHS5xTd6JAT
	gtUgoywaQsnobBRXo8sq2L6/dd9rShgOVl0oVvmclF69iv7mQI0SSM5mu94qfu+5ji6MOi81AcBCV
	lAbqmbcMeNIhK3PTW3uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOuI-000480-Jc; Wed, 08 May 2019 15:54:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOuE-00047f-2j
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 15:54:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so10125022pls.8
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 08:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UO6VSipa/vxLnsHx2jHyOWY71noSHX2RiG7VVCaq85k=;
 b=Hjj/96MQ0SFne889FlFXkcvcTJkOxSdQVL1Blf4CleWMC2Zv2xNO+eofyYTRunO6k8
 ykHVDgQVKXJV7YYQ0vL0ecq0xDMvDCCZXTLM2/5Oem0Rft51zSEtLTl/QwTfM32af0UD
 xCweiercawjfhsslE1qu4Ib5UtxxuNe7IJoBX6HuEu/bSnx9dczZDv8TIncfl1mE1mQE
 IuZ6Qq9mVTFUrKBCCO7A4iWGjDMdSWQP8RntBGBQsdHLDGJDJBp90bO29OHM6iCPDYlg
 AZEB2tFUVI/NTDHEFNmKzQnJZc7SmABaQPPU6mvXAkaFBZHOYJuUJTju5OeQrz7sSphM
 BVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UO6VSipa/vxLnsHx2jHyOWY71noSHX2RiG7VVCaq85k=;
 b=gcedrYrUthjRt+7LrFpfgewc7fvXDz3edHNslotmIReCMRfqx6qIWXo8Rex45inP1D
 6XzQidAGOvpqR2f6SODqP5bQjDeEvOBuJp4f+IwK+l4POwm5ihPCbtnf46ZKkldUX+kN
 Z8StDvsX4UiWtMRHa2/6qfKhd5AazbyivKpl3U3ciQKMXIghdn9jAI786JzDUnHG8FLS
 VaUemdTKhWUVTUxoe88P6Qsj0eHLZbtMJvX/QKN8Wi140p8wdEEFi6r3UhH9A5P7Gplz
 hHz+7Lgkf55rf1f1QKn9y6TMkVV2S++FvTERQV5kKda/dsrvkiUGv1mcr1yTGUSLkDlU
 CKOA==
X-Gm-Message-State: APjAAAWq0FGSP5MthCv8zyoei6rn7FdAiq1M+q3wjjxNWopTJ7IkekzS
 J3DihWPK1usGipQkhKP/aNQOrkf50aFXjNV7Zks=
X-Google-Smtp-Source: APXvYqzDDPjGn5SpAL9Wxd+yu1BRD8IWih0UstZYuhIOzBj2+3kbwyXrH23GiiqkLUklVwk7kOo5YieYktVP9zWP8tU=
X-Received: by 2002:a17:902:7047:: with SMTP id
 h7mr49072884plt.177.1557330893382; 
 Wed, 08 May 2019 08:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
 <67f0d1ab-2edb-24ea-a4b5-62c90c1ef0fb@intel.com>
In-Reply-To: <67f0d1ab-2edb-24ea-a4b5-62c90c1ef0fb@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 9 May 2019 00:54:42 +0900
Message-ID: <CAC5umyi032svV31SmvcR3+MgQarvhg2x9mNrYH1_2svDBzE51g@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] nvme.h: add telemetry log page definisions
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_085454_119758_083F3E7A 
X-CRM114-Status: GOOD (  17.32  )
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
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg45pelKOawtCkgMjo1MyBIZWl0a2UsIEtlbm5ldGggPGtlbm5ldGguaGVpdGtl
QGludGVsLmNvbT46Cj4KPgo+Cj4gT24gNS83LzIwMTkgMTA6NTggQU0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+IENvcHkgdGVsZW1ldHJ5IGxvZyBwYWdlIGRlZmluaXNpb25zIGZyb20gbnZtZS1j
bGkuCj4gPgo+ID4gQ2M6IEpvaGFubmVzIEJlcmcgPGpvaGFubmVzQHNpcHNvbHV0aW9ucy5uZXQ+
Cj4gPiBDYzogS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVsLmNvbT4KPiA+IENjOiBKZW5z
IEF4Ym9lIDxheGJvZUBmYi5jb20+Cj4gPiBDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3Qu
ZGU+Cj4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiA+IENjOiBNaW53
b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQWtpbm9i
dSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAqIHYyCj4gPiAtIE5l
dyBwYXRjaCBpbiB0aGlzIHZlcnNpb24uCj4gPgo+ID4gICBpbmNsdWRlL2xpbnV4L252bWUuaCB8
IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNl
cnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbnZtZS5oIGIvaW5j
bHVkZS9saW51eC9udm1lLmgKPiA+IGluZGV4IGM0MDcyMGMuLjUyMTdmZTQgMTAwNjQ0Cj4gPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L252bWUuaAo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9udm1lLmgK
PiA+IEBAIC0zOTYsNiArMzk2LDI4IEBAIGVudW0gewo+ID4gICAgICAgTlZNRV9OSURUX1VVSUQg
ICAgICAgICAgPSAweDAzLAo+ID4gICB9Owo+ID4KPiA+ICsvKiBEZXJpdmVkIGZyb20gMS4zYSBG
aWd1cmUgMTAxOiBHZXQgTG9nIFBhZ2Ug4oCTIFRlbGVtZXRyeSBIb3N0Cj4gPiArICogLUluaXRp
YXRlZCBMb2cgKExvZyBJZGVudGlmaWVyIDA3aCkKPiA+ICsgKi8KPgo+IElzIHRoaXMgSG9zdCBJ
bml0aWF0ZWQgb3IgQ29udHJvbGxlciBJbml0aWF0ZWQ/IFRoZSBjb21tZW50IHNheXMgaG9zdAo+
IGluaXRpYXRlZCBidXQgZXZlcnl0aGluZyBlbHNlIHNlZW1zIHRvIGluZGljYXRlZCBjb250cm9s
bGVyIGluaXRpYXRlZC4KCkJvdGggdGVsZW1ldHJ5IGhvc3QgaW5pdGlhdGVkIGFuZCBjb250cm9s
bGVyIGluaXRpYXRlZCBsb2cgaGVhZGVycyBoYXZlCnRoZSBzYW1lIHN0cnVjdHVyZS4gIElmIHRo
aXMgY29tbWVudCBpcyBjb25mdXNpbmcsIGl0IGlzIGFsc28gY29uc2lkZXJlZAp0byBiZSByZW1v
dmVkLgoKPiBJcyBjb250cm9sbGVyIGluaXRpYXRlZCBldmVuIHRoZSBjb3JyZWN0IGNob2ljZSBi
ZWNhdXNlIHRoZSBjb250cm9sbGVyCj4gd291bGQgaGF2ZSBzZW50IGFuIEFFUiB0byBpbmRpY2F0
ZSB0aGF0IHRoZSBob3N0IHNob3VsZCBwdWxsIHRoZQo+IHRlbGVtZXRyeSBkYXRhLgoKSXQgc2Vl
bXMgdXNlZnVsIHRvIHJldHJpZXZlIHRlbGVtZXRyeSBsb2cgY29udGludWFsbHkgd2l0aCB0aGUg
YWlkIG9mCnVzZXIgc3BhY2UgdG9vbCByZWFjdGluZyBhbiBBc3luY2hyb25vdXMgRXZlbnQuCgpT
aW1pbGFybHksIGl0IGNvdWxkIGJlIHVzZWZ1bCB0byByZXRyaWV2ZSB0ZWxlbWV0cnkgbG9nIGFz
IHNvb24gYXMgdGhlCmRldmljZSBpcyBzdWNjZXNzZnVsbHkgcmVjb3ZlcmVkIGZyb20gdGhlIGNy
YXNoLiAgKEFsdGhvdWdoIEkgc3RpbGwgZG8Kbm90IGZpbmQgdGhlIGRldmljZSB0aGF0IGhhcyBU
ZWxlbWV0cnkgQ29udHJvbGxlci1Jbml0aWF0ZWQgRGF0YSBBdmFpbGFibGUKZmllbGQgaXMgc2V0
IHRvIDFoLikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK

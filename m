Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B671F209D7
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDNqbxBnm0UKYVC5bzvcYSb1ikLCclzSN5O/MEeckKE=; b=VS2gL1pKcVm2Dw
	9CyrzvmwJTwlxBzWCCLhes3C+EYms3mriU/2jVafw00TtSea3PE30wbFTCojXdqEKobJyGzUkk/V5
	Q51qQP4hUexGf2lucXVzA27ME9cWjz9uqsZhkyTk4uIoIg1lohnaTMJduW3To1dVjW4U6ZLNMTaHG
	XCNuUVHYOzoGIvuodgcIOHnjFyUdeapChAsueac94DZQAFrWODBE+kc8Gwcm8bQmUslnbIplPG/CT
	QZG4HfhfhKpcbKhR20bXF6Q+gqbD2UhLaNBreWOpfkeczdMv1rh+NNTykDUjGnMBggtU1l+8SabAZ
	uKfEecYyCiWimIT3/gtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHUT-0005Qs-6h; Thu, 16 May 2019 14:36:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHUN-0005QU-BP
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:36:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so1674053pgb.3
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 07:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z6qc+xOm2mSY89YuD64kBnRl0lHCdqO6siMkABQG/tQ=;
 b=kvfajCTwE168YKYYVnpejF49F7QgA/sI8IkR1mGExszOMXoDHkiw2gfW1k7K7emDqT
 gW225qmmYOHVcXMEzXNwTqG8V/sehXeCqsDCKbbh/lSCH+xvw+vdKsL3nnta61rB7Gsl
 TZGJTzkzgNAEHI4E92y8BEKQUt1ft30R6GgYUERKeMnpW9QwXHSY5AzpNSxxlhOjJCOx
 CBTFJ6rIEx07fpX8L3FdoIezgAkfklL0PYjcLTpHBcaT2AkglhyJkfwktl+gU+MfOph8
 RlUohURVcdOPlrTxF7wUVZV+dmbPDV7egtLFQgr2nwW3yb7Egi8wNMi9mdln0hdG5mJ2
 nnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z6qc+xOm2mSY89YuD64kBnRl0lHCdqO6siMkABQG/tQ=;
 b=VUfMQz46w87NmiqPtXEBeCntK8Okuro/GomXAnBnlVmG7uHQ+s4WfZrLZMRtc3Uchq
 jVh7hcT1cpD68S9VfH2icAGuGtI20ym9cSABQ3fVbvzAdXNkF1xSNqFCvTAvSzc7jOJB
 uJm2vAiGwFqQIFaQ9HY6txv7L2YRbV0LJYEuw1BK8Z2HZGtgCGAKDJ9+lt96V+CWXAi8
 EE0p0csa52PVsQf5b6XTdPFBmKe5r126yiy/lmY35IONJIBml0BRRg8g0s7Fr+sV7OUL
 rkKsISkmonPM9z7VWnn42+TzJeFJjbRQp4OfUdeP2Gn9KhBV57FK1inqBXwBBZB4f5ZD
 HV0A==
X-Gm-Message-State: APjAAAWODwbv94jMkf5/2rmEx0dWJ49hGthZkmrjY/8R+FkzgTrYnWYX
 wlY1S/wibumxkEeIGHdbFVDgErQJMg6aqyuFgZM6XuTr
X-Google-Smtp-Source: APXvYqzUd0FpORBfMUBCtYZD0eBrsi/cm9uTYfatp9Rvw0K4bfMa/R3P/Ge8HZtbKCnlO+nXa6XPepUPHKgD/uQj6gk=
X-Received: by 2002:a62:86c4:: with SMTP id x187mr53672089pfd.34.1558017366120; 
 Thu, 16 May 2019 07:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 16 May 2019 23:35:55 +0900
Message-ID: <CAC5umygg7BPhyoKsBDPAoafXHmJnqE1gEarafJDRCrdUnw-3aA@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073607_419201_1F4E8112 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jens Axboe <axboe@fb.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNuaXpSjmnKgpIDA6MTcgQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21h
aWwuY29tPjoKPgo+IFRoZSBOVk1lIGNvbnRyb2xsZXIgcmVwb3J0cyB1cCB0byBuaW5lIHRlbXBl
cmF0dXJlIHZhbHVlcyBpbiB0aGUgU01BUlQgLwo+IEhlYWx0aCBsb2cgcGFnZSAodGhlIGNvbXBv
c2l0ZSB0ZW1wZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEgdGhyb3VnaAo+IHRlbXBl
cmF0dXJlIHNlbnNvciA4KS4KPiBUaGUgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGZlYXR1cmUgKEZl
YXR1cmUgSWRlbnRpZmllciAwNGgpIGNvbmZpZ3VyZXMgdGhlCj4gYXN5bmNocm9ub3VzIGV2ZW50
IHJlcXVlc3QgY29tbWFuZCB0byBjb21wbGV0ZSB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBpcwo+IGNy
b3NzZWQgaXRzIGNvcnJlc3BvaW5kaW5nIHRlbXBlcmF0dXJlIHRocmVzaG9sZC4KPgo+IFRoaXMg
YWRkcyBpbmZyYXN0cnVjdHVyZSB0byBwcm92aWRlIHRoZXNlIHRlbXBlcmF0dXJlcyBhbmQgdGhy
ZXNob2xkcyB2aWEKPiB0aGVybWFsIHpvbmUgZGV2aWNlcy4KPgo+IFRoZSBudm1lX3RoZXJtYWxf
em9uZXNfcmVnaXN0ZXIoKSBjcmVhdGVzIHVwIHRvIG5pbmUgdGhlcm1hbCB6b25lIGRldmljZXMK
PiBmb3IgdmFsaWQgdGVtcGVyYXR1cmUgc2Vuc29ycyBpbmNsdWRpbmcgY29tcG9zaXRlIHRlbXBl
cmF0dXJlLgo+Cj4gL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZVswLSpdOgo+ICAgICB8
LS0tdGVtcDogVGVtcGVyYXR1cmUKPiAgICAgfC0tLXRyaXBfcG9pbnRfMF90ZW1wOiBPdmVyIHRl
bXBlcmF0dXJlIHRocmVzaG9sZAo+ICAgICB8LS0tdHJpcF9wb2ludF8wX2h5c3Q6IFVuZGVyIHRl
bXBlcmF0dXJlIHRocmVzaG9sZAoKSSBtaXN1bmRlcnN0b29kIHRoZSB1bmRlciB0ZW1wZXJhdHVy
ZSB0aHJlc2hvbGQuICBJdCBpcyBub3QgaHlzdGVyZXNpcwpmb3IgdGhlIHVwcGVyIHRlbXBlcmF0
dXJlIHRocmVzaG9sZC4gIEl0IGlzIHVzZWQgdG8gbm90aWZ5IGNvbGQgdGVtcGVyYXR1cmUKdGhh
dCB0aGUgZGV2aWNlIG1heSBub3QgY29ycmVjdGx5IHdvcmsuCgpTbyB3ZSBzaG91bGQgcHJvdmlk
ZSBhbm90aGVyIHRyaXAgcG9pbnQgZm9yIHVuZGVyIHRlbXBlcmF0dXJlIHRocmVzaG9sZCwKYnV0
IHRoZXJlIGlzIG5vIHN1aXRhYmxlIHRoZXJtYWwgdHJpcCB0eXBlIGZvciBjb2xkIHRlbXBlcmF0
dXJlLgoKSSdtIGdvaW5nIHRvIHJlbW92ZSB0cmlwX3BvaW50XzBfaHlzdCBhbmQgbm90IHV0aWxp
emUgdGhlIHVuZGVyIHRlbXBlcmF0dXJlCnRocmVzaG9sZC4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK

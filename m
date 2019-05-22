Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F526716
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uz+xVT4RsQcMpMYBa1zlRfkllKW/HcowefJlQ6lF30s=; b=hMQ4EjEQDt3MHY
	Vekz3SzbjGBrTprbellGhYZrJd0qUyoUK+sxRz2u2orL0LdUDz2urI8fBldC6UkGcQq1ZEpp7ukT0
	sSeCW5D2SGcQFnWy42x0Lzb57b9kBPGXAkZW/iohbx0IWzS0sZwyP9nymUPjNI2UBNTEejov4IBVc
	4k8alqVxB70oVLOQV4FFvFqqbBd/5xhC1g8Lui4rkgiFqXeeG9Hbm/x0aT+8+IWg0R5SGOY+Ob85m
	855gk7HunY+NNMsggqXHy3Q1cr27B3SR5rlVBGWmLq20QO19LdoQEen83QPW9pemjR5+0kaJYNs9b
	lWgKOzViAIaenOZht4Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTPh-0002LY-C4; Wed, 22 May 2019 15:44:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTPc-0002LE-ET
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:44:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so1525975pgl.5
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 08:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zi7TPQJ2AgEBRCfEDHwkjIeVMnhLJIppmZLARoXOTOI=;
 b=RRfmpF2nB0MGqFAv5Ka9Ze21Aez4ZQKr74L+8RLa5DTDowwzYMrSA2HpGZqnobTDpn
 woNpeDpTnAuAqoGEDYeZnYjlYqBgpREWTQYJCaSNRsdWB50b5RHfu1bQNzqB25ht1i/Q
 iUKveIIuS0lft0PpRWp6un3D5Km4/9S4G9Rqw0IKLa+hJoP9urw1IrZa7V/tDMmqJnXd
 Jpz1v9wMTP5GYaW9yUugDnYBioOGdn8t+/oz6Dlxl/vcwXMBs9LjXRbEpGMf4FApqjYy
 mJvxK4knN/8nzyvp1GTcSGNtub5PiH1HJXkX1H8ERjQG7aV2lTsCmo7JgM3gJQlJWgYw
 s5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zi7TPQJ2AgEBRCfEDHwkjIeVMnhLJIppmZLARoXOTOI=;
 b=UUjF++6EKoU/6GAgWt6W7otqOzgxrF+HFxlizDbyt1kQg9UQJdT8SzhkxVQA3ik87t
 EuwpHCLxW/TMchpV/op+pZNGKGHEOWm3cDdLJN71ePfQpuODYJKEYjg1v93xwgm+gA3r
 Nufq/qBP13WSm55T+cz2D4Hk40I2gzhzByiYd9nN9hR1GWH4ur692fPcgWw7CBv4amNg
 hsosFcsrfjRrrFLDCuyuy+gW7KJxTkT4gqWWsgZxFvWl3NjPirygWHxVaAoTzYIUu7q8
 jhca4emVRoWs2UUjnHti2AF7vz4GZIiBqD66+VMWFLDXVIXzDWTntQr6VECgJPJ1WwtA
 Bdlg==
X-Gm-Message-State: APjAAAV8bYCs0RwTeenfty5pZevZeGOsZWjHpwxK8phGlet9L6DYA5f/
 Hov2EpzoGQ+V382UVm5ATx5CppNN1lIq8+jY5tUJgR31jzg=
X-Google-Smtp-Source: APXvYqxW9OK0aMc9IbWilx5Vn0nSOT6FUUgCR0Ldi2EbLveBerecZPbu7Jrglhx4CndvsTGSDtlphLSooajQFPspP+0=
X-Received: by 2002:a63:930d:: with SMTP id b13mr78760352pge.18.1558539855859; 
 Wed, 22 May 2019 08:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <20190521161532.GD1639@localhost.localdomain>
In-Reply-To: <20190521161532.GD1639@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 23 May 2019 00:44:04 +0900
Message-ID: <CAC5umyi4t-r+0WbGjfa=_6ym_n=vcx5855nwL6NxuXH_HhYXkA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_084416_512972_E136A882 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyMuaXpSjmsLQpIDE6MjAgS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3Jn
PjoKPgo+IE9uIFdlZCwgTWF5IDIyLCAyMDE5IGF0IDAxOjA0OjA3QU0gKzA5MDAsIEFraW5vYnUg
TWl0YSB3cm90ZToKPiA+ICtpbnQgbnZtZV90aGVybWFsX3pvbmVzX3JlZ2lzdGVyKHN0cnVjdCBu
dm1lX2N0cmwgKmN0cmwpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IG52bWVfc21hcnRfbG9nICps
b2c7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKyAgICAgaW50IGk7Cj4gPiArCj4gPiArICAgICBs
b2cgPSBremFsbG9jKHNpemVvZigqbG9nKSwgR0ZQX0tFUk5FTCk7Cj4gPiArICAgICBpZiAoIWxv
ZykKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7IC8qIG5vbi1mYXRhbCBlcnJvciAqLwo+ID4g
Kwo+ID4gKyAgICAgcmV0ID0gbnZtZV9nZXRfbG9nKGN0cmwsIE5WTUVfTlNJRF9BTEwsIE5WTUVf
TE9HX1NNQVJULCAwLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIGxvZywgc2l6ZW9mKCps
b2cpLCAwKTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2Vycihj
dHJsLT5kZXZpY2UsICJGYWlsZWQgdG8gZ2V0IFNNQVJUIGxvZzogJWRcbiIsIHJldCk7Cj4gPiAr
ICAgICAgICAgICAgIHJldCA9IHJldCA+IDAgPyAtRUlOVkFMIDogcmV0Owo+Cj4gQSByZXQgPiAw
IG1lYW5zIHRoZSBkZXZpY2UgcHJvdmlkZWQgYSByZXNwb25zZSwgc28gZG9uJ3QgcmV0dXJuIGEK
PiBuZWdhdGl2ZSBmb3IgdGhhdCBjb25kaXRpb24sIHBsZWFzZS4gVGhhdCdzIGp1c3QgZ29pbmcg
dG8gYnJlYWsKPiBjb250cm9sbGVycyB0aGF0IGRvbid0IHByb3ZpZGUgc21hcnQgZGF0YSwgbGlr
ZSBxZW11LgoKQWZ0ZXIgbG9va2luZyBhdCBfX252bWVfc3VibWl0X3N5bmNfY21kKCksIGl0IHJl
dHVybnMgLUVJTlRSIGlmIHRoZSBkZXZpY2UKZG9lc24ndCByZXNwb25kLiAgU28sIHNob3VsZCB0
aGlzIHJldHVybiBhIG5lZ2F0aXZlIG9ubHkgd2hlbiBudm1lX2dldF9sb2coKQpyZXR1cm5zIC1F
SU5UUj8KCiAgICAgICAgcmV0ID0gbnZtZV9nZXRfbG9nKCk7CiAgICAgICAgaWYgKHJldCkgewog
ICAgICAgICAgICAgICAgZGV2X2VyciguLi4pOwogICAgICAgICAgICAgICAgaWYgKHJldCAhPSAt
RUlOVFIpCiAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IDA7CiAgICAgICAgICAgICAgICBn
b3RvIGZyZWVfbG9nOwogICAgICAgIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK

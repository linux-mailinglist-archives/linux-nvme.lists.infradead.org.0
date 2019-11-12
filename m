Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C618F95C6
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 17:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzIVKDQAjMulPRG+20xcJxtq4Sgvt61nS+LF5igLsts=; b=BhlTARb1+rPB2K
	mTI5aOVSm+NCSVn0oAxefSFgd3HlwImUmu36uz4bxR9pnS4D9XQHWlMzYD97bWWpzLLdMZWSgm6AC
	9z6aAk86lST+mZ+RAHDZO3XrILah6eTFVrBhnjzXMy/REE7fpP4jo+Cxw3hxbf+XLztAQXrwxtXuH
	aTTxL1VaP6VwBEU91OCtyyYKJ/pVgUB6GeNqm3XzyKxWrX4KkDHePDNJvQhGJ0Gvy3yP/bTy/rue/
	L4ewudSrgtGwOzJB1GaqIB7Z8llnd/FmvU9ul/1qN7VwdmYqXjeAZpQ+N/2Z2pkZfsVGBbSjjj9Bd
	yHxQ8pSM8B0vwo1mHiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZBI-0007OZ-P9; Tue, 12 Nov 2019 16:38:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZBD-0007OH-36
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 16:38:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so12190541pgh.10
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 08:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bhtn3lzvolKqXh97Kffmxg++A6X6GOUuqL+ZVTIzCKk=;
 b=BqXr6aKxPxuV+51EzEhgJX0kgQVLVyj5Es0SYwaWNLCgQaTbMz8ysycSdHWw6ipd4W
 L8IAovlmg6lcx6xGperCCQCSWuMLziX3w51YMCZtrRLwIXVE0RNhqoAFN6D/jo/PE27i
 WBf5Zf157hay0Crbl2BFffAM9CawfFA+/3twcLNN4nKv7N8E/R86SXZYAU5shojYyeRO
 v+CUGV4+nc5bMR1sahMHFSQq4ld0E6giOUWYRV9k10FBtNYYtxXpM5RSEB8TzmEqZDMM
 nTAqoiavEowCVdk5FOc5Eav2AbfyHwG2EMOmvqZ03Gjvcs9syj9pp9QKnG/fKwBdvMjt
 e6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=bhtn3lzvolKqXh97Kffmxg++A6X6GOUuqL+ZVTIzCKk=;
 b=qftZliXYfz0rUmlR0WRT4gKtYWleDJGU4o/VJc4gxcnTA2whj0Kl619JRG5KOddVDc
 85TejEsQ2iV3256utsvjC7e3KbSLOUcyfWs4Ijd9JnRte2PqVdl3q2jQZgQbk5vYkxaJ
 oWvxpnybAZdQUF+/n+iP9Z+4k42NCnWUmQYiwa1AOvNPbeTdS9qS73EXIM6itAp0S1pi
 WzrSqUZCeaej4luEYqPZ/VHF9uAhS9TwJrHabdynn2GZh35Pu+FuesKqiPIbuYa8SVqw
 fD7MfeWOkILMKMl4u+eZ0nARRRVT/vSJjqQpLPnoyGs2Vu4wYgdxPR8xC+QDB8IInGpv
 voDg==
X-Gm-Message-State: APjAAAUp8j7imsCL+TR92YShfevnIW+SPAeHVJBfFxoGKapfBBEGIBFT
 j1McAVz+FgHx0WrghZristE=
X-Google-Smtp-Source: APXvYqzlG8u2+9CdXvCmHiQvb4t73g6DMBNDkHZ3pIWG2si5Gmd7NX33g3/ooudQqutaU+IMf0XyEQ==
X-Received: by 2002:a17:90a:98d:: with SMTP id 13mr7648897pjo.98.1573576689140; 
 Tue, 12 Nov 2019 08:38:09 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z10sm10497810pgg.39.2019.11.12.08.38.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 08:38:08 -0800 (PST)
Date: Tue, 12 Nov 2019 08:38:07 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH] nvme: hwmon: provide temperature min and max values for
 each sensor
Message-ID: <20191112163807.GB26911@roeck-us.net>
References: <1573395466-19526-1-git-send-email-akinobu.mita@gmail.com>
 <20191111165306.GA19814@lst.de>
 <CAC5umyi97UJZzk+4soD+th0BZ71WfnOqnTWWuTYKyo6aWTdLXA@mail.gmail.com>
 <20191112142127.GA11580@lst.de>
 <CAC5umygX=uBQsWV8O=9NL3HeVNo_iMcq7BE-vA-wpQtyU5iV3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umygX=uBQsWV8O=9NL3HeVNo_iMcq7BE-vA-wpQtyU5iV3Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_083811_154093_85C9EE51 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMTI6MDA6MjJBTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQxMeaciDEy5pelKOeBqykgMjM6MjEgQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+Ogo+ID4KPiA+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDExOjE5OjQ2UE0gKzA5
MDAsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+ID4gT0suIEknbGwgYWRkIHR3byBtYWNyb3MuCj4g
PiA+Cj4gPiA+ICNkZWZpbmUgTUlMTElDRUxTSVVTX1RPX0tFTFZJTih0KSAoKHQpIC8gMTAwMCAr
IDI3MykKCkRJVl9ST1VORF9DTE9TRVNUKCkgPwoKPiA+ID4gI2RlZmluZSBLRUxWSU5fVE9fTUlM
TElDRUxTSVVTKHQpICgoKHQpIC0gMjczKSAqIDEwMDApCj4gPgo+ID4gQ2FuIHlvdSBhZGQgdGhl
bSB0byBsaW51eC90aGVybWFsLmggdGhhdCBhbHJlYWR5IGhhcyBzaW1pbGFyCj4gPiBoZWxwZXJz
Pwo+IAo+IFNob3VsZCB3ZSBhZGQgYSBuZXcgbGludXgvdGVtcGVyYXR1cmUuaCBzbyB0aGF0IGFu
eSBvdGhlciBkcml2ZXJzIG9yCj4gc3Vic3lzdGVtcyAoaW5jbHVkaW5nIHRoZXJtYWwuaCBhbmQg
aHdtb24uaCkgY2FuIHVzZSB0aGVzZSBtYWNyb3M/CgpHb29kIGlkZWEuIEkgZG9uJ3QgbGlrZSB0
aGUgaWRlYSBvZiBwdWxsaW5nIGluIGFsbCBvZiBsaW51eC90aGVybWFsLmgKanVzdCBmb3IgdGhl
IGFib3ZlIG1hY3Jvcy4KCkd1ZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK

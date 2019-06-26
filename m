Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0151B57295
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68uJO326LPv8vbWlePoGt4nYg6TeTgwRBk7z4Pe4IfQ=; b=oMmU0Jmox59TQ9
	HNUwzugdwlPX9Cj9yfvJ4KlbcYTh301JhtcONCRxSdrAQCiaKd1O6/bevgmWshTOuddjUTnUXpZBE
	OnU6Qcw/EfsuH8oVCFPfr0MyXD++6oDV1iGnnZ3oMo4SNia/kxEKWHSIFcGD2ZzWeoNAyn0RC3WLm
	bFEGuCz/aJtImL5Gf88xcCoovTVEA095o5ySSP81svgkbm01TtoJITFYuZKwV/3EvozDO2GNwssfc
	Yt3QKYuULVQa0W7LtHDUArhQ7nol/FmNbTXRQs9Ifwt5hac+J4MXghFMN6tSefuE+VTHsHsc9sHfF
	rHbJnP/BrSQ8QShnqvbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEVk-0006Uk-B7; Wed, 26 Jun 2019 20:27:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEVa-0006U9-Ip
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:27:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi6so2033349plb.12
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=x1o8oqi0CP9ZDnGVZ99akUd6mY/E2omAq/EbskrFW4k=;
 b=POv1IyE+sfM8PtylMEWG9x0KHLapZZmKG9O21FYbI6DJsX5YyUowJrGlqsd1brIdG8
 4ooVgaj5bl5g67fjcD008OmeeshHnFYPER80FNuf5bYHxde/ukJ7bWPpS8NczoyEc+cd
 CKv88keWcLtmuhtiNaZoX+rSSEGKhfYIcDgDEeWjODEkilqjwNyropymwYsdONJxg/BT
 RNVNSIq/3Dm6bgbcxL3pgXBZ/PJQDE9Y849OPSdGMAR8sKJdGdQE52In7DcwfdXdT/zY
 0kLbMrXm0RsqOhLX7c87vpo1H5eqgA6gd/xXSJomam4kbPKHTDP711I23q8T80n26mkx
 3q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=x1o8oqi0CP9ZDnGVZ99akUd6mY/E2omAq/EbskrFW4k=;
 b=A/o1EYIrV64JN9eoecvWEPT1Ru/B8a5FxBw5u3GwX+zmKN8VeecZ8rPVsNhxTEbmxR
 eeyJy+vXl2vxUkdA3oiW8yRSAKW9CNKjnQkJGpK7r7LUgXJS5AnXIUzkakTKzmB+CEZO
 SfpLwFCAAvzMLdNGAJaDpUv7UGnvmOO0zHcTOPsxTY2UyeQF8PmbLcbz96wsS+fnq4z7
 JAWYrONBAgZGTU1M2nHHfoEflqdH2GKYX45DZejnxvqUH+F19FMo6su+DSzAChj3x0lV
 PabrOcMRxjmF86Pl0MPkVmeU43FRk2X5iNDVKcS96aw8rV4BaxXq0MDzpfWgD5cebaGh
 4L3Q==
X-Gm-Message-State: APjAAAWzEXRbHG7ovTckYDfLnvpKApCyFwvlum+02Vyi/vAypsiNwbZl
 WvbXSf5eNByoUIYSEOr8X84=
X-Google-Smtp-Source: APXvYqyjymNoPT4b92sWLExLPDZZq/X+c5U+Nyf00E2YjebGqOGMookCtAi+tYDjxEy8W4ninii9dg==
X-Received: by 2002:a17:902:9b81:: with SMTP id
 y1mr7962559plp.194.1561580829862; 
 Wed, 26 Jun 2019 13:27:09 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p27sm83702pfq.136.2019.06.26.13.27.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 13:27:09 -0700 (PDT)
Date: Thu, 27 Jun 2019 05:27:06 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Weiping Zhang <zwp10758@gmail.com>
Subject: Re: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues to
 read_queues
Message-ID: <20190626202706.GC4934@minwooim-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
 <20190624200445.GB6526@minwooim-desktop>
 <CAA70yB5arvfaUsktN-cvd0yHpRi+FwFjL4r5_jTRWM8+rBVdnA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA70yB5arvfaUsktN-cvd0yHpRi+FwFjL4r5_jTRWM8+rBVdnA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_132710_618309_180821E6 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Minwoo Im <minwoo.im.dev@gmail.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDYtMjUgMjI6NDg6NTcsIFdlaXBpbmcgWmhhbmcgd3JvdGU6Cj4gTWlud29vIEltIDxt
aW53b28uaW0uZGV2QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDbmnIgyNeaXpeWRqOS6jCDkuIrljYg2
OjAw5YaZ6YGT77yaCj4gPgo+ID4gT24gMTktMDYtMjQgMjI6Mjk6MTksIFdlaXBpbmcgWmhhbmcg
d3JvdGU6Cj4gPiA+IE5vdyBudm1lIHN1cHBvcnQgdGhyZWUgdHlwZSBoYXJkd2FyZSBxdWV1ZXMs
IHJlYWQsIHBvbGwgYW5kIGRlZmF1bHQsCj4gPiA+IHRoaXMgcGF0Y2ggcmVuYW1lIHdyaXRlX3F1
ZXVlcyB0byByZWFkX3F1ZXVlcyB0byBzZXQgdGhlIG51bWJlciBvZgo+ID4gPiByZWFkIHF1ZXVl
cyBtb3JlIGV4cGxpY2l0bHkuIFRoaXMgcGF0Y2ggYWxvcyBpcyBwcmVwYXJlZCBmb3IgbnZtZQo+
ID4gPiBzdXBwb3J0IFdSUih3ZWlnaHRlZCByb3VuZCByb2JpbikgdGhhdCB3ZSBjYW4gZ2V0IHRo
ZSBudW1iZXIgb2YKPiA+ID4gZWFjaCBxdWV1ZSB0eXBlIGVhc2lseS4KPiA+ID4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogV2VpcGluZyBaaGFuZyA8emhhbmd3ZWlwaW5nQGRpZGlnbG9iYWwuY29tPgo+
ID4KPiA+IEhlbGxvLCBXZWlwaW5nLgo+ID4KPiA+IFRoYW5rcyBmb3IgbWFraW5nIHRoaXMgcGF0
Y2ggYXMgYSBzZXBhcmF0ZWQgb25lLiAgQWN0dWFsbHkgSSdkIGxpa2UgdG8KPiA+IGhlYXIgYWJv
dXQgaWYgdGhlIG9yaWdpbiBwdXJwb3NlIG9mIHRoaXMgcGFyYW0gY2FuIGJlIGNoYW5nZWQgb3Ig
bm90Lgo+ID4KPiA+IEkgY2FuIHNlZSBhIGxvZyBmcm9tIEplbnMgd2hlbiBpdCBnZXRzIGFkZGVk
IGhlcjoKPiA+ICAgQ29tbWl0IDNiNjU5MmY3MGFkNygibnZtZTogdXRpbGl6ZSB0d28gcXVldWUg
bWFwcywgb25lIGZvciByZWFkcyBhbmQKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgb25lIGZv
ciB3cml0ZXMiKQo+ID4gICBJdCBzYXlzOgo+ID4gICAiIiIKPiA+ICAgTlZNZSBkb2VzIHJvdW5k
LXJvYmluIGJldHdlZW4gcXVldWVzIGJ5IGRlZmF1bHQsIHdoaWNoIG1lYW5zIHRoYXQKPiA+ICAg
c2hhcmluZyBhIHF1ZXVlIG1hcCBmb3IgYm90aCByZWFkcyBhbmQgd3JpdGVzIGNhbiBiZSBwcm9i
bGVtYXRpYwo+ID4gICBpbiB0ZXJtcyBvZiByZWFkIHNlcnZpY2luZy4gSXQncyBtdWNoIGVhc2ll
ciB0byBmbG9vZCB0aGUgcXVldWUKPiA+ICAgd2l0aCB3cml0ZXMgYW5kIHJlZHVjZSB0aGUgcmVh
ZCBzZXJ2aWNpbmcuCj4gPiAgICIiIgo+ID4KPiA+IFNvLCBJJ2QgbGlrZSB0byBoZWFyIHdoYXQg
b3RoZXIgcGVvcGxlIHRoaW5rIGFib3V0IHRoaXMgcGF0Y2ggOikKPiA+Cj4gCj4gVGhpcyBwYXRj
aCBkb2VzIG5vdCBjaGFuZ2UgaXRzIG9yaWdpbmFsIGJlaGF2aW9yLCBpZiB3ZSBzZXQgcmVhZF9x
dWV1ZQo+IGdyZWF0ZXIgdGhhbiAwLCB0aGUgcmVhZCBhbmQgd3JpdGUgcmVxdWVzdCB3aWxsIHVz
ZSBkaWZmZXJlbnQgdGFnc2V0IG1hcCwKPiBzbyB0aGV5IHdpbGwgdXNlIGRpZmZlcmVudCBoYXJk
d2FyZSBxdWV1ZS4KClllcywgdGhhdCdzIHdoeSBJIHdhbnQgdG8gaGVhciBzb21lIGNvbW1lbnRz
IGZvciB0aGlzIGNoYW5nZSBmcm9tIG90aGVyCnBlb3BsZS4gIEknbSBub3QgYWdhaW5zdCB0aGlz
IGNoYW5nZSwgdGhvdWdoLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034DCFB0E7
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 13:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLj+Quy50YVjC7ZZeeDYZQ1Pwr8gW4vqKqhePRbjNiY=; b=LKUQ03NZq4R4oP
	b060zfHvnrZf2fQgZyphl73U4ZSOuU2FlOf/vHqaqqgjrKmIut60aUUd4F9V7v/DKKjGyOb8Fr/MM
	HSwvvrebZT7Ll0O0jlSJmgTPVHKimtVq0GvyIwCsR1K3NkglbFPK79tdaj5T0kKYhPu04ahrKYZwl
	u+MAEaSVAGPbN8lj12LSPrvYjw2DppktZ7DhBR/usxHgP2rDwyAXAF7bC4PiWGtdWHzLPLIaKrg5A
	OMdQIMNKxNaiZIX0/65QW9IjeK0lzvtlg7lXPhOMeDYnzDH3FqKwDfpeDo8IO4T83moM0r2qvQ2RQ
	zLWNn+E5FaqWOr5E5uCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsE0-0000UO-MR; Wed, 13 Nov 2019 12:58:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsDu-0000Ti-Nv
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 12:58:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id n5so2441414ljc.9
 for <linux-nvme@lists.infradead.org>; Wed, 13 Nov 2019 04:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vgua7CPQ6DoU2gQQx1394j69/MTl73YCclHJSYqCl8I=;
 b=njckh+1MCFk3rOXgmP5NdQfWiJzezGiupKYm71jbFio6pZwHj8ysvNsDsDJ0kiboQT
 0BVn5P0sbtNTft55l/MuEqrzwMKTWI7J/gr6UvKl16mWG46Sy6KuQLCbpDaROg2VBzbu
 hVPEh2K7QsuexRRj2etiDD+ZMVpm9UyQZgPsZCoOgcwB1rRcNxueyPSutlRgpJ9NT7rt
 Z0LtnDoxLEEf7ItyXvUdumJuBqyMojnt3zAG3AxEIEXu9oy89IdMZK5nUKbmgNi/1dHk
 hsludrY9wYflZALdSUBggw6Bb4jTiDpEuB7ESEhcaRA+Ftl5Rs4nc9D5Wd4AXLYnG43r
 /L3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vgua7CPQ6DoU2gQQx1394j69/MTl73YCclHJSYqCl8I=;
 b=a5zg8X44M8Z9/r4t94N1Itd+HcgxlW61Fm1QzOV7NsXvFl6IcYElSR2Zm7upDNhtlH
 flxvVh3F6Bj0CeugvBSd506EO7cgpHvQv/4FYiArCQ9qq0dN1ORhHStzGD02UD2kwN3U
 D3m59z1t9ozvu8B2X7PvQB1/3PLoq+YT07lJ6DqOG2O3jRjUUBjafzwtv2iwaKbIFWLH
 6kIpdYwAUEpC5wA06BOALgqsiTYp9XkOY3PB9W4keqtWslJGOSp2HWq6iBVuvl7wwj+i
 rZI46UlOxlTKUC5VRMo6BaR/l7xaOzX/rol9QFwg4JI/ysjfJ7gE0myx9zIjV2b7seNl
 893A==
X-Gm-Message-State: APjAAAUsjMGos120hxmNOSV0F0bT7BIVb57EZzdXsVHhRrvLx/dUkT1Q
 K7aY5u4pery80mgKWboc6ugEQusmauP9ZqSIYzs=
X-Google-Smtp-Source: APXvYqzAKmoOlCuWhzIgX5ba3Kgl1IodyrNmydw0zoSAfXRTAjjTnbh0qkR2Jjl+VIRCNKMA0dR3zQj5sySwwQJBavc=
X-Received: by 2002:a2e:9083:: with SMTP id l3mr2609468ljg.127.1573649892396; 
 Wed, 13 Nov 2019 04:58:12 -0800 (PST)
MIME-Version: 1.0
References: <1573395466-19526-1-git-send-email-akinobu.mita@gmail.com>
 <20191111165306.GA19814@lst.de>
 <CAC5umyi97UJZzk+4soD+th0BZ71WfnOqnTWWuTYKyo6aWTdLXA@mail.gmail.com>
 <20191112142127.GA11580@lst.de>
 <CAC5umygX=uBQsWV8O=9NL3HeVNo_iMcq7BE-vA-wpQtyU5iV3Q@mail.gmail.com>
 <20191112163807.GB26911@roeck-us.net>
In-Reply-To: <20191112163807.GB26911@roeck-us.net>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 13 Nov 2019 21:58:01 +0900
Message-ID: <CAC5umyjVFRK+CfO=4FpzKUGyAaRVigj9NBoSazA6RV8AvhTbCw@mail.gmail.com>
Subject: Re: [PATCH] nvme: hwmon: provide temperature min and max values for
 each sensor
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_045814_803392_991866AD 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMTPml6Uo5rC0KSAxOjM4IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVz
Lm5ldD46Cj4KPiBPbiBXZWQsIE5vdiAxMywgMjAxOSBhdCAxMjowMDoyMkFNICswOTAwLCBBa2lu
b2J1IE1pdGEgd3JvdGU6Cj4gPiAyMDE55bm0MTHmnIgxMuaXpSjngaspIDIzOjIxIENocmlzdG9w
aCBIZWxsd2lnIDxoY2hAbHN0LmRlPjoKPiA+ID4KPiA+ID4gT24gVHVlLCBOb3YgMTIsIDIwMTkg
YXQgMTE6MTk6NDZQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gPiA+IE9LLiBJJ2xs
IGFkZCB0d28gbWFjcm9zLgo+ID4gPiA+Cj4gPiA+ID4gI2RlZmluZSBNSUxMSUNFTFNJVVNfVE9f
S0VMVklOKHQpICgodCkgLyAxMDAwICsgMjczKQo+Cj4gRElWX1JPVU5EX0NMT1NFU1QoKSA/CgpI
b3cgYWJvdXQgdGhlc2UgZGVmaW5pdGlvbnM/CgojZGVmaW5lIE1JTExJQ0VMU0lVU19UT19LRUxW
SU4odCkgRElWX1JPVU5EX0NMT1NFU1QoKHQpICsgMjczMTUwLCAxMDAwKQojZGVmaW5lIEtFTFZJ
Tl9UT19NSUxMSUNFTFNJVVModCkgKCh0KSAqIDEwMDBMIC0gMjczMTUwKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609AA105456
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 15:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJFOVmyacJu7UQXYYe/m/kuvG3/rTiuh6plTGOZERzs=; b=oezKDQhpNerPiw
	WIuzWBos002oeV1xHSBcyiKnilFsC/bLr5s+tGjoldEFmp/0h6IbWlM24Z4gNqXttr66AKAxpvqYM
	ZcdazjnAOdKEGA8I721+BemqiC22YY4Fj/J8b/fRoG17ewLo7rfKweCCmaZRphZcCpMET0a+r3M7l
	Y+gWOasD43WcOeiPD3B3FxTWkOlXZXznXb39VkZV5qQXdKO7oEme2JFdTM2uPZO14twuMmnoqnaFj
	MxItX7Z3/MQ0C0kFLU+LcxFB8N4u3phDQSvrnsdmgyqYyeMNJGqHHzLJsp49glDTkMCs7LgdxmCet
	FJHMGdcuXBtk23bZ9Cqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnQV-0006w6-Bg; Thu, 21 Nov 2019 14:27:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnQR-0006vm-F7
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 14:27:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id e6so1661222pgi.11
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 06:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=osHOEhIAzUalQfcLz+T/IXlsbkR4DZxvl7PGoFTWfTM=;
 b=X7lfnjf3Z6gAi5W+pyAj+/qngcnpUlusOCdfbO+UioiYwdGqH/fOPvr05eZciAn7u/
 RK+OT3AYaFJ9w9LORR5b6hXZCea8jVXUj+PnxZHQaiRGX8heRYzv7ukwzjfoovxj6Taf
 WVEYGntM0t5h4WnFK7Kb8I4vuR2QSPgm+kEHjpjv8oFJ/IYF0wu7AsSqEsgarGH14L7b
 SqryOOh03/ob5JnYFl+ZyBfZ73jtHLwkgF+IExCKIqo2/Bw/b7WyCKu56n2YbPG5Wvyc
 hRHslIrstjcaRcCOMsALgZ827eE2MByo753pGQ6DJ8idOFUmA/inXv4aqzVIJkYpcleR
 t65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=osHOEhIAzUalQfcLz+T/IXlsbkR4DZxvl7PGoFTWfTM=;
 b=JjUy39HMboNorKbmZo+SkkpHiLWPXABX8JBf1Y0GVQlabU6x2RibWhH4EnXDT+wwjl
 MQmMPr56pawFysz/7TC6SxXIXnUjUSj3nkN183wfoXyobajZbk1Ii2aQS/3mULcTQirf
 2Wmfy353E1VvxPl67jurTIGs7NQloDsP0kDxiGPpoYwWFrxH6tHKAc6Yw+xMONWGb8BM
 g9E5gojsuS/OzFK8HNLxbXmkmBCVOwaFhm+h04Ux9E7lGQoot2FTWwb4NgiB/RkJC/fz
 0SSqZ6Vt1frZ1lp9f6D0WEgei+5tjIEeElmpcIV8X5bI9aChKGjjIysOtbEKDV5zoniI
 39NA==
X-Gm-Message-State: APjAAAVpeKbQzaFNbAvEvldmSa4bWqtKVpR6st7XC9QTJbjlCVDcIJsg
 CCNZUo25oUIysSq4rAzu9Is=
X-Google-Smtp-Source: APXvYqwwYD2FM1U2oGIp2GJepOd1T0RZsjezlrlDT4Pw//lZpxEaql2fGcOE+GE45bjDPMNV4A5dGw==
X-Received: by 2002:a65:5548:: with SMTP id t8mr2257631pgr.304.1574346434577; 
 Thu, 21 Nov 2019 06:27:14 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id s66sm3795149pfb.38.2019.11.21.06.27.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 06:27:13 -0800 (PST)
Date: Thu, 21 Nov 2019 06:27:12 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v2 1/2] nvme: hwmon: provide temperature min and max
 values for each sensor
Message-ID: <20191121142712.GC13249@roeck-us.net>
References: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
 <1573746001-20979-2-git-send-email-akinobu.mita@gmail.com>
 <20191120184827.GA12322@lst.de>
 <CAC5umyh8kbQTPh22CX6uEcR1jNEHxa+5HCjGDahnZ_i1k=cEPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyh8kbQTPh22CX6uEcR1jNEHxa+5HCjGDahnZ_i1k=cEPg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_062715_531092_B6EAC6EF 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTA6NDg6MjFQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQxMeaciDIx5pelKOacqCkgMzo0OCBDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT46Cj4gPgo+ID4gT24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMTI6NDA6MDBBTSArMDkw
MCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gPiArLyogVGhlc2UgbWFjcm9zIHNob3VsZCBiZSBt
b3ZlZCB0byBsaW51eC90ZW1wZXJhdHVyZS5oICovCj4gPiA+ICsjZGVmaW5lIE1JTExJQ0VMU0lV
U19UT19LRUxWSU4odCkgRElWX1JPVU5EX0NMT1NFU1QoKHQpICsgMjczMTUwLCAxMDAwKQo+ID4g
PiArI2RlZmluZSBLRUxWSU5fVE9fTUlMTElDRUxTSVVTKHQpICgodCkgKiAxMDAwTCAtIDI3MzE1
MCkKPiA+Cj4gPiBEaWRuJ3Qgd2Ugd2FudCB0byBtb3ZlIHRoaXMgdG8gYSBnZW5lcmljIGhlYWRl
cj8KPiAKPiBZZXMuICBJIHN0YXJ0IHByZXBhcmluZyBmb3IgPGxpbnV4L3RlbXBlcmF0dXJlLmg+
Lgo+IE9uY2UgdGhlIGNoYW5nZSBpcyBhY2NlcHRlZCwgSSdsbCBtb3ZlIHRoZSBtYWNyb3MgdG8g
dGhlIGhlYWRlci4KCkkgYWdyZWUsIGl0IGlzIGJldHRlciB0byBrZWVwIHRoYXQgY2hhbmdlIHNl
cGFyYXRlLgoKR3VlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=

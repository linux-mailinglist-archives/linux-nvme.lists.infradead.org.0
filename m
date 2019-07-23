Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128A871B92
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 17:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt6Tt146M/f8OaPGLz1YTCiLp8o4xxiOeIL9vjU/qlY=; b=YEWA5+nAi49zIU
	nAEhYtJWljLttXYXRHIxtiSEAp4+iZ1+kuaGPZrdE/uL6xRqJ6ppIyyfWbPjTN29Nt+mbsqmp5Rdt
	oEwDdc1M9MYqLkQNJjyEgijPaOtRTtWQEBFKBJPnavqL1hDKRm7cfhpriYhpXui+KadtOYSmJu7cQ
	LMiGW4h4XekIk3kWJvwZw0iwQVBlbf9PK+f/HRCA4zLDblLXkjcTWMDz9HSdbqxO2yWUk6b1isD6y
	olXIpEY/tSoO8pMt9gLApIUT2eQ77ve7Z3ByDM5XRbkLeou7UZxPjfwS8U276RXZOqOQ+0Fm5oTVg
	cy1CajRsf/LHec7rzhLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwh2-00013a-Cw; Tue, 23 Jul 2019 15:27:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwgw-00012k-FC
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 15:27:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so9259123pgg.8
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 08:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Lxs5VlsVdL9Sw2uk5yhQZUeoFMow5gCQfDy+bMj4EpM=;
 b=hgGD2rQW7FwTiOqq3XVqqEMArc7PqghR7AZ20NaNFKoTDaTa+UPUIPQY2B3+MDNd2F
 //oH3hsoBO1Z6/S3GxBzg1WO5CVWdHCDREwEpP6SkUz8rZyM8HP/CPhqXxVc5JXZvkUD
 vpIIp2GNCN9uw2KNpre024rULANo734t0Q7tb8We8ocHU+lRf7yRTbEsVPDiG809B5Zp
 gs6i0Rc4F0p2d88FDIuLw4Z5Z2k9lkuyyZ2VVL6S/iMymoS/BxVArJ2iz2bgFxZ2/Twb
 Cg5JBiYstbHHJhyCFbWXYlpYXdJUX2mGRVfbHij7r08xI9K0lDtNrRoEkEFPkz486QW5
 95QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Lxs5VlsVdL9Sw2uk5yhQZUeoFMow5gCQfDy+bMj4EpM=;
 b=C4EU265w4wIAwY4PCw91jZyphrzvNh1OJSP+XDdViIR7ShHV+pnf37aPOi/1QQthUo
 QUUeipncyzIoxGauOE+FtiMHev9F8LyMVuJdZ2mqggf6Z3sQ+NDYL6JfThcGAssmROVp
 jm9zMOhN1WZLMSi5IHMrOOfpt2WZa3MAfeDhe2B4eyysMYhay7PRiYYNHS9lCDWkR2db
 koD2V+fI0smeU8fZefb7k+4NxvCmDuBM6jEyh8eyn8BTsRiWlwnAa0vVfrS0xl+VXaUN
 0x7cD9b8o1eqKg667n6j/gW13Ae9TdPv4tlVnMX52kU5VGypWmct3izuhdz7xgUFojaK
 9KBQ==
X-Gm-Message-State: APjAAAVJpJPtyZWva3RX8+0g4STSK/CR7TVgp0YdrS5UHWD3WcV8ZMpo
 SPRGF5U1rWBWpuGFqb68brYrQO0pdTt2iu4Fpd8=
X-Google-Smtp-Source: APXvYqyWEgipmXUI/XX4GGx7YCvH+Dx+bt0QQopcRMQ+5RC5SwagAhqljsl9yMoAQuB/WrhmNvu2LR5zrbugys7zdKM=
X-Received: by 2002:aa7:8c52:: with SMTP id e18mr6599748pfd.233.1563895620894; 
 Tue, 23 Jul 2019 08:27:00 -0700 (PDT)
MIME-Version: 1.0
References: <1563807552-23498-2-git-send-email-akinobu.mita@gmail.com>
 <201907231015.ELtC6gvZ%lkp@intel.com>
In-Reply-To: <201907231015.ELtC6gvZ%lkp@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 24 Jul 2019 00:26:49 +0900
Message-ID: <CAC5umygkNgxori1RKi7UqvxEBDfM7i9UUzYvtgRreht=qTFkGw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] block: introduce LED block device activity trigger
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_082702_535643_42444ACF 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dan Murphy <dmurphy@ti.com>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, kbuild-all@01.org, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDfmnIgyM+aXpSjngaspIDExOjA1IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPjoKPgo+IEhpIEFraW5vYnUsCj4KPiBJIGxvdmUgeW91ciBwYXRjaCEgWWV0IHNvbWV0aGlu
ZyB0byBpbXByb3ZlOgo+Cj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBsaW51cy9tYXN0ZXJd
Cj4gW2Fsc28gYnVpbGQgdGVzdCBFUlJPUiBvbiB2NS4zLXJjMSBuZXh0LTIwMTkwNzIyXQo+IFtp
ZiB5b3VyIHBhdGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25nIGdpdCB0cmVlLCBwbGVhc2UgZHJv
cCB1cyBhIG5vdGUgdG8gaGVscCBpbXByb3ZlIHRoZSBzeXN0ZW1dCj4KPiB1cmw6ICAgIGh0dHBz
Oi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvQWtpbm9idS1NaXRhL2Jsb2NrLWlu
dHJvZHVjZS1MRUQtYmxvY2stZGV2aWNlLWFjdGl2aXR5LXRyaWdnZXIvMjAxOTA3MjMtMDc0OTU2
Cj4gY29uZmlnOiB4ODZfNjQtZmVkb3JhLTI1IChhdHRhY2hlZCBhcyAuY29uZmlnKQo+IGNvbXBp
bGVyOiBnY2MtNyAoRGViaWFuIDcuNC4wLTEwKSA3LjQuMAo+IHJlcHJvZHVjZToKPiAgICAgICAg
ICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4gICAgICAg
ICBtYWtlIEFSQ0g9eDg2XzY0Cj4KPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBm
b2xsb3dpbmcgdGFnCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPgo+Cj4gQWxsIGVycm9yL3dhcm5pbmdzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6Cj4K
PiAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9ibG9jay91bWVtLmM6NTI6MDoKPiA+
PiBkcml2ZXJzL2Jsb2NrL3VtZW0uaDozOToxOTogZXJyb3I6IGV4cGVjdGVkIGlkZW50aWZpZXIg
YmVmb3JlIG51bWVyaWMgY29uc3RhbnQKPiAgICAgI2RlZmluZSAgTEVEX09GRiAgMHgwMAo+ICAg
ICAgICAgICAgICAgICAgICAgICBeCj4gPj4gaW5jbHVkZS9saW51eC9sZWRzLmg6Mjc6Mjogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdMRURfT0ZGJwo+ICAgICAgTEVEX09GRiAgPSAwLAo+
ICAgICAgXn5+fn5+fgoKVGhlIHVtZW0gZHJpdmVyIGRlZmluZXMgTEVEXyogbWFjcm9zIGZvciBN
RU1DVFJMQ01EX0xFRENUUkwgcmVnaXN0ZXIKdmFsdWVzLiBJJ20gZ29pbmcgdG8gcHJlcGFyZSBh
IHBhdGNoIHRoYXQgcmVuYW1lcyB0aGVzZSBtYWNyb3Mgd2l0aApzL0xFRF8vTEVEQ1RSTF8vIGlu
IHVtZW0uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA1371B9A
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 17:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLZGYRVEwDpqPFPfC0LrcZKW6fSJiS6gk60SYf+XbBM=; b=eF6XzpCgM5XRHY
	6zfZc4SOxQV2VHhOnvIRzfIRDVL8MUc34nMzTWrwawMNSZKFb2BHcU1ffWbxeus3bkUtLYDNP6kzX
	V7QU/GJQWApSRKcIDm6vciH5GFmhY7v7d3L1hMaxVZ1+arQpA3k3nsIAxKLzG6PheFtwjLMg6FaOX
	rRY8lCQMqHstqL8E3cSOM8pifGUu++eRQ6lqs0CT2KG+xfrxRBZfImDDRBNlKDtco1HqYy63du74c
	tr9o2+zymJiqzfoB9ABiYmin8ImP9HKhme7znDpWt7fglRTvX80SpL/yDIICk7xLjewMWCbV1QJYh
	M4sdJTyOA5/H3SfRBC6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwif-0001Zr-DB; Tue, 23 Jul 2019 15:28:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwiV-0001Ye-GW
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 15:28:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id i70so8863482pgd.4
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 08:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gN2NTbMjgP0TcnnxiZaPLNnmbetdQsD4pX+fgmFtE3Q=;
 b=sILLQhYHkz0hsTzPPAOlsZq62m0+BakINShYPWdy8tukzrefq/YGrvPz3zMYRLuQ7i
 fehD9ajxRmArTBv1mZkHvycEy4QK3TfncqjROxYQOIIaZXYk/pXQiyG4mgo+Cwm1l/qu
 cUpQIP1+1JmkqTp/RWjr9S7abcvDPRgfizoctF4U8zPhxRpdmc/js7pgDYWLCWNIyawv
 8VEa6tQBMigmmTMD5Wlko6Rp5BNa3/05FqZWHSegaas5U39z9yTVaGxJMJns8hG+jtyV
 PsJl9q+JGW5N8zuIBIfozQ1DBEZil9L8R1damG5JTRMbihgVnUKoFbDwxijHFGumBMqs
 iRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gN2NTbMjgP0TcnnxiZaPLNnmbetdQsD4pX+fgmFtE3Q=;
 b=FpnM8qmE0EbwC0JkulV0mV+OMHD8iJo4WDmPLb8+aYUaMQZnHIkJm9mfKGjWzwB1oM
 RKccD8rhdJly/tMZqbQ7Zfa9I1i3UoLB3KPQkaTx665fkN1svqSBcQj7yNxEQ8Mc7Ast
 t3ddXspoWFGacTj8S/tVnEycP8yK5AXhquuHppNVscXSFWP8te3hkjEJoe5XgKzWrPdj
 luLCVF5XO0h7zTzF4KWUK9Igdu51Y/c6WDlFPpEVnEnHWjEMYQgLfw39w52ftzgSl5PJ
 ENTr/SanwuqEpDUPgS9xBT4akhdTBgg78By/mtbmqjJ2xmIc/u+BoXbOYgTBfJyun68x
 CyJA==
X-Gm-Message-State: APjAAAV8TlvgbEqvXDZ/eJYiMjMShoCOn0TtU/2eB0hW/lFkxlWm9p/B
 dlB1njSoF6Zi1+3/IxqOPXO5ndZrB3HV4xp9j1odp0fZ
X-Google-Smtp-Source: APXvYqwr1+MClcxRpR3QHoRQhxy47KjKeLLybBqw5qgcnJE8csTvsL6em13Q1xnfHMHbwVL6v1kOD7JNmc6qUPoOElc=
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr48873905pjb.115.1563895719034; 
 Tue, 23 Jul 2019 08:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <1563807552-23498-2-git-send-email-akinobu.mita@gmail.com>
 <201907231041.n2ZW7zai%lkp@intel.com>
In-Reply-To: <201907231041.n2ZW7zai%lkp@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 24 Jul 2019 00:28:28 +0900
Message-ID: <CAC5umyi0O7iXW3x4vE2yTgjTkerKn+VQHJVOwdD7qPJnwJUyAQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] block: introduce LED block device activity trigger
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_082839_551428_EAF57943 
X-CRM114-Status: GOOD (  13.54  )
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

MjAxOeW5tDfmnIgyM+aXpSjngaspIDExOjIyIGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPjoKPgo+IEhpIEFraW5vYnUsCj4KPiBJIGxvdmUgeW91ciBwYXRjaCEgWWV0IHNvbWV0aGlu
ZyB0byBpbXByb3ZlOgo+Cj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBsaW51cy9tYXN0ZXJd
Cj4gW2Nhbm5vdCBhcHBseSB0byB2NS4zLXJjMSBuZXh0LTIwMTkwNzIyXQo+IFtpZiB5b3VyIHBh
dGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25nIGdpdCB0cmVlLCBwbGVhc2UgZHJvcCB1cyBhIG5v
dGUgdG8gaGVscCBpbXByb3ZlIHRoZSBzeXN0ZW1dCj4KPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHVi
LmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvQWtpbm9idS1NaXRhL2Jsb2NrLWludHJvZHVjZS1M
RUQtYmxvY2stZGV2aWNlLWFjdGl2aXR5LXRyaWdnZXIvMjAxOTA3MjMtMDc0OTU2Cj4gY29uZmln
OiB4ODZfNjQtcmhlbCAoYXR0YWNoZWQgYXMgLmNvbmZpZykKPiBjb21waWxlcjogZ2NjLTcgKERl
YmlhbiA3LjQuMC0xMCkgNy40LjAKPiByZXByb2R1Y2U6Cj4gICAgICAgICAjIHNhdmUgdGhlIGF0
dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+ICAgICAgICAgbWFrZSBBUkNIPXg4
Nl82NAo+Cj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZwo+
IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPgo+IEFsbCBl
cnJvcnMgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToKPgo+ICAgIEluIGZpbGUgaW5jbHVkZWQg
ZnJvbSBkcml2ZXJzL3Njc2kvbXZzYXMvbXZfOTR4eC5jOjExOjA6Cj4gPj4gZHJpdmVycy9zY3Np
L212c2FzL212Xzk0eHguaDoyNzg6MjogZXJyb3I6IHJlZGVjbGFyYXRpb24gb2YgZW51bWVyYXRv
ciAnTEVEX09GRicKPiAgICAgIExFRF9PRkYgPSAwLAo+ICAgICAgXn5+fn5+fgo+ICAgIEluIGZp
bGUgaW5jbHVkZWQgZnJvbSBpbmNsdWRlL2xpbnV4L2dlbmhkLmg6MjA6MCwKPiAgICAgICAgICAg
ICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9ibGtkZXYuaDoxMSwKPiAgICAgICAgICAgICAg
ICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9ibGstbXEuaDo1LAo+ICAgICAgICAgICAgICAgICAg
ICAgZnJvbSBpbmNsdWRlL3Njc2kvc2NzaV9ob3N0Lmg6MTEsCj4gICAgICAgICAgICAgICAgICAg
ICBmcm9tIGluY2x1ZGUvbGludXgvbGliYXRhLmg6MjEsCj4gICAgICAgICAgICAgICAgICAgICBm
cm9tIGluY2x1ZGUvc2NzaS9saWJzYXMuaDoxNiwKPiAgICAgICAgICAgICAgICAgICAgIGZyb20g
ZHJpdmVycy9zY3NpL212c2FzL212X3Nhcy5oOjI3LAo+ICAgICAgICAgICAgICAgICAgICAgZnJv
bSBkcml2ZXJzL3Njc2kvbXZzYXMvbXZfOTR4eC5jOjEwOgo+ICAgIGluY2x1ZGUvbGludXgvbGVk
cy5oOjI3OjI6IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2YgJ0xFRF9PRkYnIHdhcyBoZXJl
Cj4gICAgICBMRURfT0ZGICA9IDAsCj4gICAgICBefn5+fn5+Cj4gICAgSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIGRyaXZlcnMvc2NzaS9tdnNhcy9tdl85NHh4LmM6MTE6MDoKPiA+PiBkcml2ZXJzL3Nj
c2kvbXZzYXMvbXZfOTR4eC5oOjI3OToyOiBlcnJvcjogcmVkZWNsYXJhdGlvbiBvZiBlbnVtZXJh
dG9yICdMRURfT04nCj4gICAgICBMRURfT04gPSAxLAo+ICAgICAgXn5+fn5+Cj4gICAgSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGluY2x1ZGUvbGludXgvZ2VuaGQuaDoyMDowLAo+ICAgICAgICAgICAg
ICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L2Jsa2Rldi5oOjExLAo+ICAgICAgICAgICAgICAg
ICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L2Jsay1tcS5oOjUsCj4gICAgICAgICAgICAgICAgICAg
ICBmcm9tIGluY2x1ZGUvc2NzaS9zY3NpX2hvc3QuaDoxMSwKPiAgICAgICAgICAgICAgICAgICAg
IGZyb20gaW5jbHVkZS9saW51eC9saWJhdGEuaDoyMSwKPiAgICAgICAgICAgICAgICAgICAgIGZy
b20gaW5jbHVkZS9zY3NpL2xpYnNhcy5oOjE2LAo+ICAgICAgICAgICAgICAgICAgICAgZnJvbSBk
cml2ZXJzL3Njc2kvbXZzYXMvbXZfc2FzLmg6MjcsCj4gICAgICAgICAgICAgICAgICAgICBmcm9t
IGRyaXZlcnMvc2NzaS9tdnNhcy9tdl85NHh4LmM6MTA6Cj4gICAgaW5jbHVkZS9saW51eC9sZWRz
Lmg6Mjg6Mjogbm90ZTogcHJldmlvdXMgZGVmaW5pdGlvbiBvZiAnTEVEX09OJyB3YXMgaGVyZQo+
ICAgICAgTEVEX09OICA9IDEsCj4gICAgICBefn5+fn4KClRoZSBtdnNhcyBkcml2ZXIgZGVjbGFy
ZXMgTEVEXyogZW51bXMgZm9yIGVudW0gc2dwaW9fbGVkX3N0YXR1cy4KSSdtIGdvaW5nIHRvIHBy
ZXBhcmUgYSBwYXRjaCB0aGF0IGFkZHMgJ1NHUElPXycgcHJlZml4IHRvIHRoZXNlIGVudW1zLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

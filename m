Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047BA1C9FA
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 16:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dMrJP/s90iseF/5q4T3Zir2hG9Qx/6fzEPOKq3FBTo=; b=QO4lIu+Qcf2lUz
	atou7j5GayqQtRxLAEFCA7xzWO/xlVxCj5RBhqAOkVL9a8WOzJs/osOGrN8xFdGbAGyV1Nz841gYP
	I6S5SScC1Go5HWg4Qe/0BGB1XF1ZXkTR13/VrraazBQ2XS1oVmQdAiiSL0RHW8xyJiu646uFTEhIq
	oQWFwFmE4+iziGPyQpp0Gqoxf003EvyN72Exn+fhgPrFr+mLPD81yzMzBI2UDJvHL5HBo1DkfCyLu
	DGzkEEDp1yiss+mwEj6t4XnGdOns89OTAlyvM7jXNXzmGd1bd9ELzbIBoUnVSIIA6HatWtbpDJUVy
	+j2qgExO4p4rZzIkunLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQY30-0004Kj-JT; Tue, 14 May 2019 14:04:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQY2v-0004KO-Rl
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 14:04:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so9215907pfa.1
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 07:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A8jWje4NgcT6MshH45a0i40xgDC1LZofezqqjj0Ab5Y=;
 b=pydUdVtcvkl4WjYE6VFJSrN4kDpWkRSTw1NBe7MssMeEHZ6ZsggZmJbmNuOqLrSp40
 3rOwaurGQyLmgvoQi2+q1hK24SVNEuQJjnSgLXMnxpaGI1zPFia+UFP/j0MaoWshxF6C
 mbjWq2fHWa7nsTW/U74hhlcsRwAeixNS6Tw+RSInNmelyLnZ39Vf7nnmH1vgpmD0jKK/
 LLxDvoVhnkCq6o/EWDkCa1ho8NGMXI4vrbzEfFqIWjygYOYELmZrH+z4Ff3Bd8WQakjh
 hqRQY/UI97N9lBoOIGHk6r/fqIrDb6KzWBzRXIUlJxOF65cNXSQB99tETWcqdcXEWP4j
 A72Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A8jWje4NgcT6MshH45a0i40xgDC1LZofezqqjj0Ab5Y=;
 b=naVm6GVqGtuYeNpWnOnL/9u13R2cEHxl+4tJ7yr0pZPFgVbvJQ1QjOz5ccwXm/B5Ui
 QbkZiw6tzN1cxGoYjH0eWWs9uePwM4UJ98OKB9YRiyZCg0qBG5Bj8JEiU/CVSm6hBkX0
 9E8+XYgnx0Mt7oxDcwmfFey91kq/Wuk8g/J5YIghJwPS3KT1zvBbgS8OaHgDcJ8TmPvM
 X9ySTTk8LfmkSf4phV1RJf9Qwg8TmYc+kG5c2nqWug8nxKKAWBbqR2lVGJRDu5tEf3Bx
 sOOgqaSYldpZkm/UEgQF4XUh/wJ0y4k2t4JMQjkLvR86uRgZJ/E4m2nJ/MZp4HpS5FNP
 ES0Q==
X-Gm-Message-State: APjAAAXcm6T/+2jkH8TFEi/3FOu+2xqYWsvbx4RqmsPO1zjEh4leIgU6
 OsT3UP3ojyXNl0uEvH9IZyM8nqdN60xUsnltlPI=
X-Google-Smtp-Source: APXvYqwGzU9z2y3Okwp6KevtAW9y0Jsw9Hlcm2aHeEkxnsnDUrKXTdXrJXdF3qw0vek9g67Nd71rQyIhnL05ez6NnqA=
X-Received: by 2002:a65:480c:: with SMTP id h12mr37371134pgs.266.1557842684846; 
 Tue, 14 May 2019 07:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-5-git-send-email-akinobu.mita@gmail.com>
 <SN6PR04MB4527A2B52661330D519FD618860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB4527A2B52661330D519FD618860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 14 May 2019 23:04:33 +0900
Message-ID: <CAC5umyjjjuj04mkBd3O23Stjs9s56r+F_XTSimrJbnasy5PBcQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] nvme: add basic facility to get telemetry log page
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_070445_948073_6980C04B 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kenneth Heitke <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNOaXpSjngaspIDA6MzQgQ2hhaXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEu
S3Vsa2FybmlAd2RjLmNvbT46Cj4KPiBPbiAwNS8xMi8yMDE5IDA4OjU1IEFNLCBBa2lub2J1IE1p
dGEgd3JvdGU6Cj4gPiBUaGlzIGFkZHMgdGhlIHJlcXVpcmVkIGRlZmluaXNpb25zIHRvIGdldCB0
ZWxlbWV0cnkgbG9nIHBhZ2UuCj4gcy9kZWZpbmlzaW9ucy9kZWZpbml0aW9ucy8KCk9LLgoKPiA+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L252bWUuaCBiL2luY2x1ZGUvbGludXgvbnZtZS5o
Cj4gPiBpbmRleCBjNDA3MjBjLi44YzBiMjlkIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51
eC9udm1lLmgKPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvbnZtZS5oCj4gPiBAQCAtMjk0LDYgKzI5
NCw4IEBAIGVudW0gewo+ID4gICAgICAgTlZNRV9DVFJMX09BQ1NfRElSRUNUSVZFUyAgICAgICAg
ICAgICAgID0gMSA8PCA1LAo+ID4gICAgICAgTlZNRV9DVFJMX09BQ1NfREJCVUZfU1VQUCAgICAg
ICAgICAgICAgID0gMSA8PCA4LAo+ID4gICAgICAgTlZNRV9DVFJMX0xQQV9DTURfRUZGRUNUU19M
T0cgICAgICAgICAgID0gMSA8PCAxLAo+ID4gKyAgICAgTlZNRV9DVFJMX0xQQV9FWFRFTkRFRF9E
QVRBICAgICAgICAgICAgID0gMSA8PCAyLAo+ID4gKyAgICAgTlZNRV9DVFJMX0xQQV9URUxFTUVU
UllfTE9HICAgICAgICAgICAgID0gMSA8PCAzLAo+ID4gICB9Owo+ID4KPiA+ICAgc3RydWN0IG52
bWVfbGJhZiB7Cj4gPiBAQCAtMzk2LDYgKzM5OCwyMCBAQCBlbnVtIHsKPiA+ICAgICAgIE5WTUVf
TklEVF9VVUlEICAgICAgICAgID0gMHgwMywKPiA+ICAgfTsKPiA+Cj4gPiArc3RydWN0IG52bWVf
dGVsZW1ldHJ5X2xvZ19wYWdlX2hkciB7Cj4gPiArICAgICBfX3U4ICAgIGxwaTsgLyogTG9nIHBh
Z2UgaWRlbnRpZmllciAqLwo+ID4gKyAgICAgX191OCAgICByc3ZkWzRdOwo+ID4gKyAgICAgX191
OCAgICBpZWVfb3VpWzNdOwo+ID4gKyAgICAgX19sZTE2ICBkYWxiMTsgLyogRGF0YSBhcmVhIDEg
bGFzdCBibG9jayAqLwo+ID4gKyAgICAgX19sZTE2ICBkYWxiMjsgLyogRGF0YSBhcmVhIDIgbGFz
dCBibG9jayAqLwo+ID4gKyAgICAgX19sZTE2ICBkYWxiMzsgLyogRGF0YSBhcmVhIDMgbGFzdCBi
bG9jayAqLwo+ID4gKyAgICAgX191OCAgICByc3ZkMVszNjhdOwo+ID4gKyAgICAgX191OCAgICBj
dHJsYXZhaWw7IC8qIENvbnRyb2xsZXIgaW5pdGlhdGVkIGRhdGEgYXZhaWw/Ki8KPiA+ICsgICAg
IF9fdTggICAgY3RybGRnbjsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgdGVsZW1ldHJ5IERhdGEg
R2VuICMgKi8KPiA+ICsgICAgIF9fdTggICAgcnNuaWRlbnRbMTI4XTsKPiA+ICsgICAgIF9fdTgg
ICAgdGVsZW1ldHJ5X2RhdGFhcmVhWzBdOwo+ID4gK307Cj4gPiArCj4KPiBuaXQ6LSBUaGFua3Mg
Zm9yIGFkZGluZyB0aGUgY29tbWVudHMsIGNhbiB5b3UgcGxlYXNlIGFsaWduIGFsbCB0aGUgYWJv
dmUKPiBjb21tZW50cyBsaWtlIDotCgpPSy4gIEknbGwgc2VuZCBhIHBhdGNoIGZvciBudm1lLWNs
aSBhdCBmaXJzdC4KCj4gK3N0cnVjdCBudm1lX3RlbGVtZXRyeV9sb2dfcGFnZV9oZHIgewo+ICsg
ICAgICAgX191OCAgICBscGk7ICAgICAgICAgICAgLyogTG9nIHBhZ2UgaWRlbnRpZmllciAqLwo+
ICsgICAgICAgX191OCAgICByc3ZkWzRdOwo+ICsgICAgICAgX191OCAgICBpZWVfb3VpWzNdOwo+
ICsgICAgICAgX19sZTE2ICBkYWxiMTsgICAgICAgICAgLyogRGF0YSBhcmVhIDEgbGFzdCBibG9j
ayAqLwo+ICsgICAgICAgX19sZTE2ICBkYWxiMjsgICAgICAgICAgLyogRGF0YSBhcmVhIDIgbGFz
dCBibG9jayAqLwo+ICsgICAgICAgX19sZTE2ICBkYWxiMzsgICAgICAgICAgLyogRGF0YSBhcmVh
IDMgbGFzdCBibG9jayAqLwo+ICsgICAgICAgX191OCAgICByc3ZkMVszNjhdOwo+ICsgICAgICAg
X191OCAgICBjdHJsYXZhaWw7ICAgICAgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgZGF0YSBhdmFp
bD8qLwo+ICsgICAgICAgX191OCAgICBjdHJsZGduOyAgICAgICAgLyogQ29udHJvbGxlciBpbml0
aWF0ZWQgdGVsZW1ldHJ5IERhdGEKPiBHZW4gIyAqLwo+ICsgICAgICAgX191OCAgICByc25pZGVu
dFsxMjhdOwo+ICsgICAgICAgX191OCAgICB0ZWxlbWV0cnlfZGF0YWFyZWFbMF07Cj4gK307Cj4g
KwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

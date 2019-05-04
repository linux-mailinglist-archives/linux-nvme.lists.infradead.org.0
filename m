Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A0213AA1
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 16:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XmSAfUolusWGaYTMMHs2B0owbh84hGVo2rg6P7VEgRM=; b=mqAgomvTbIBuHEPr6Dy/7pFcs
	LrIt3F75Preq3xrGNnmGxfSMu6/SwZo+CXPfUsLuYeTEpBjYwNRxX6oUMnH3ehB7qKIo1X269bL7d
	dEXhKlUdDq9WsKNJmHB/zPkABJaEF/7fnXHkDZDoYXqN+nFN57hP1Uw8DJk8iPT/GdhJIHBuTILiS
	pDDC/rBt7cQgOq0mDNpuH0rvCDMU1I8MlRQAitDPDi31V+6yRiGGdD5vJBaxBLdUUmp6O8BieO/t+
	851AF3YqBsypOWKsTLG3SBpQvQfvOb84zxDl5riLjTkwW1QKvPQ0c74M3C26RvkNc725dIfr5saMD
	hEgRTCk1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvo5-0000lS-K9; Sat, 04 May 2019 14:38:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvo0-0000kx-60
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 14:38:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id y13so4380222pfm.11
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 07:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dxXlXPIHOiLEpa62Dvte4CGqyLQwPemJ6HrBcCCpswo=;
 b=gCT1/s8nmlYKVhGuab7b1b/q6N5FcSvjRhXig3XmZHCMS+n2uaBpRMEPH5K5RrCOjn
 RygCg2uYp+K4ALI+AYOXKkDWOomFpPyPYbFD8zy8RZ/UdU3OSZJ9YqnmKqlopSxbF32V
 RdPUeOh5gk0vk+zeHFufWbmCRYHflgYv1TXe+5taBhD8bhY47hKoCFIV7t/LhgxSStGA
 l7rU8kS5NbygAivqyXzIXkIqV9WkOf+Euq7L7PpZKFfKs+NjYfunkOPqneqLiqGfHGhx
 JMER+4zr3cl41pBuwswV/cY7giVmo2Dtx9SplATZeqcFpDUBbb0lrBFi48rLUajmqOPs
 tcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dxXlXPIHOiLEpa62Dvte4CGqyLQwPemJ6HrBcCCpswo=;
 b=P50dWcDtWWQ9G8ajz1LDgNrKu9XPTvtSFgKPrOxilelQiw9OoTKoQDaL1h/rMe4WZI
 iRA0HT5KGfTHOTizz/MRTkjnzPR81STBCL06Y2yhD61PnhiK4f05aS9zY5yJ3C9F32B0
 98zlOI0oit7p4VBZ4anGnHEbJJnXn26WhN3wE7fc/JJjC4lEi8xqkLd8RNAJ3UHBWjL+
 +B6I1A3mlzV6sUVYG7CLN3LDQHcGyiwT2eHUWikEw8i22scR93nIxpy8ymAcPsLgVtPc
 yra8nVqIx+GniUNxq4lf7vNyFiIdzkWbcElTqTyA1C5JRhSSkH4uJMOXZxLxmLWWkKZe
 +5ng==
X-Gm-Message-State: APjAAAUcCPbZOrwgOjmQjvNa6tjdqZo/ME6QcVEzuYJ47Ysic9BJrpMH
 BaB1XvNbeRzmG2RIsqPywLc=
X-Google-Smtp-Source: APXvYqztLpaOJbeitHdyXx91AXCQ7vkzoCZ5cNm3xDxC29DA7atORy+tKhl/hAnuUM7vOrR9Mg0M9Q==
X-Received: by 2002:aa7:8458:: with SMTP id r24mr19709400pfn.231.1556980703466; 
 Sat, 04 May 2019 07:38:23 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm6957050pgk.10.2019.05.04.07.38.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:38:22 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme-pci: add device coredump support
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
 <66a5d068-47b1-341f-988f-c890d7f01720@gmail.com>
 <CAC5umyjsAh7aZ8JEh8=QMXpNwRdnxxfdPBDwmuVKfafG+rT-PA@mail.gmail.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <d0de1c5d-1168-086c-cc16-7d33fd307cd3@gmail.com>
Date: Sat, 4 May 2019 23:38:19 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAC5umyjsAh7aZ8JEh8=QMXpNwRdnxxfdPBDwmuVKfafG+rT-PA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_073824_220363_AE276957 
X-CRM114-Status: GOOD (  15.82  )
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
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS80LzE5IDExOjI2IFBNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gMjAxOeW5tDXmnIg05pel
KOWcnykgMTk6MDQgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT46Cj4+Cj4+IEhp
LCBBa2lub2J1LAo+Pgo+PiBSZWdhcmRsZXNzIHRvIHJlcGx5IG9mIHRoZSBjb3ZlciwgZmV3IG5p
dHMgaGVyZS4KPj4KPj4gT24gNS8yLzE5IDU6NTkgUE0sIEFraW5vYnUgTWl0YSB3cm90ZToKPj4+
ICsKPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG52bWVfcmVnIG52bWVfcmVnc1tdID0gewo+Pj4g
KyAgICAgeyBOVk1FX1JFR19DQVAsICAgICAgICAgImNhcCIsICAgICAgICAgIDY0IH0sCj4+PiAr
ICAgICB7IE5WTUVfUkVHX1ZTLCAgICAgICAgICAidmVyc2lvbiIsICAgICAgMzIgfSwKPj4KPj4g
V2h5IGRvbid0IHdlIGp1c3QgZ28gd2l0aCAidnMiIGluc3RlYWQgb2YgZnVsbCBuYW1lIG9mIGl0
IGp1c3QgbGlrZQo+PiB0aGUgb3RoZXJzLgo+IAo+IEkgdHJpZWQgdG8gaW1pdGF0ZSB0aGUgb3V0
cHV0IG9mICdudm1lIHNob3ctcmVncycuCgpPa2F5LgoKPiAKPj4+ICsgICAgIHsgTlZNRV9SRUdf
SU5UTVMsICAgICAgICJpbnRtcyIsICAgICAgICAzMiB9LAo+Pj4gKyAgICAgeyBOVk1FX1JFR19J
TlRNQywgICAgICAgImludG1jIiwgICAgICAgIDMyIH0sCj4+PiArICAgICB7IE5WTUVfUkVHX0ND
LCAgICAgICAgICAiY2MiLCAgICAgICAgICAgMzIgfSwKPj4+ICsgICAgIHsgTlZNRV9SRUdfQ1NU
UywgICAgICAgICJjc3RzIiwgICAgICAgICAzMiB9LAo+Pj4gKyAgICAgeyBOVk1FX1JFR19OU1NS
LCAgICAgICAgIm5zc3IiLCAgICAgICAgIDMyIH0sCj4+PiArICAgICB7IE5WTUVfUkVHX0FRQSwg
ICAgICAgICAiYXFhIiwgICAgICAgICAgMzIgfSwKPj4+ICsgICAgIHsgTlZNRV9SRUdfQVNRLCAg
ICAgICAgICJhc3EiLCAgICAgICAgICA2NCB9LAo+Pj4gKyAgICAgeyBOVk1FX1JFR19BQ1EsICAg
ICAgICAgImFjcSIsICAgICAgICAgIDY0IH0sCj4+PiArICAgICB7IE5WTUVfUkVHX0NNQkxPQywg
ICAgICAiY21ibG9jIiwgICAgICAgMzIgfSwKPj4+ICsgICAgIHsgTlZNRV9SRUdfQ01CU1osICAg
ICAgICJjbWJzeiIsICAgICAgICAzMiB9LAo+Pgo+PiBJZiBpdCdzIGdvaW5nIHRvIHN1cHBvcnQg
b3B0aW9uYWwgcmVnaXN0ZXJzIGFsc28sIHRoZW4gd2UgY2FuIGhhdmUKPj4gQlAtcmVsYXRlZCB0
aGluZ3MgKEJQSU5GTywgQlBSU0VMLCBCUE1CTCkgaGVyZSBhbHNvLgo+IAo+IEknbSBnb2luZyB0
byBjaGFuZ2UgdGhlIHJlZ2lzdGVyIGR1bXAgaW4gYmluYXJ5IGZvcm1hdCBqdXN0IGxpa2UKPiAn
bnZtZSBzaG93LXJlZ3MgLW8gYmluYXJ5JyBkb2VzLiAgU28gd2UnbGwgaGF2ZSByZWdpc3RlcnMg
ZnJvbSAwMGggdG8gNEZoLgo+IAoKR290IGl0LgoKQW5kIG5vdyBJIGNhbiBzZWUgdGhvc2UgdHdv
IGNvbW1hbmRzIGBudm1lIHNob3ctcmVnc2AgYW5kCmBudm1lIHNob3ctcmVncyAtbyBiaW5hcnlg
IGhhdmUgZGlmZmVyZW50IHJlc3VsdHMgZm9yIHRoZSByZWdpc3RlcgpyYW5nZS4gIFRoZSBiaW5h
cnkgb3V0cHV0IGNvdmVycyBqdXN0IDB4NTAgc2l6ZSwgYnV0IGl0IHNob3dzIGFsbCB0aGUKcmVn
aXN0ZXJzIGluY2x1ZGluZyBCUC1yZWxhdGVkIHRoaW5ncyBpbiBub3JtYWwgJiYganNvbiBmb3Jt
YXQuCgpBbnl3YXksIEknbGwgcHJlcGFyZSBhIHBhdGNoIGZvciBudm1lLWNsaSB0byBzdXBwb3J0
IGJpbmFyeSBvdXRwdXQKZm9ybWF0IHRvIGNvdmVyIEJQIHRoaW5ncyBhbHNvLgoKVGhhbmtzLCBm
b3IgeW91ciByZXBseS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK

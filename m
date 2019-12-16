Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8230120933
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Dec 2019 16:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X4gHwoDzR+jXG5IV/1GNpKzB8fHAgHtaGgk+t6uZyQM=; b=unf9Mttp67sByDB0bgSWC5jL7K
	IfQLFLiyTT2UkNa+F7xv+9g/bSNplkwVE70Yev5P1pMVGOz9w/20fiK7mUO8kgSpCtDF5Sog5wVgw
	c0/5EmxEHTv+9Vs0jbArXqhc1SOuG5ovyAiy49rxmVQEyf6N0dG3OB+eO6h9N9GPs+73u53E0rek6
	vngKiSi2B7ZRT+V3SSy069OE4qPD65E3oI6WH0sufUsNBlBL1pErZ2ksRN+67uQ1JRh6V5PaIKRV3
	eVbIj0KECXGH1+7TckCgNbQYtCkWueOqWdxQ8XFDA9a/zzFOLPyYLy1biaI78q3O2TydVAc5U++qz
	EKehj6dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrtb-0006XS-PC; Mon, 16 Dec 2019 15:02:51 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrtX-0006Wn-96
 for linux-nvme@lists.infradead.org; Mon, 16 Dec 2019 15:02:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id j6so7184079lja.2
 for <linux-nvme@lists.infradead.org>; Mon, 16 Dec 2019 07:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zUUr1fG3xEuWKKW5t9OnMBrPgODppeeCh9UkxMRRg1c=;
 b=ut8EkHmdreDv7agrK5b9sBc9nmef6QACxq02foZ9iEUwmkMQZWnEpeLjaRddXJ5gcY
 mRBYuQ7IGb7HYambpnOwIyocYa5fYbR8p20iYW+kUl1zJLBSP6LGJFGqtT0DwUnTVsvp
 rktrBgqgAjavYFNjrUjYTzi3s76d8h1wEn9rmVy5FT6gGmhp9Kf31VPwCAtmwddDdBkV
 Fn8rZ6KyPhw8j/AaHU0QyvilMDZTrkcMI4yLBuqNCcUDXEKYOT/0wyyPMo5qwOoPJYMQ
 mXw/Dxow9dMxuPtNj4wW7pjhSoJlzDux1cWmnia5nz8FVlHRc+a2Jnqt028D0n3O2xGi
 jt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=zUUr1fG3xEuWKKW5t9OnMBrPgODppeeCh9UkxMRRg1c=;
 b=CqS4w+CDlewQ5JIIbaPsKVtLmqkBQ2prbdwJXE04dboxI8DQ8BnpcVJtl5PGEy/rp7
 YmdUiTiyRwnUgfISKF6gqiH8RPsqNSsmuBnNRsQgU3YCVljn426ppFrPoFDVnFHF0vTJ
 gVT6tjHFkvFPHLga0oTT6orhmmo5ZIAwp2YtwGhZTRX2AlJ+JoZ/DLyzRLLjXjWoD5N+
 r8ViUUoCnm2VfpDtLY6tKkc845zkXkq1yWUyw9pQp4KABKEhz6G1zB03KKxrbqhwBriZ
 mHUFAO6LxZeaLbmhVsYJPrZkgeNVTsUXk4WTIf9iRvPh7HYXSMkkuXVnecnYqdMhZroC
 9lzA==
X-Gm-Message-State: APjAAAWBcsk0KyYQZKM5rRkDlJ1WeNqta03GvWYBAEeul1zWGYV7EgSu
 f9spq4CC8sRS6S8kSYmXxnUpHAloWc/kWAgyJXU=
X-Google-Smtp-Source: APXvYqzc0wEJbZ7G36zOsrHJBThcbUlDuyW5JWdridpwfRBGfsP8BBeBY7etAdaUybqG2hVjAfanp/s4TuEHqKFelsw=
X-Received: by 2002:a2e:556:: with SMTP id 83mr20318081ljf.127.1576508564435; 
 Mon, 16 Dec 2019 07:02:44 -0800 (PST)
MIME-Version: 1.0
References: <mailman.18297.1576387017.2486.linux-nvme@lists.infradead.org>
 <20191216032540.GY32169@bombadil.infradead.org>
In-Reply-To: <20191216032540.GY32169@bombadil.infradead.org>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 17 Dec 2019 00:02:32 +0900
Message-ID: <CAC5umyiZGzu3h9tUrSRWh6c6WLyUvXtdDvThw+VHoTjffBVNZA@mail.gmail.com>
Subject: Re: [PATCH v4 01/12] add helpers for kelvin to/from Celsius conversion
To: Matthew Wilcox <willy@infradead.org>, 
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>, 
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 linux-iio <linux-iio@vger.kernel.org>, 
 LKML <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_070247_318380_2D64F96A 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEy5pyIMTbml6Uo5pyIKSAxMjoyNSBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFk
ZWFkLm9yZz46Cj4KPiA+ICtzdGF0aWMgaW5saW5lIGxvbmcgbWlsbGlfa2VsdmluX3RvX21pbGxp
Y2Vsc2l1cyhsb25nIHQpCj4gPiArewo+ID4gKyAgICAgcmV0dXJuIHQgKyBBQlNPTFVURV9aRVJP
X01JTExJQ0VMU0lVUzsKPiA+ICt9Cj4KPiBXaHkgaXMgdGhlcmUgYW4gdW5kZXJzY29yZSBiZXR3
ZWVuICdtaWxsaScgYW5kICdrZWx2aW4nLCBidXQgbm90IGJldHdlZW4KPiAnbWlsbGknIGFuZCAn
Y2Vsc2l1cyc/CgpCZWNhdXNlIHRoZXNlIGZ1bmN0aW9uIG5hbWVzIGFyZSBkZXJpdmVkIGZyb20g
dGhlIGV4aXN0aW5nIG1hY3JvcyBpbgpsaW51eC90aGVybWFsLmguCgpEb2VzIGFueW9uZSBoYXZl
IGEgcHJlZmVyZW5jZSBmb3IgdGhlIHVuZGVyc2NvcmUgaW4gdGhlc2UgZnVuY3Rpb24gbmFtZXM/
CgoxLiB1bmRlcnNjb3JlIGJldHdlZW4gdW5pdCBwcmVmaXggYW5kICdrZWx2aW4sCiAgIG5vIHVu
ZGVyc2NvcmUgYmV0d2VlbiB1bml0IHByZWZpeCBhbmQgJ2NlbHNpdXMnCiAgIChlLmcuIG1pbGxp
X2tlbHZpbl90b19taWxsaWNlbHNpdXMsIGRlY2lfa2VsdmluX3RvX21pbGxpY2Vsc2l1cywgLi4u
KQoKMi4gdW5kZXJzY29yZSBiZXR3ZWVuIHVuaXQgcHJlZml4IGFuZCAna2VsdmluLAogICB1bmRl
cnNjb3JlIGJldHdlZW4gdW5pdCBwcmVmaXggYW5kICdjZWxzaXVzJwogICAoZS5nLiBtaWxsaV9r
ZWx2aW5fdG9fbWlsbGlfY2Vsc2l1cywgZGVjaV9rZWx2aW5fdG9fbWlsbGlfY2Vsc2l1cywgLi4u
KQoKMy4gbm8gdW5kZXJzY29yZSBiZXR3ZWVuIHVuaXQgcHJlZml4IGFuZCAna2VsdmluLAogICBu
byB1bmRlcnNjb3JlIGJldHdlZW4gdW5pdCBwcmVmaXggYW5kICdjZWxzaXVzJwogICAoZS5nLiBt
aWxsaWtlbHZpbl90b19taWxsaWNlbHNpdXMsIGRlY2lrZWx2aW5fdG9fbWlsbGljZWxzaXVzLCAu
Li4pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

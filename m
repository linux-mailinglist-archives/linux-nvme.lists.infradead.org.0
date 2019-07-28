Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D16577E48
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 08:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXq6efKzTCCa6ECWvSgWX1Y7zck04+5SXhn7XzALPVw=; b=jBos6W+JcYS7uh
	xTeFXAjh9R1Lhu3af1l+dWKpL+70FYCTcE8+OA3nddFNnHiZqWJFt6u6xnwyKcUk4wPiaU2ZRbXhQ
	4DVmEYs2Z7TPju38W1Q2inIzdswqwvmWfwPnI7t7ICl1oY7CLgTkBLVyow4H72HkjYxXsPdYiGeV3
	F/9vqJehEx9OPccEVceR/VqMPSMILTv59EbNAAYjK8/v2ULMV3F0ZArm7fnn0hgkuKfdSZMWK9zEF
	c7BR4x5SWpC1qf6mPzxwq4Nmhlt6PCXzxbSS9bN0Qm0p+a8ZNsm57xoZLDvCjc6hazgmDZkDzC1mD
	DJ/A4u8Y8mwQSof9gESQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrcnt-0001wc-Cb; Sun, 28 Jul 2019 06:37:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrcnR-0001op-Bu
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 06:36:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so26301319plt.1
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 23:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tlNC2HLe2T7i0uYzFIEwN5l4/fJL6IZvYHeGvqaiK1o=;
 b=tIEaEDC4hCic0EiufS0plpqpVxLu2ErcTm1OFQPDqXeCY2mvCpssVPOQbub1J7Ofpl
 gqDhEeJuSuQPBPBJsDHLG1PESDRDzuWWGPD0vwNiJAWvsbichLLFuHa+p06r9aPoECFO
 xb8t5pfshURHsIgHJddE05w8iF94dJXbbPG2CQAEAVTJFD0cD3fYU0MktZ0kvYt/2MAQ
 OznCejWbhHaY535nLWf6wi26McL1JlcHVp7hdMxb6DI+E0a0LPwkBNyVwODtUGiOnWTZ
 d3j1lwnmnI4Yqwv4HTq++HVbiOTXBcLwBnR12JR9mK1vYZT4cRit7DDNWvHIwbnT3tcV
 otyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tlNC2HLe2T7i0uYzFIEwN5l4/fJL6IZvYHeGvqaiK1o=;
 b=iMJZ5dQuMKqCOmK1oHqgW+NDp/I08rW13ZwYyQ5FCPk084nobd8BDiOUk2Y6RzXFua
 JIEEcIDGkdjWZi3ufItk0pL9GlRJl9Hj5e5jgwnFgTDbArIS4AcgrDeAb46gSa+Q/cDP
 FWZQahJ1GK+2c1FXYUIbSslxKVFKWU4pVIEUomKNwU40Pkt7i9F6rZn9lnGM1XWGbwmz
 OXrpYCHlNAy5ZQYOMWIw9GvFjvS0alX2eSUxvMTHsq7nC5UiBBbfNk+yv/fHaqUvB3kW
 Ivw3CpCLqYO7xGw/w7l4kfcl+mTdQ27BIFE9pr0J1CygZ9aPOqQ2GhTQMSDcPdRCFRWN
 sArA==
X-Gm-Message-State: APjAAAXZp7Lxk9qLoOoZI3h9lgpwD9AB0PL4Xhh+THFDKYY7b43jnLNS
 xrq130teJGV64MuPbJ/v3kX2BDsqRx8=
X-Google-Smtp-Source: APXvYqxnupbL+qGqCdyAo0xBhPMCc2zN5Q0OV2dEysUY0frnYdYekna97eZe4vQTwDLTmxYvk7/7Cg==
X-Received: by 2002:a17:902:8b82:: with SMTP id
 ay2mr61661792plb.164.1564295800499; 
 Sat, 27 Jul 2019 23:36:40 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m4sm69919497pgs.71.2019.07.27.23.36.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 23:36:39 -0700 (PDT)
Date: Sun, 28 Jul 2019 15:36:37 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: Re: [PATCH V3 3/3] lnvm: introduce alias geometry for id-ns for lnvm
Message-ID: <20190728063637.GJ24390@minwoo-desktop>
References: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
 <20190728063516.17732-4-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728063516.17732-4-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_233641_487210_FCC79DCA 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <klaus@birkelund.eu>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDctMjggMTU6MzU6MTYsIE1pbndvbyBJbSB3cm90ZToKPiBOb3cgd2UgaGF2ZSAyLjAg
T0NTU0Qgc3BlYyB3aGljaCBpbnRyb3VkY2VzIEdlb21ldHJ5IGNvbW1hbmQgaW5zdGVhZCBvZgo+
IElkZW50aXR5IG9yIHNvbWV0aGluZyBlbHNlLiAgVGhpcyBwYXRjaCBqdXN0IGFkZHMgYW4gYWxp
YXMgZm9yIHRoaXMKPiBjb21tYW5kIGZvciB0aGUgZ2l2ZW4gTlZNZSBuYW1lc3BhY2Ugd2l0aCBi
YWNrd2FyZCBjb21wYXRpYmlsaXR5Lgo+IAo+IENjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5l
bC5vcmc+Cj4gQ2M6IE1hdGlhcyBCam9ybGluZyA8bWJAbGlnaHRudm0uaW8+Cj4gQ2M6IEphdmll
ciBHb256w6FsZXogPGphdmllckBqYXZpZ29uLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaW53b28g
SW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+IFNpbmdlZC1vZmYtYnk6IE1hdGlhcyBCasO4
cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgoKU29ycnkgcGxlYXNlIGlnbm9yZSB0aGlzIHR5cG8uICBJ
J2xsIGZpeCBpdCB1cCBvbmNlIHNlcmllcyBnZXRzIHJldmlldwpiZWZvcmUgdGhlIEdpdGh1YiBQ
Ui4KClNvcnJ5IGZvciBtYWtpbmcgbm9pc2VzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=

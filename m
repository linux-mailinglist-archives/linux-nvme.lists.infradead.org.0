Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B142264827
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 16:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/0wKmu1V0ulvhwTgDaZ8CdZZGY+jC4NfKw3HR3h0xg=; b=I1U43NMZgft7Xr
	Y1XH2h2RhwCepY5ctA6QqvnKUIHu7doSfNsHieHmlq9ubLB5aE5rRvreXFOOmj+m4Pnx9gwfWlpwA
	4McEozpAWE1UsRuvwcO6Yj6zFApuXhW5vzFMUib/RBsbpsPzQaIDXG1fNSlP9n9E9QhF+V5pW0pAG
	IYuSA+fVHCtY1OmEkAlG3NDXlHQVyUSC+eb+5Yq2vGg0+cSCBSWJ5lsZA/y/IZDc+DI9dvi15YAm+
	2uuvrNsoY12N8QgGXu4m5w26PIJdQXRCPuTWTTi339nB4GNm8Ykmofp0+YyBqySiEXLMV8b0L9LtP
	HqdIbnTGlFZibQGArtrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDSq-0004Df-II; Wed, 10 Jul 2019 14:20:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDSe-0004Ci-5o
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 14:20:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so2478397wme.1
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 07:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bZKPVzLfGMPRTUT4p8/bnTDMgIbx3MafroMWGt5fKDA=;
 b=dOkgQTfNx/4nWmpyTmtMTGCATQwlvrU/n8ezVy4TbxzNl6S2NoHDcVJmyNy3QfpBQD
 4DvIPV1vn+d9WhLuk0CdJWEN3YUHP4Nu1OYA7oSq1WsdMu4UZXVL4L7NSXT9FjtBLRKc
 qHscrb0hRJf9ErP3KIB3YWR+JoTH3TOVaKINPBvOpTJlYZPt32or9OS+bPirNxozrRjm
 BkMWI4qtnZzDCbaAxojGQ266feTHb5uvg4oqRPqZfNlWKkDQOnLCQuBOYX9vVWnHEA6t
 LZebWar2yYAf7/WHiQCtHli/I0J5+zRkyf1WYf6RcOt9y/CkZxAtzQqKlAigaMUU47jh
 0biA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bZKPVzLfGMPRTUT4p8/bnTDMgIbx3MafroMWGt5fKDA=;
 b=houfvXvfcQbYEwpVF62ttZ54HTSOo8GSsjM46TMaAzKerB6vVh5x7TFK+Ngp1JAOiL
 gqUf3rMMC8wdatyOOB4geE2XAMErGUEd+QJ5R8tTx07FJSE72oaIkumq1t8a6u5P0VAA
 TFcEoi6SMak9RWQFDRKlJlieUcsDIZShEgG4qsZk2islxmUhm5QA8m6LLR6cZ61aP7A1
 kAfSTv5Nlj/VQjLKyX9ugopdbPCa9FHWkgIU/mD66aoHFKQXhxRfO60QmsmvuGufBj99
 wk0OGmxnYgDc9BlCh9Hu+syqzXYfCU0IZxIED6EWmGP0nnLxA3IKDn3IUI/ViNE9psdt
 vyDQ==
X-Gm-Message-State: APjAAAXAAcjITjHMjtrPcJdj/6KdBhzgIo/V7wFo7nznVOjIUETrmdqG
 uyPmT81ZiHIULo/oVqUa+WaLu49aY1r5p5NR4tN+wqsbnJU=
X-Google-Smtp-Source: APXvYqwrU0QFp19fXd7eOjSX/s5C7ayWL4rJyb3/DBjg8l5cX7XnZnMzEYPDAYyu+Faz+tw6vuinMMxapJsyPGLcLe0=
X-Received: by 2002:a7b:c7c2:: with SMTP id z2mr5318834wmk.147.1562768441982; 
 Wed, 10 Jul 2019 07:20:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
 <20190627103719.GC4421@minwooim-desktop> <20190627110342.GA13612@lst.de>
 <CAA70yB5uve6x-t56u7RcM8=JNSXh644uErC5z4m5h2C1rkSuvA@mail.gmail.com>
In-Reply-To: <CAA70yB5uve6x-t56u7RcM8=JNSXh644uErC5z4m5h2C1rkSuvA@mail.gmail.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Wed, 10 Jul 2019 22:20:34 +0800
Message-ID: <CAA70yB7-mLguBM=RxHeGzpDrrvnvdOaK3A32k4bdFc3uOvKaiQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_072044_253463_201A3256 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: keith.busch@intel.com, linux-block@vger.kernel.org,
 Minwoo Im <minwoo.im.dev@gmail.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2VpcGluZyBaaGFuZyA8endwMTA3NThAZ21haWwuY29tPiDkuo4yMDE55bm0NuaciDI45pel5ZGo
5LqUIOS4i+WNiDExOjU35YaZ6YGT77yaCj4KPiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT4g5LqOMjAxOeW5tDbmnIgyN+aXpeWRqOWbmyDkuIvljYg3OjA25YaZ6YGT77yaCj4gPgo+ID4g
T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDc6Mzc6MTlQTSArMDkwMCwgTWlud29vIEltIHdyb3Rl
Ogo+ID4gPiBIaSwgTWFpbnRhaW5lcnMKPiA+ID4KPiA+ID4gV291bGQgeW91IGd1eXMgcGxlYXNl
IGdpdmUgc29tZSB0aG91Z2h0cyBhYm91dCB0aGlzIHBhdGNoPyAgSSBsaWtlIHRoaXMKPiA+ID4g
ZmVhdHVyZSBXUlIgYWRkaXRpb24gdG8gdGhlIGRyaXZlciBzbyBJIHJlYWxseSB3YW50IHRvIGhl
YXIgc29tZXRoaW5nCj4gPiA+IGZyb20geW91IGd1eXMuCj4gPgo+ID4gV2UgYXJlIGF0IHRoZSBl
bmQgb2YgdGhlIG1lcmdlIHdpbmRvdyB3aXRoIHRvbnMgb2YgdGhpbmdzIHRvIHNvcnQgb3V0Lgo+
ID4gQSBnaWFudCBmZWF0dXJlIHNlcmllcyB3aXRoIGEgbG90IG9mIGltcGFjdCBpcyBub3QgYXQg
dGhlIHRvcCBvZiB0aGUKPiA+IHByaW9yaXR5IGxpc3QgcmlnaHQgbm93Lgo+Cj4gSGkgQ2hyaXN0
b3BoLAo+Cj4gVGhlcmUgYXJlIHNvbWUgZmVlZGJhY2sgaW4gVjMsIEkgcmVhbGx5IHdhbnQgdG8g
Z2V0IHNvbWUgbW9yZSBmZWVkYmFjayBmcm9tIHlvdQo+IGFuZCBvdGhlciBwZW9wbGUsIGF0IHRo
YXQgdGltZSBJIHBvc3QgVjQuCj4KPiBTbyBwbGVhc2UgZ2l2ZSBzb21lIGNvbW1lbnRzIGZvciBW
MyBhdCB5b3VyIGNvbnZlbmllbmNlIGFmdGVyIHRoaXMgbWVyZ2Ugd2luZG93Lgo+CkhpIENocmlz
dG9waCwKClBpbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK

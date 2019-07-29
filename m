Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA027898E
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 12:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bfNGvuTzndN1d3SbalKcqsnWC1liHwpkd9JEDRPg2U=; b=pSTfSlHpD1Or1D
	WnfEGEc2hVmAsBHRh6JyiNLm2JEp/2ssHKmbgV3g6++I59NbLCVbJbbbE5Se+aH0GnD3mi3viXP3z
	d7NknGTkm1vPLO9fu3y2173r39SxmT1QBqgoWPMdid8CsP8WiHwRRyJY6lGFhv3f7qycTtQ9jdsda
	cfHia+uj1VNKqkl9m0HBpMEc55YKb+4sDlqNCVqYEMUWmV9Jrc+8vg8Q7BDBAK1IAbtSjFyDDxtOo
	pc/vpMBD40Od6WHtP4HRRbdPVGG3FQmpRRkfhpAtluupkrYpiHQnKpZv9Uc/r9Wk02BhGkdkuUTBG
	n0EZp8PrqrM83h0zZDFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2o6-0005Wg-5y; Mon, 29 Jul 2019 10:23:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2nz-0005WH-KP
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 10:23:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id z1so61182234wru.13
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 03:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gXrwLkOA/d+4lB1YOBJpb2JG11kD392j7b+agBQniOA=;
 b=uYdDTlVv8l+xglbRt4AB6IAV3d4mlfwcZd+rSqx+RBCoQtB3qnY02XDSxoByUxUEdc
 akNfWRzt1ylgaJ28LzmCTRuzY8Zq/nxDbi189MxzJ/Tfk+q9ZQpjzMEZlo5mcaXppBdU
 bPRz/oCfxDVzNEmbkdT8+xUV9kyvUNs6lIfYZ48gFh8dDs04OllOtIQxqbaV0H38KZUi
 ZiGHyIt4amUDcxpWxffCt6v/wD27JXzYrZ9EhwYTWppdgu5jEZN/gynNZWXjt7/go9Ka
 I+i9bnSs0++HI+EGBTbaWytLUxFhCNmqQW+6HPyIcnEwMbDKW3BF67o6nuvfEiv9SWtO
 F4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gXrwLkOA/d+4lB1YOBJpb2JG11kD392j7b+agBQniOA=;
 b=YSchOREIt/MQWXQ6QAbYJMtJ+SiGjj3Gb8TQLa+dRBk6YFViiEbhME0nUH/CKbgmpZ
 jFHzQ+QKtO/smsyeC9sJIumU7N8zU/OlCzDy+170r4eZcsYRJRZAnvDwogzWlrTaD9Nh
 DOx1wad4m8+cZ4ZEBoG211n3qVOscufriT35nvj/OR0xTQGHtKH8mFkGG9uuhsmXAycA
 OGzFuSQ5G300woHo5DVAoj6gG+OLzGA7V1qrW7rDeCxxUcCENOFkHGXPnoZPM3DWr2Y6
 wA5LWRZpaaAuIyMyoqi1a5gPsmJ2VgXiV0Y6cNuLy0gLnK5t19C8He5rOtcazHjBEAai
 cSKQ==
X-Gm-Message-State: APjAAAW2O5CJGrWkWbDsL4vXsRT0Q5jPdx5GetPKuKReIHy8JD1AJ3ri
 E1XXPCojLsHi7lN90QyWVFL0uLymDwRwNaoyel/PhwKQmDg=
X-Google-Smtp-Source: APXvYqxklhaLvMJhhCU7fnNczFNHbGQlDK1E1YVS4OGpW18SNiYiFXFNoVsdCA4ALV+7rSoKSVHOUSUgys26t0mNLwY=
X-Received: by 2002:adf:da4d:: with SMTP id r13mr16835505wrl.281.1564395777469; 
 Mon, 29 Jul 2019 03:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
 <20190627103719.GC4421@minwooim-desktop> <20190627110342.GA13612@lst.de>
 <CAA70yB5uve6x-t56u7RcM8=JNSXh644uErC5z4m5h2C1rkSuvA@mail.gmail.com>
 <CAA70yB7-mLguBM=RxHeGzpDrrvnvdOaK3A32k4bdFc3uOvKaiQ@mail.gmail.com>
In-Reply-To: <CAA70yB7-mLguBM=RxHeGzpDrrvnvdOaK3A32k4bdFc3uOvKaiQ@mail.gmail.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Mon, 29 Jul 2019 18:22:46 +0800
Message-ID: <CAA70yB4FjB+Lh6R92syPztpXswNzNk7rqyAqhaiojC4h5aE1kg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_032259_698886_526BFE59 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keith.busch@intel.com, linux-block@vger.kernel.org,
 Minwoo Im <minwoo.im.dev@gmail.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2VpcGluZyBaaGFuZyA8endwMTA3NThAZ21haWwuY29tPiDkuo4yMDE55bm0N+aciDEw5pel5ZGo
5LiJIOS4i+WNiDEwOjIw5YaZ6YGT77yaCj4KPiBXZWlwaW5nIFpoYW5nIDx6d3AxMDc1OEBnbWFp
bC5jb20+IOS6jjIwMTnlubQ25pyIMjjml6XlkajkupQg5LiL5Y2IMTE6NTflhpnpgZPvvJoKPiA+
Cj4gPiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4g5LqOMjAxOeW5tDbmnIgyN+aXpeWR
qOWbmyDkuIvljYg3OjA25YaZ6YGT77yaCj4gPiA+Cj4gPiA+IE9uIFRodSwgSnVuIDI3LCAyMDE5
IGF0IDA3OjM3OjE5UE0gKzA5MDAsIE1pbndvbyBJbSB3cm90ZToKPiA+ID4gPiBIaSwgTWFpbnRh
aW5lcnMKPiA+ID4gPgo+ID4gPiA+IFdvdWxkIHlvdSBndXlzIHBsZWFzZSBnaXZlIHNvbWUgdGhv
dWdodHMgYWJvdXQgdGhpcyBwYXRjaD8gIEkgbGlrZSB0aGlzCj4gPiA+ID4gZmVhdHVyZSBXUlIg
YWRkaXRpb24gdG8gdGhlIGRyaXZlciBzbyBJIHJlYWxseSB3YW50IHRvIGhlYXIgc29tZXRoaW5n
Cj4gPiA+ID4gZnJvbSB5b3UgZ3V5cy4KPiA+ID4KPiA+ID4gV2UgYXJlIGF0IHRoZSBlbmQgb2Yg
dGhlIG1lcmdlIHdpbmRvdyB3aXRoIHRvbnMgb2YgdGhpbmdzIHRvIHNvcnQgb3V0Lgo+ID4gPiBB
IGdpYW50IGZlYXR1cmUgc2VyaWVzIHdpdGggYSBsb3Qgb2YgaW1wYWN0IGlzIG5vdCBhdCB0aGUg
dG9wIG9mIHRoZQo+ID4gPiBwcmlvcml0eSBsaXN0IHJpZ2h0IG5vdy4KPiA+Cj4gPiBIaSBDaHJp
c3RvcGgsCj4gPgo+ID4gVGhlcmUgYXJlIHNvbWUgZmVlZGJhY2sgaW4gVjMsIEkgcmVhbGx5IHdh
bnQgdG8gZ2V0IHNvbWUgbW9yZSBmZWVkYmFjayBmcm9tIHlvdQo+ID4gYW5kIG90aGVyIHBlb3Bs
ZSwgYXQgdGhhdCB0aW1lIEkgcG9zdCBWNC4KPiA+Cj4gPiBTbyBwbGVhc2UgZ2l2ZSBzb21lIGNv
bW1lbnRzIGZvciBWMyBhdCB5b3VyIGNvbnZlbmllbmNlIGFmdGVyIHRoaXMgbWVyZ2Ugd2luZG93
Lgo+ID4KPiBIaSBDaHJpc3RvcGgsCj4KPiBQaW5nCgpIaSBDaHJpc3RvcGgsCgpQaW5nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

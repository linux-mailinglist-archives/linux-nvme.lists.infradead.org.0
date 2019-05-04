Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5B813744
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 06:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIwU+TpOmCGrFFKXu1RN4tS4uWbmyv+BM55v4Up/B34=; b=CDrqT1pSQu1zvm
	F8K5DGJDdcqVR5hBFB/n5a65QZ+RC2UZU5UGMV98DQwvxFXtRXtCYzX7yVL2xjUUMl0UbmqkxkAg2
	eF74QdeIdGbQMlRhq34fibbW3AgDIPmYguPVomrhZiAe6ighN3RiBY5WcWEylCQ66usAJAzA3GZBq
	QH6Oa+rzC6nJJm2e5wggfypvhhLKFn8EDENuE3xVppTwMDrte2D7kovjMPaglWyasF1+iRPKJHC12
	CKTdoQrjyi+6Tp85K3gCeVQowSvgOm0CR4FXVswFF+BDq6vwKWxl4FNwea83SE8YpelHVY2W05w9W
	Bcl4zdznWwhzKD/or4xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMmAd-0004x2-Uz; Sat, 04 May 2019 04:21:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMmAZ-0004wb-AZ
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 04:21:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id l2so3649339plt.11
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 21:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2niQZAcO4B3TuA0Jbh10gmhcQ5R1+7CidbDlWs5As80=;
 b=FZjC35cra7t9JQGvg+nlN0g+upkodunL99cIB3S5+l4mYslGpxQzpLFtsrkrG3a6ro
 vo8agCB/Im8sQ7/jbw/cwVF+GZhkDLRRDz93f6fgS7YDz4bTr9c6EW3qE1hkDOdo/DyK
 t/LhOUE0bOx3Ld15nSLQN1CCKFPJOqKKZ4syPxMRajwzWQKMwYFYciItHXCyhgM1tUry
 8LFtKqYte6KyG0K/BBbs0y1ZN4AzgijoOJ8CLdaoUE9of/xdE6Jo3rFJo95nduWoT1u3
 MwralEvoxASdTTm3tcgrgOeEKgRuX5fGEhZFYfRU6geuBWEI2DYeG2PEyys8/mk9mvG3
 xBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2niQZAcO4B3TuA0Jbh10gmhcQ5R1+7CidbDlWs5As80=;
 b=BL/l13FxuZG1aiJCIJReAPWajSFKuaYtX1RY4EcH9rdAb582/YaRbOqC5PW8bhmT+E
 LCPxC4UpFSwSNRPvPqO1YfOCPyEHFXU89H9T8F5lV0IP2xE+VvfqvI1Hbi1ywcTnmsbm
 d+/p+AkJLOrVKPHKSUcpMygTB44MA9xAHocwqVoWhBjM8/QKAwT1Jc74ZWO92AsbJ9gL
 9lFMCp/ZocuPRw2PYRQLPDC621o3MCDnGTUUP7Pb+9aXBEm2nreDtQTi95E6X+eposG5
 XANU+dmnHElwKY6dyr2jKLwQl0y6dtMzJwyRKJCLzaGXpzGAL28rSnXVIQCAF9STsSGT
 TM0A==
X-Gm-Message-State: APjAAAWMJXr7VPwpvnTXMejVdXZ5KQhGUcr9LuZoqKcvqTN7MiuQwkt6
 deq8PpcRdFt8cnn78N45Qry//dbuvShH3kHYTmU=
X-Google-Smtp-Source: APXvYqzk08GW18+GoiHSeLiPXxG5WmUXmSoYcOlyzQXVtB3rSOe/11xTKxDCshE4SRkYoGf5dkwKMxrfxUGEACuM7k0=
X-Received: by 2002:a17:902:5995:: with SMTP id
 p21mr15757134pli.216.1556943661646; 
 Fri, 03 May 2019 21:21:01 -0700 (PDT)
MIME-Version: 1.0
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
 <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
 <20190503121232.GB30013@localhost.localdomain> <20190503122035.GA21501@lst.de>
In-Reply-To: <20190503122035.GA21501@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 4 May 2019 13:20:50 +0900
Message-ID: <CAC5umyiGbDNCtzhJioR_2EV6-6xMuZXOMThCizwJEMHi+KqxAw@mail.gmail.com>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_212103_393351_AA7FC0DD 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgz5pelKOmHkSkgMjE6MjAgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ogo+Cj4gT24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDY6MTI6MzJBTSAtMDYwMCwgS2VpdGggQnVz
Y2ggd3JvdGU6Cj4gPiBDb3VsZCB5b3UgYWN0dWFsbHkgZXhwbGFpbiBob3cgdGhlIHJlc3QgaXMg
dXNlZnVsPyBJIHBlcnNvbmFsbHkgaGF2ZQo+ID4gbmV2ZXIgZW5jb3VudGVyZWQgYW4gaXNzdWUg
d2hlcmUga25vd2luZyB0aGVzZSB2YWx1ZXMgd291bGQgaGF2ZSBoZWxwZWQ6Cj4gPiBldmVyeSBk
ZXZpY2UgdGltZW91dCBhbHdheXMgbmVlZGVkIGRldmljZSBzcGVjaWZpYyBpbnRlcm5hbCBmaXJt
d2FyZQo+ID4gbG9ncyBpbiBteSBleHBlcmllbmNlLgoKSSBhZ3JlZSB0aGF0IHRoZSBkZXZpY2Ug
c3BlY2lmaWMgaW50ZXJuYWwgbG9ncyBsaWtlIHRlbGVtZXRyeSBhcmUgdGhlIG1vc3QKdXNlZnVs
LiAgVGhlIG1lbW9yeSBkdW1wIG9mIGNvbW1hbmQgcXVldWVzIGFuZCBjb21wbGV0aW9uIHF1ZXVl
cyBpcyBub3QKdGhhdCBwb3dlcmZ1bCBidXQgaGVscHMgdG8ga25vdyB3aGF0IGNvbW1hbmRzIGhh
dmUgYmVlbiBzdWJtaXR0ZWQgYmVmb3JlCnRoZSBjb250cm9sbGVyIGdvZXMgd3JvbmcgKElPVywg
aXQncyBzb21ldGltZXMgbm90IGVub3VnaCB0byBrbm93CndoaWNoIGNvbW1hbmRzIGFyZSBhY3R1
YWxseSBmYWlsZWQpLCBhbmQgaXQgY2FuIGJlIHBhcnNlZCB3aXRob3V0IHZlbmRvcgpzcGVjaWZp
YyBrbm93bGVkZ2UuCgpJZiB0aGUgaXNzdWUgaXMgcmVwcm9kdWNpYmxlLCB0aGUgbnZtZSB0cmFj
ZSBpcyB0aGUgbW9zdCBwb3dlcmZ1bCBmb3IgdGhpcwpraW5kIG9mIGluZm9ybWF0aW9uLiAgVGhl
IG1lbW9yeSBkdW1wIG9mIHRoZSBxdWV1ZXMgaXMgbm90IHRoYXQgcG93ZXJmdWwsCmJ1dCBpdCBj
YW4gYWx3YXlzIGJlIGVuYWJsZWQgYnkgZGVmYXVsdC4KCj4gWWVzLiAgQWxzbyBub3QgdGhhdCBO
Vk1lIG5vdyBoYXMgdGhlICdkZXZpY2UgaW5pdGlhdGVkIHRlbGVtZXRyeScKPiBmZWF1dHVyZSwg
d2hpY2ggaXMganVzdCBhIHdpcmVkIG5hbWUgZm9yIGRldmljZSBjb3JlZHVtcC4gIFdpcmluZyB0
aGF0Cj4gdXAgc28gdGhhdCB3ZSBjYW4gZWFzaWx5IHByb3ZpZGUgdGhhdCBkYXRhIHRvIHRoZSBk
ZXZpY2UgdmVuZG9yIHdvdWxkCj4gYWN0dWFsbHkgYmUgcHJldHR5IHVzZWZ1bC4KClRoaXMgdmVy
c2lvbiBvZiBudm1lIGNvcmVkdW1wIGNhcHR1cmVzIGNvbnRyb2xsZXIgcmVnaXN0ZXJzIGFuZCBl
YWNoIHF1ZXVlLgpTbyBiZWZvcmUgcmVzZXR0aW5nIGNvbnRyb2xsZXIgaXMgYSBzdWl0YWJsZSB0
aW1lIHRvIGNhcHR1cmUgdGhlc2UuCklmIHdlJ2xsIGNhcHR1cmUgb3RoZXIgbG9nIHBhZ2VzIGlu
IHRoaXMgbWVjaGFuaXNtLCB0aGUgY29yZWR1bXAgcHJvY2VkdXJlCndpbGwgYmUgc3BsaXR0ZWQg
aW50byB0d28gcGhhc2VzIChiZWZvcmUgcmVzZXR0aW5nIGNvbnRyb2xsZXIgYW5kIGFmdGVyCnJl
c2V0dGluZyBhcyBzb29uIGFzIGFkbWluIHF1ZXVlIGlzIGF2YWlsYWJsZSkuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

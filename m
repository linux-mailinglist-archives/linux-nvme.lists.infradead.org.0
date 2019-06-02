Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EF33236D
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeRpZifrrOx9749aYaYAxtHSxZccWUyMLKS9Luu/nhY=; b=pZ8OnWsx+VBHnN
	EVLGfIhdN6sHjSUZhhLYtemEC3i7Dc+Zi9DBGl/nrF4a8cSaex3Wpc05dBUJPCmi0A8mrz9BEIa9K
	NCWCwnEjuqCsqEAh+uE47WhJImH5ss50b7t5nQ45i+jyTU0p5hV6Av4b4YaMruW9dIAdaDjeN3qO0
	bZAP9HzQrVYmrceqKCKRHMbN8hrTFEVlLUIbaX+U/i2MfbxesKVSgzbq/I/7CmDY7veWnrovIL7ct
	UPoqvCNRW7mpgMjLHV07tgVhAkSRXagbTm8+9HzQ0Z7TOhGAToM5MefeG7RtFYrkpFx3WscsWNbiz
	gzUaxMmzIXUJ3teM7YcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQoi-00028p-3A; Sun, 02 Jun 2019 13:46:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQod-000283-0Z
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:46:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so6706327pgv.10
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ei9fE+QoHunZ6uIfup9c91JRHQ9iAHr0WsYUOfd9Wvc=;
 b=AquIgHUrfrcg5b6PLFxSRzbLxqsdXI3v9wVqTY9BmQQq49/LtvY08VBac7haYs4XeA
 KVFDvMNbHINF4L4ulWg/+qzco6FJ6MK3fZMtqXCKGM9ltuFMjX+Ab7mN0fHejzFRw5Qv
 fQ/1HfLe58WG/QnE7grvVlIabEa9J27Mzy3MFkljJ9xnw7OeRqvHFYjyEe+3JiXA21fZ
 GCHj1699F1mF/HxuEm9huTp9XaqH0RonziM5+ebevLl3QDpXcWQFmtJcqDFZr236Taif
 bOEnPAc0OO+HLhkh+E9ei1FTK0/6UP49XwiGfUK/jZKL3/GV7YhiZZ155YGWC8oMxJjQ
 dzGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ei9fE+QoHunZ6uIfup9c91JRHQ9iAHr0WsYUOfd9Wvc=;
 b=EGeOpvWkNSH+exjezeUBzb4HwwgXR3ToJ91QN0LKfthz3qxP9wkxLnni5LI3h1e77j
 s+cf3ecaetxTgyoFaEu1Pbr8kdxtLg04mLTTw2eChjCGOguwcNSy+2eji1P/Yt8pD+Su
 X9v1VoRxvFUAtjoUg2WtJUbC5P2pxqSrbLcT4/Cp8A7F1pjsRJjKaYpl77CpUksebn1C
 q56EncssQmm6qGs8UBOHVU2+X8sM7QuuLLrHmYBYxzR1XUIU3catMLyV0n4mr0x5a9rt
 zSzOI+1DsUW+csRNNT9JqbfozNQzhE0rXDu8r4jMikXs/FxcxHyCyUR5JeWRKMy0LJuD
 zmeg==
X-Gm-Message-State: APjAAAV0nlpIscjQQcM9ExiPMAlDkFLjnwjse+g/7SydfMUk3hMdaKgs
 xS6P6MxfQEkzpbf1YX+E/dyj41HWR+U9gPAnCvLcNjXZg4E=
X-Google-Smtp-Source: APXvYqx/MiXwB36y5K0F4cymiHywb4QU8OvWx0lN1y0cNUOyay9+jT1zrAsfr9kVQ5iT5y3GUjPweQK8/BChN7b9lKM=
X-Received: by 2002:a62:585:: with SMTP id 127mr23742381pff.231.1559483183242; 
 Sun, 02 Jun 2019 06:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-4-git-send-email-akinobu.mita@gmail.com>
 <20190601090353.GE6453@lst.de>
In-Reply-To: <20190601090353.GE6453@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sun, 2 Jun 2019 22:46:12 +0900
Message-ID: <CAC5umyg_nDjtLyJM8iNF5f+YdQ6EG+G5ks-uFqu_VFiX2=e=qQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] nvme: notify thermal framework when temperature
 threshold events occur
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_064627_058024_A3DEF182 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIgx5pelKOWcnykgMTg6MDQgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ogo+Cj4gU28gYmVmb3JlIHdlIGFsbG93ZWQgdXNlcnNwYWNlIHRvIGdldCBzbWFydCBBRU4gbm90
aWZpY2F0aW9ucyB0aHJvdWdoCj4gdWV2ZW50LCBhbmQgd291bGQgZXhwZWN0IHVzZXJzcGFjZSB0
byBjbGVhciB0aGUgQUVOLiAgSSB0aGluayB0aGlzCj4gY291bGQgYXQgbGVhc3QgcG90ZW50aWFs
bHkgYnJlYWsgZXhpc3RpbmcgdXNlcnNwYWNlIGJ5IG5vdyBkb2luZyB0aGF0Cj4gaW4ga2VybmVs
IHNwYWNlLgoKVGhpcyBjaGFuZ2UgdW5jb25kaXRpb25hbGx5IHNldHMgTlZNRV9TTUFSVF9DUklU
X1RFTVBFUkFUVVJFIGZsYWcgaW4KbnZtZV9lbmFibGVfYWVuKCksIGl0IGNvdWxkIGJlIHByb2Js
ZW1hdGljIGZvciBleGlzdGluZyB1c2Vyc3BhY2UuClNvIGl0J3MgYmV0dGVyIHRvIHByb3ZpZGUg
YSBrbm9iIHRvIGVuYWJsZS9kaXNhYmxlIHRoZSBldmVudCBub3RpZmljYXRpb24KYW5kIHdlIGNh
biB1dGlsaXplIGdldF9tb2RlKCkvc2V0X21vZGUoKSBpbiB0aGUgdGhlcm1hbF96b25lX2Rldmlj
ZV9vcHMuCgpPdGhlciB0aGFuIHRoYXQsIHRoaXMgY2hhbmdlIGRvZXNuJ3QgcmVtb3ZlIGN0cmwt
PmFlbl9yZXN1bHQsIHNvIGV4aXN0aW5nCnVzZXJzcGFjZSBzdGlsbCByZWNlaXZlcyBOVk1FX0FF
Tj0qIHVldmVudHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==

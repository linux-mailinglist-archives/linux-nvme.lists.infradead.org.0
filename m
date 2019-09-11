Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFDFB02CC
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 19:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly+CwQiTR8j+JLyU/mbmxl51qkDgp2fz3AptpZvl59A=; b=OGAKlq/DfxuMKN
	BHiiuOiKhSe6emjCWcMEHJxgcVf6An6YiWy36sXZYVFoeDC8f0q/C9L5xfqu4P9E8qIEn16IaCNNe
	WaI0xUbrYwLr2qSEVSAHETTw3jLLdQXbuBa/2Y20Yc9SqaJnq2mGRX3SRP6UtHBEshF6qvUq4XkIf
	kdhhRnrfUTEMqGFh5FjhpeubUupMCm53bMlcMzWWkq92dkUN1J+m2gEXi4m4+oc0MZpEvg8vXFJ44
	o0wcukZ6+DCMFr7KSscSw1ihTK5WNmUjNR0BeX3gR0ZihfFZPHZBPaHE9nLjDuMn/6BjQBE8e5r1n
	ELx2J/IJC51db9j9Uagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86b5-0003Zy-Sn; Wed, 11 Sep 2019 17:40:04 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86ay-0003Ze-Fc
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 17:39:57 +0000
Received: by mail-lj1-x236.google.com with SMTP id e17so20789507ljf.13
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 10:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iZ4bkMZvPLT1/Opm4QEPQHR0cQUQ8Cpe6sY/FCCAjMI=;
 b=Q8BDKJ3DdYjGlgXI69cvGQJzrbAPvpSd4xRgsKeI+qMffujhmvMwKSEkU5pWb2aEgK
 qmpUX/grcxYWXnZ4B58oIl8a4ChOPpsZoNYuA9R5C2JfdBxm2nWd8RtERWbCaSbrUgmo
 bVKvz5pnVAXkIDuorb82kF4NMB1gTrEREpva1GiKoQs6qBJUBW0H8X4RYUECdbOzO48v
 ZUJrAXrMAvmhoOnskAZNDzyNVC8ivxJlqmJRtkew+4sUS5Du9js0kN5GKPceiT7dHM80
 /HZxUsCAkI0F278//twmhpCYJjTcFaIgI3pxo+KW63SoDLsblQYNLGPUr0QoziDiu8jd
 goCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iZ4bkMZvPLT1/Opm4QEPQHR0cQUQ8Cpe6sY/FCCAjMI=;
 b=ZR+C9rKwAXt0Z7OurL6DPPnMv7yfJ8pwHaFYJIOBun/SK0lSgO2wgT5Ye/lkLf+6gn
 XFA57ULvz3V+ZyaYw4KpJQPUCbsIF6Bgls0+Xu8/q27G0kvXNIUmK1NVbLHSK8SiBcSV
 xWhNyLVyL0ZXQtDBoisgwsz7yLVa+y6lJtqqxauW3KxQ8FC5AZ1bKdcx5hCgJzIn2HCR
 4OhkeX8vN9SCtzTZNQik86KD72j/tirfLWAVnD80/EyA5cNQ842bntgugp9r0iA1rLWH
 0N0XGZ3vms8rLzMFiqE8RmUyjQWBQacdUGTfZCLr1wTO3IY34xqeIC0XIZNBxHuHIA/p
 oTfQ==
X-Gm-Message-State: APjAAAWOAlY4tDIcpQZbjwzMWJjDSoKlRUG3jJuPXAl0mz95yHFiyytB
 vcBOllOg+xq1HQUuaFcwjd+bRomEEiOUWfq731Z9MRk=
X-Google-Smtp-Source: APXvYqxcEcaGL0kpZ9AoRZdVstIXRl31pitmLJg80TtGS10CvByWqy2SM92NjYkIfrzUKloNxit7KLak9j503SvALSI=
X-Received: by 2002:a2e:9114:: with SMTP id m20mr23592932ljg.103.1568223594710; 
 Wed, 11 Sep 2019 10:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAEJqkgivvhQ=tOOuLjY=iwBVCKQhmmjpfNDa1yJ5SreNQubw6Q@mail.gmail.com>
 <4581016e-b421-e794-e603-807d37aa1bf3@grimberg.me>
In-Reply-To: <4581016e-b421-e794-e603-807d37aa1bf3@grimberg.me>
From: Gabriel C <nix.or.die@gmail.com>
Date: Wed, 11 Sep 2019 19:39:28 +0200
Message-ID: <CAEJqkghexeFHwaGkNUp+SmdhtU6Mf8cZ=Kn9pfrUkX3hEz-MOg@mail.gmail.com>
Subject: Re: [PATCH] Added QUIRKs for ADATA XPG SX8200 Pro 512GB
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_103956_525160_80AB6091 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nix.or.die[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Am Mi., 11. Sept. 2019 um 19:21 Uhr schrieb Sagi Grimberg <sagi@grimberg.me>:
>
> This does not apply on nvme-5.4, can you please respin a patch
> that cleanly applies?

Sure , just tell me from where to pull nvme-5.4 tree.
My match was against current Linus tree.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

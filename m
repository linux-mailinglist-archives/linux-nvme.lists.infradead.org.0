Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E634F82
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 20:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhfjURESq0gDg5XaEPSIcLz9qEezaGcMY+/S7Zy2fKA=; b=aZq7tHU/IQKhLT
	CxPMPQsGFGe6x3VuG6QegWrABK/c2Fd26FjYUjGEtn6UesSfUg52rSuleGxTnxllU2NBTcvRFEihZ
	AkF868qHOT4A5QgZprDA4HUd0Oq14GiKPK8WTOhk9FlyVxMepUjMJKk7a2OTzvLYUIzhBp6Dv/bWL
	tqBQgWncJJJUjK04AVN0X2IhN4hD/UhUIgSOMh0sqOoWiIa3ILQxFzuN88PG3NpVlG3TeaHKNUCR/
	tRLryohZMZWi8S8ZX1s5CpidRmhndHDe14X+FLpVcT80BRPpig5M0rcyojTbR/rMw+l22/xP7F+4Y
	RSoWA6LXzwAjEglF7Kdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYDml-0008LQ-W7; Tue, 04 Jun 2019 18:03:48 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYDmg-0008Kv-N9
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 18:03:44 +0000
Received: by mail-qk1-x744.google.com with SMTP id s22so3422697qkj.12
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 11:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+c9HmXx2bQSKi5JLXdihwxW5Txon2qW1kWqPe47oeIo=;
 b=NPeaJubE0BrtFRe3EcaysPNdl6XzEKaD0Ovjt849+1nv03KuNm93NQvleXkeKe2Y3H
 l4zuvLKxjCjbKr7MZY/8aCpFJTmQFPkMdpXr2wxFZb/JRTzss+vCt/sJIZFWPebK1fow
 XJMRLM0fpxeR0RVD/MmcuJvz23FCrjhMPVjMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+c9HmXx2bQSKi5JLXdihwxW5Txon2qW1kWqPe47oeIo=;
 b=Pb3t7LRbntOOsISdDXRG1PWlu3CCmNbkgVQT0gxETXov4DV5lzj1eR5K+dPq1K2Xl6
 G1j4KfVEpGe7qdKUAGL6pSgxtYZiPNSmQ1Pkpd3KSAw5YkVcG0WMIEuDXDMw9M9/pZpT
 PoDb/jpJSde7ggYl+rPvylrxMWW5qcXejfkQDm25WZoFG2DvDCa8281L961Hagy3fxIU
 Z+VChtQv/0REDrsQpqH89HGHWHFs/W3DbFb/cYtlRrZWtAGlHOq/JeExxbUuDVskFarQ
 g3paAIOJB/0j4QoECHKjCY2RUuxEivcDggDT5JGIhUwJEjW7q1wSUULPb/pQsqIQ3H2r
 XLfw==
X-Gm-Message-State: APjAAAVsO93zWgSXzCW6vYC7Ieur1n764DCVKga6su+wEf9nxta48U6F
 F0WVQGtFQz8CWYWjb0aZ3UFfTrW7UT77XeU64HDiPQ==
X-Google-Smtp-Source: APXvYqyz6G26tY2T1wq45krzbuDzNUvu1LBfSCIJsD2ZAeAP3X1UkeIK+I2M7gmNo/SA7z+EMq9zR1PbJD4pyMgME18=
X-Received: by 2002:a05:620a:15d3:: with SMTP id
 o19mr9406805qkm.213.1559671420265; 
 Tue, 04 Jun 2019 11:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <1559604301-14042-1-git-send-email-jalee@purestorage.com>
 <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
 <d3d00daa-ae3d-e5e7-2e58-ed395f52af24@grimberg.me>
In-Reply-To: <d3d00daa-ae3d-e5e7-2e58-ed395f52af24@grimberg.me>
From: Jaesoo Lee <jalee@purestorage.com>
Date: Tue, 4 Jun 2019 11:03:29 -0700
Message-ID: <CAJX3CtiaJEdZm6Y4yvFdSjM8hYsfkdFw2FME5ctAE4VDmfeYgA@mail.gmail.com>
Subject: Re: [PATCH v2] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_110342_893259_30F8CC89 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Roland Dreier <roland@purestorage.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The patch looks good to me.

Thanks.

On Tue, Jun 4, 2019 at 9:27 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
> Applied to 5.2-rc-next with a slight conflict resolution.
>
> Please verify that the patch is fine by you:
> http://git.infradead.org/nvme.git/commitdiff/e6c9417f9eeec4587bce5a861cfcda0f02b39464?hp=c8b0ec95a45dfda1360a58458456ded45a42a83e

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

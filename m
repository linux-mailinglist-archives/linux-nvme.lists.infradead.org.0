Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB0119026B
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 01:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ly9I8IeueHlCZJBJ+4kJ8O1gLcH8T/NjK3Z6eov0Sgk=; b=lzKBGNP38dvHYT
	CY/KxAbWQzZ6NiYPAYw9Ntkg9EEIKcux51ExKaW2WFfvc8gbMiT8f7JLd14T/nQDWhWIQfc52JH7O
	uNel0FktwdP946QlhoYpn1sJLyBIAoiXlEMkxKb500GmjKecbmj2rq6FZ3tZQAF8LAzPbj8+c4Zja
	y13po3l7ciwWSazUawYRdgoKtZrnz+Zpt64EeiQQRDfB8R0fgm1qSyU/s5BgaQ63vG9VAL9eggT92
	1eLgg0lQkcB7BFxlKdP/rNOCEzzJnJZgKY4v2re4DMIVzxEC3QtdgsOupEBNPW3tf3ljRLl3nHVbS
	Bg9L73RYTcZ8NjiHp3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGX1s-0001oG-N9; Tue, 24 Mar 2020 00:02:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGX1o-0001nl-Qd
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 00:02:46 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAABD20714;
 Tue, 24 Mar 2020 00:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585008164;
 bh=9h+COxG3dUR5Z7sMol7GPWLKBIoXa3RTvIi0eIZQFNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y72qe8us04JI4/jbnHCI05+loK0a2vU4llpoBB700KoZC3Bd4C362yD04axp8LYMD
 c32uenVv31ZbdZX6kxDQ7Tv28BQjQ3oeOTWgygq/uuED22FF9bV0MEqffNYWPXUXhW
 /Hbhfn5/G6ohdrVp/Q3xFS5Lz7sxIt++fV5zgSqA=
Date: Tue, 24 Mar 2020 09:02:37 +0900
From: Keith Busch <kbusch@kernel.org>
To: Tokunori Ikegami <ikegami.t@gmail.com>
Subject: Re: [PATCH] block, nvme: Increase max segments parameter setting value
Message-ID: <20200324000237.GB15091@redsun51.ssa.fujisawa.hgst.com>
References: <20200323182324.3243-1-ikegami.t@gmail.com>
 <BYAPR04MB4965BAF4C0300E1206B049A586F00@BYAPR04MB4965.namprd04.prod.outlook.com>
 <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cff52955-e55c-068a-44a6-8ed4edc0696f@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_170244_877385_39F1D61D 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 08:09:19AM +0900, Tokunori Ikegami wrote:
> Hi,
> > The change looks okay, but why do we need such a large data length ?
> > 
> > Do you have a use-case or performance numbers ?
> 
> We use the large data length to get log page by the NVMe admin command.
> In the past it was able to get with the same length but failed currently
> with it.
>
> So it seems that depended on the kernel version as caused by the version up.

We didn't have 32-bit max segments before, though. Why was 16-bits
enough in older kernels? Which kernel did this stop working?

> Also I have confirmed that currently failed with the length 0x10000000
> 256MB.

If your hitting max segment limits before any other limit, you should be
able to do larger transfers with more physically contiguous memory. Huge
pages can get the same data length in fewer segments, if you want to
try that.

But wouldn't it be better if your application splits the transfer into
smaller chunks across multiple commands? NVMe log page command supports
offsets for this reason.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

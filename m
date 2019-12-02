Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF310ED7A
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 17:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiWszNSS1oDuRK+V1KBCsTT83RZkUbgOsyMM3095Igo=; b=rtW6SR+cvni6g5
	WEeSMFX/8/vH5d2EUoPrTYZpf3JIKztEuiWVGBQNp54XqeGogLM0C2dMQsXl8R4GHecMtUQTCLeq4
	wuiKFpnBR6/FYhdphoNhn0loCTRQoYaJUhUUz+Dm0P923T2gOKo2rrCC1AET7MhPNefi8kOD3Jhvu
	xqGNL3qifuyu6ICQz+ikIbh4Zam+QfbcLeIbl7tBzwUJ3+YRmiaqb5WhfAUi2Wv8D1MmbYUR+czSj
	uFvNhqfIog3Fyin+4pFUvKqGizMqyPJu4oVmw3QI4Rpb07ujOLbYRIbEhT6t5AmmHGHIR7QlSZV20
	HoPrDlny5ZvbkAh+KAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibosv-0004HG-C2; Mon, 02 Dec 2019 16:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibosp-0004Gw-98
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 16:49:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC45620833;
 Mon,  2 Dec 2019 16:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575305350;
 bh=dl7YPTjiSsDGSMM4fgriTyrms1OqhUdtc/Xq3QqyzSY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J/xBUQMeuHZLwmelT36sfTlY7e/n6R+NyVcr5A5Zzz6op56R7pxyZO/vSZoXf9lZW
 mhbDy2wpSUZWs6Cd4muiFRvfmQ4fNm547uEE8DDqD0jU2hRu7L6m/qa1jaK2KvnR4W
 EUiJdDyMnlIG50SNc6ss9zpMuhWL+Rh5uG7snQX0=
Date: Tue, 3 Dec 2019 01:49:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: Namepace identification descriptor list is optional
Message-ID: <20191202164903.GA21650@redsun51.ssa.fujisawa.hgst.com>
References: <20191202155611.21549-1-kbusch@kernel.org>
 <20191202161545.GA7434@lst.de>
 <20191202162256.GA21631@redsun51.ssa.fujisawa.hgst.com>
 <10e6520d-bc8c-94ff-00c4-32a727131b89@intel.com>
 <20191202162905.GA7683@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202162905.GA7683@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_084911_343756_2303CAB1 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Ingo Brunberg <ingo_brunberg@web.de>, linux-nvme@lists.infradead.org,
 "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 05:29:05PM +0100, Christoph Hellwig wrote:
> On Mon, Dec 02, 2019 at 09:27:14AM -0700, Nadolski, Edmund wrote:
> >> I don't have such a controller, but many apparently do. The regression
> >> was reported here:
> >>
> >> http://lists.infradead.org/pipermail/linux-nvme/2019-December/028223.html
> >>
> >> And of course it's the SMI controller ...
> >
> > Does 5.4 show the exact error code?  Perhaps we should selectively allow 
> > just for that case?
> 
> They'll find other ways to f***ck up.  Looks like at least the controller
> in the bug report also doesn't have an subnqn and the nguid/eui64 are
> bogus.

Indeed, they will find creative ways to break it.

Customer or OEM requirments are poorly written, like "Must report NVMe
version 1.3". Nobody bothers to mention that it must also be compliant
to that version, or even realize they never cared for those features in
the first place.

Compliance testing like from UNH should have caught this before shipping
with such a device, but it's a cheap device, so maybe they skip that step.

>  I wonder if we actually do users a favour by allowing that..

I think it's too late now. We did successfully use such namespaces
before 5.4, even if they're fundamentally broken.

Johannes also commented *not* to consider these errors when this
identification was originally implemented, so either he knew vendors
screwed this up, or had the forethought to know they would.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

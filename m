Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC08919D082
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 08:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaI47jdhE4u6QLRNx43Ca9A7o4wr1lFyo9jjBRrLOQs=; b=CbLlXvTaYauyzF
	mx7dvtCY/LWoQ7HLJOsEDrym0H9aK2dDybxjTlTfUWrHlcxzpMzwHtOMPAVGowi6Ww2o7l5pkITpH
	7BJaeYAvVtpw80LiqPp2VGytF8+qYJMa3//ceYp1eg8oneCvPzC/wBeQm1fsqtw5424bn/XyL4F36
	3LkIpSbOilZz2MnqXCrzk3IQiNy3SG4dRyq9DXp+4/gSE7m1SHHWk5PdnUEqF8uJS1kuNYV2xnEn6
	lLBzcJEbcXVSh51ikcmeWDgKeeNOQx02t1XxaK21z7NeWD5rL50nz8ryuhTHGh5vPU0jSt7LueHpm
	Ddr0ro6hXpgiF8329yuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGDJ-00008i-6g; Fri, 03 Apr 2020 06:54:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jKGDE-00008Y-A3; Fri, 03 Apr 2020 06:53:56 +0000
Date: Thu, 2 Apr 2020 23:53:56 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tony Asleson <tasleson@redhat.com>
Subject: Re: nvmet and stable API
Message-ID: <20200403065356.GA22670@infradead.org>
References: <d4060208-ec69-3211-277c-d151be302555@redhat.com>
 <c89ef694-b447-5e2e-429c-bc449b3c57b4@grimberg.me>
 <cae7b76c-06a4-d870-22d5-ec09cd57354d@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cae7b76c-06a4-d870-22d5-ec09cd57354d@redhat.com>
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:34:34AM -0500, Tony Asleson wrote:
> On 3/25/20 1:58 AM, Sagi Grimberg wrote:
> 
> > We don't have an API for python. I sort of assumed that this will
> > be contributed by the people that want/need it.
> 
> Maybe, I'm interpreting this statement incorrectly, if so please
> clarify.  I'm reading this as write what you need for whatever language
> to configfs.  This works and it's not difficult to do, but what to do
> for persistence?
> 
> Try to write compatible JSON output across code bases and supported
> kernel features?  Have everyone fork & exec "nvmetcli save"?  Write out
> your own file and document not to use incompatible stacks?
> 
> Additionally, none of this addresses a potential race condition between
> two or more processes with different implementations making concurrent
> changes to configfs and getting the configuration saved with no lost
> changes.
> 
> Suggestions?

What would be your preference?  You seems to be the main interested
party that wants another interface than nvmetcli for production usage
(all other uses is just tests), so maybe you an propose something
that works for you?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

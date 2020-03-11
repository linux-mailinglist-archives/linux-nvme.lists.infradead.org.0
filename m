Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BA8181C87
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 16:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08rDa3Mo4ovvL2eRfTYT644Wt5yWDKGEXIaEKAMZpO8=; b=X4Cy2H7B7BqKoJ
	K4YdR+aBw16V0X/acViPxZKjtnfUnZFj3VGuXRbNWS58CAjCBwtyqZWm//kG2Dju4AX+vK6x5CTmz
	KpM9VIkb1CPlz7StVNMFSQetCMOFZTSZ/l4+woQJFc/Ani4CsA/e4lR+/vQEysISy7+e39YCEa6DM
	jQiRBmrToFWSfjIU8/0s3tVjudJgeTwU7P2SwbeceVYXwCi1GFM+S7ZyK/60ZUMNhpBs7R9oCdhHR
	hmUEDRkiHBoVXN5vUR2w2bAQjpgbR4KkZ6q//iMdae0hf1Pn+tVasLjZxxq8+Ec2HmnKv8qBE0HIr
	Uh5/q0S2MYLPFWutDiIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3U9-0003z2-KR; Wed, 11 Mar 2020 15:41:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3U5-0003yH-IS
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 15:41:26 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E34D20749;
 Wed, 11 Mar 2020 15:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583941284;
 bh=xU6jMAU602ioL++PRLQoF05gHj7ZDd7BNUiWu0OdFVQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sd+r4qCHjFQCqu2aHkv+y/EjLbY8k8ooS7/oloAnFA5geupjnE/WrkBDjpo7tav5n
 6tWTWuWP4BgL4mDffHFrxL/ZgWNwfx4cfAm7O2U8FKKgjQIL8FYp3JWv1bAl7HdEuK
 T2i4Z5eccd5i3/UQ5EPVLECxs1Y+PjKIyl3te9Hs=
Date: Wed, 11 Mar 2020 08:41:22 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-fabrics: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200311154122.GA837781@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200311085037.18888-1-tiwai@suse.de>
 <20200311152114.GA23704@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311152114.GA23704@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084125_631268_05E79047 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Takashi Iwai <tiwai@suse.de>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 04:21:14PM +0100, Christoph Hellwig wrote:
> On Wed, Mar 11, 2020 at 09:50:37AM +0100, Takashi Iwai wrote:
> > Since snprintf() returns the would-be-output size instead of the
> > actual output size, the succeeding calls may go beyond the given
> > buffer limit.  Fix it by replacing with scnprintf().
> > 
> > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> 
> Looks good,
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

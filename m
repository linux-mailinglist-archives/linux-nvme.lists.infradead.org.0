Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F232159DC6
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 01:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UnmJtOi8W3JDLC4zcpa1SyHSUMkOjXlFeixXjEihG4=; b=dbkL6jYT5x63w3
	1Fs21rdnALV2t23IJJS6ZNTU4OSgvGMr2lKoIj+NwjPi2eiMhvV84JtVKSJpcMaeDeJj8kEEJiyHe
	7ZOuHFWHjG3vRXkk2yrgDor7HeqDY2X8S9WSZVhgj4gb87uE2jaEKBIBRnCwKvy8lUs+mOb4KzdUP
	4p5GwwzbxSqFEqMk83pq2m+bawHyFaOmKtomRG+mmFy6xf+iT6kJbzUTEWqVzww23qXVxSeFD+WIy
	adIEsT0JUVoQyMxtjlZ397pdbBBfQxxlqW4DumjTASTLiimv47r9CD2+WBPHw1VqZQDEkoohRi7t+
	gakr9yk6lWU36TrnduFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fUP-000344-D0; Wed, 12 Feb 2020 00:02:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fUF-000309-9O
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 00:02:40 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAC7120870;
 Wed, 12 Feb 2020 00:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581465758;
 bh=P4JrIci54j1QnMajq1DVoMeLdb48P0FGrT5cPhNci5E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EujwokUWH/s4l97W+7s1ScGIRpDLdCszxLNosUImzfXoX0D0yLRp5IEeOdN9IIGW/
 cDo0OLSYHE/HIlj/71R+Gdj4ewJdnCRwRpSnpgwxsC9cBTpDCDs1tmviBFzqwgYWbG
 RZkDHypOElGRefQ8QrjyybZv5yBlLKwBQ1fXobwE=
Date: Wed, 12 Feb 2020 09:02:31 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jon Derrick <jonathan.derrick@intel.com>
Subject: Re: [PATCH v2] nvme/pci: Add sleep quirk for Samsung and Toshiba
 drives
Message-ID: <20200212000231.GA22187@redsun51.ssa.fujisawa.hgst.com>
References: <20200206201725.313163-1-jonathan.derrick@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206201725.313163-1-jonathan.derrick@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_160239_362260_C7FD2547 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shyjumon N <shyjumon.n@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 01:17:25PM -0700, Jon Derrick wrote:
> From: Shyjumon N <shyjumon.n@intel.com>
> 
> The Samsung SSD SM981/PM981 and Toshiba SSD KBG40ZNT256G on the Lenovo
> C640 platform experience runtime resume issues when the SSDs are kept in
> sleep/suspend mode for long time.
> 
> This patch applies the 'Simple Suspend' quirk to these configurations.
> With this patch, the issue had not been observed in a 1+ day test.
> 
> Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
> Signed-off-by: Shyjumon N <shyjumon.n@intel.com>

I'm not seeing a better option, but I'll just wait another day before
applying.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

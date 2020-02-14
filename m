Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAC315D966
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 15:26:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnwcm8M508YlmfFcyXj+2lqBzNm8XiammvwE/+WnYLA=; b=il6rgdfPbqjmWO
	kSOdHSt5y4k1F2+0cRrKJWyhwRWWrddlQ5pbttmow7VmxLcpJiurPNLdU5eGVInRVxEZyTrBDJpPN
	j+cXOUCT6eGBUHnXUn7wJyG874KChSrGCBc37vcQphVnsUqRVbyhbZAF6z63gAosxX/WQClaEw+5F
	9fkczMv2VxMT9JpRZoBAm2ZRjtphwHlZqUP6yd4Cw5Tyu+InaPoU7NAsylDv797irVXcIe2ZZ9ei+
	oax0GLUx5THOK9PyxIEijvrZ+YLZjLU6Lcf7Nmyn1F/cUWP3tOXxI8RUppxTAybZTMASMPTlto35e
	kOBrzcNBUU6q9+5nzr6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bvW-0000Vv-K6; Fri, 14 Feb 2020 14:26:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bvS-0000VR-Uc
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 14:26:40 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D084B206B6;
 Fri, 14 Feb 2020 14:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581690398;
 bh=tzYAU2owoKqUd1Mbm9le2aYFYypvgk67z2U604NQ06s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tfz30crtlGdcnXCLZVCVEzkD5Ifm/uSI88GiQQXQpniyOum7fgWYaV+YV6lk5qNvK
 84uSN//Ri2FA5u4ZUYi5dc8bsuCAJAuX1AlL4i3I/tOHa/ovRJ3z31OZN24FmNQJKN
 24cIPFc7yku9OZTLV/DGnaAdxhQAEEVCN+4ybDUs=
Date: Fri, 14 Feb 2020 23:26:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: Yi Zhang <yi.zhang@redhat.com>
Subject: Re: [PATCH] nvme: fix the parameter order for nvme_get_log in
 nvme_get_fw_slot_info
Message-ID: <20200214142635.GB9819@redsun51.ssa.fujisawa.hgst.com>
References: <20200214104802.29209-1-yi.zhang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214104802.29209-1-yi.zhang@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_062639_005964_405B49E4 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmilburn@redhat.com, sujith_pandel@dell.com, hch@lst.de,
 linux-nvme@lists.infradead.org, emilne@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 06:48:02PM +0800, Yi Zhang wrote:
> nvme fw-activate operation will get bellow warning log,
> fix it by update the parameter order
> 
> [  113.231513] nvme nvme0: Get FW SLOT INFO log error
> 
> Fixes: 0e98719b0e4b ("nvme: simplify the API for getting log pages")
> Reported-by: Sujith Pandel <sujith_pandel@dell.com>
> Signed-off-by: Yi Zhang <yi.zhang@redhat.com>

Oops, thanks for the fix. Applied to nvme-5.6-rc.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

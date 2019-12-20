Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBCF1283CB
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 22:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCMuL/E7O4NGq97Ms2o2/1ycg+7tz9jJGDk+QzJnPuU=; b=QXdHj7nG5b7UwH
	WwCpbG2mzU5QZXB7DcU1u3FI/7LtzwghbH90kzY2X0V4++uFEox8e4eWOMHLuKYA6EG9iFgHjYh9p
	1t7YgCThSUUuRLWFY7DeSjCf/qyRUSl06v2enZLczVRM0+lFM9fly0PTtEL9GcGq3zFlxDZ4Hu4EK
	6gX3KPUHJ6W0JTZ9nZDU17uVXqlYbwGxoE+bM5fvfnzsFIu2bjEaQfdCCQ/YfHb82k4xA5Lgu4rvs
	jleIY9I039nQgD2YEJubc6DW42cVGmwHEuIN4Aegn76Vn2+0+DlHVm85Bj0ZeAHFqDMxUtfMiUhxs
	1BApIy+BdrFiSgTNL3sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiPhm-0008K7-3L; Fri, 20 Dec 2019 21:21:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiPhg-0008JP-Mb
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 21:20:57 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3AF02146E;
 Fri, 20 Dec 2019 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576876855;
 bh=yGg5OlUqc48W/wvYsM0UnmokbFwFG5mhnif2M8frODU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rWWY0UW2sFFIBtlkukfagk7PdXSlhHtKkyDbmN0b7MlVVaPBN978xsJ77maOc5+h1
 zVfm2zAtRKL4MQhZmbqbtcHmYyG4LkE1kE8h/KV2mhe6tE4b8ByzgApeesSeq2/RE7
 yFZy3wqZzchXnF7KcDZWUkhm7HkMaNg5GSwoO/1U=
Date: Sat, 21 Dec 2019 06:20:49 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Ober, Frank" <frank.ober@intel.com>
Subject: Re: Polled io for Linux kernel 5.x
Message-ID: <20191220212049.GA5582@redsun51.ssa.fujisawa.hgst.com>
References: <SN6PR11MB2669E7A65DD0AD9DC65A67C58B520@SN6PR11MB2669.namprd11.prod.outlook.com>
 <20191219205210.GA26490@redsun51.ssa.fujisawa.hgst.com>
 <SN6PR11MB2669F3546ADCCAEF1D8E50308B520@SN6PR11MB2669.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB2669F3546ADCCAEF1D8E50308B520@SN6PR11MB2669.namprd11.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_132056_759340_D401EB73 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Rajendiran,
 Swetha" <swetha.rajendiran@intel.com>, "Liang, Mark" <mark.liang@intel.com>,
 "Derrick, Jonathan" <jonathan.derrick@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 09:59:14PM +0000, Ober, Frank wrote:
> Thanks Keith, it makes sense to reserve and set it up uniquely if you
> can save hw interrupts. But why would io_uring then not need these
> queues, because a stack trace I ran shows without the special queues I
> am still entering bio_poll. With pvsync2 I can only do polled io with
> the poll_queues?

Polling can happen only if you have polled queues, so io_uring is not
accomplishing anything by calling iopoll. I don't see an immediately
good way to pass that information up to io_uring, though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

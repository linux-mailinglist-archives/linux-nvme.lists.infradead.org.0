Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317CF192B8C
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 15:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tk3mHZW9S147/q3/sLtlwu2Baic71dZwMcKMYpgshM0=; b=lxX3gV/1VLpyMr
	u4VJAy4lwtClD4y+RZSEHZ/zkSAsaUMPQqJxSXxlozMoBRZiYp1zf2VxL4vZQxx7hPBuiPWsP9opc
	MZ7ASL+oB++5lvf3q3nITCh8MATJvmpmYvgxAm+CLGQx6Nx5aWTVUOVIQSaI0v4wupmYUxBWvPcBn
	EJH9F2ygFBsgnOYDPEq7q0Dhmjbm1O8GLZbxV87+hqukDym48KywKJFVJ44AWL6llceUz4drifV4C
	zQKMWVg/haFNtzd2AIQ9YroBwt4QFm0Ngv1DpkQxaXtKCJIaivhZxBE1LD4huYkaxD0ufImalEEia
	cS1NF3vfH1byonBltl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7QA-00061l-Df; Wed, 25 Mar 2020 14:54:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7Q6-00061L-0l
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 14:54:15 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B99E62074D;
 Wed, 25 Mar 2020 14:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585148051;
 bh=IsgGXfjvH9EbOgop4UGAk8CtW7TZNgWkn92GX0q60Ok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gocMzE7rs8HUGWDd7wNI6GsSspMO0r5yTRxacijMxdyDXXfhGCBpUW9bphNUvQ01q
 ihAOh3SchjwVDRzC7acZSNs5EYzH6QvwsDJzR8b006TSlzRGc9uONrXE/cghaEyLf/
 toboowxnJZAke7okGbqzGCDifQubEVuC6+zj9c3g=
Date: Wed, 25 Mar 2020 23:54:06 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/3] nvme: cleanup namespace identifier reporting in
 nvme_init_ns_head
Message-ID: <20200325145406.GA8287@redsun51.ssa.fujisawa.hgst.com>
References: <20200325131937.1198787-1-hch@lst.de>
 <20200325131937.1198787-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325131937.1198787-4-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_075414_081356_C42E8776 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 02:19:37PM +0100, Christoph Hellwig wrote:
> +	ret = nvme_report_ns_ids(ctrl, nsid, id, &ids);
> +	if (ret)
> +		goto out;;

I removed the extra ';'.

Otherwise series looks good, queued up for 5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
